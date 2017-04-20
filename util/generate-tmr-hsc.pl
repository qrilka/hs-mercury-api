#!/usr/bin/perl -w

use FindBin;

my $rootDir = "$FindBin::Bin/..";
my $apiDir = "$rootDir/cbits/api";
my $glueDir = "$rootDir/cbits/glue";
my $outputFile = "$rootDir/src/System/Hardware/MercuryApi/Generated.hsc";

my @errorTypes = ("SUCCESS_TYPE");
my @errorCodes = ("SUCCESS");
my %errorCodes = ("SUCCESS" => "Success!");
my @glueTypes = ();
my %glueTypes = ();
my @glueCodes = ();
my %glueCodes = ();

my @params = ();
my %params = ();
my %paramType = ();

my @regions = ();
my %regions = ();

my @tagProtocols = ();

my @lines = ();

my $nyi = "(Not yet implemented)";

# Additional statuses of type ERROR_TYPE_BINDING.  These statuses are thrown
# only from Haskell code, not C code, so they don't have a numeric code.
my %haskellCodes = (
    "ERROR_UNIMPLEMENTED_PARAM" =>
    "The given parameter is not yet implemented in the Haskell binding.",
    "ERROR_INVALID_PARAM_TYPE" =>
    "The parameter value was not of the type expected."
    );

my %toHaskellType = (
    "bool"     => "Bool",
    "int8_t"   => "Int8",
    "int16_t"  => "Int16",
    "int32_t"  => "Int32",
    "uint8_t"  => "Word8",
    "uint16_t" => "Word16",
    "uint32_t" => "Word32",
    "TMR_Region" => "Region",
    "TMR_TagProtocol" => "TagProtocol",
    "TMR_String" => "Text",
    "TMR_uint8List"  => "[Word8]",
  # "TMR_uint16List" => "[Word16]",
    "TMR_uint32List" => "[Word32]",
  # "TMR_int8List"   => "[Int8]",
    "TMR_RegionList" => "[Region]",
    "TMR_TagProtocolList" => "[TagProtocol]",
    );

my %listSize = (
    "[Word8]"  => "16",
  # "[Word16]" => "16",
    "[Word32]" => "16",
  # "[Int8]"   => "8",
    "[Region]" => "8",
    "[TagProtocol]" => "8",
    );

sub readStatus {
    open F, "$apiDir/tmr_status.h" or die;
    my $comment = "";
    while (<F>) {
        if (/^#define TMR_(ERROR_TYPE_[A-Z]+)/) {
            push @errorTypes, $1;
        } elsif (m%^/\*\*(.*?)\s+\*/%) {
            $comment = $1;
        } elsif (/^#define TMR_(ERROR_[A-Z0-9_]+)\s+/) {
            push @errorCodes, $1;
            $errorCodes{$1} = $comment;
            $comment = "";
        } else {
            $comment = "";
        }
    }
    close F;
}

sub parseParamComment {
    my ($c) = @_;
    if ($c =~ /^(\"[^\"]+\"),\s+(\w+)/) {
        my ($quoted, $type) = ($1, $2);
        my $haskellType;
        if (exists $toHaskellType{$type}) {
            $haskellType = $toHaskellType{$type};
        } else {
            $haskellType = $nyi;
        }
        return ($haskellType, "$quoted, $haskellType");
    } else {
        return ("", $c);
    }
}

sub readParams {
    open F, "$apiDir/tmr_params.h" or die;
    my $comment = "";
    while (<F>) {
        if (m%^\s*/\*\*\s*(.*?)\s*\*+/%) {
            $comment = $1;
        } elsif (/^\s*TMR_(PARAM_[A-Z0-9_]+)/) {
            unless ($1 eq "PARAM_MIN" or
                    $1 eq "PARAM_END" or
                    $1 eq "PARAM_MAX") {
                my $p = $1;
                push @params, $p;
                my ($t, $c) = parseParamComment ($comment);
                $params{$p} = $c;
                $paramType{$p} = $t;
            }
            $comment = "";
        } else {
            $comment = "";
        }
    }
    close F;
}

sub readGlue {
    open F, "$glueDir/glue.h" or die;
    my $comment = "";
    while (<F>) {
        if (/^#define (ERROR_TYPE_[A-Z]+)/) {
            push @glueTypes, $1;
            $glueTypes{$1} = $comment;
            $comment = "";
        } elsif (m%^/\*\*\s*(.*?)\s*\*/%) {
            $comment = $1;
        } elsif (/^#define (ERROR_[A-Z0-9_]+)\s+/) {
            push @glueCodes, $1;
            $glueCodes{$1} = $comment;
            $comment = "";
        } else {
            $comment = "";
        }
    }
    close F;
}

sub readRegion {
    open F, "$apiDir/tmr_region.h" or die;
    while (<F>) {
        if (m%^\s*/\*\*\s*(.*?)\s*\*+/\s*TMR_(REGION_\w+)%) {
            push @regions, $2;
            $regions{$2} = $1;
        }
    }
    close F;
}

sub readTagProtocol {
    open F, "$apiDir/tmr_tag_protocol.h" or die;
    while (<F>) {
        if (/^\s+TMR_(TAG_PROTOCOL_\w+)/) {
            push @tagProtocols, $1;
        }
    }
    close F;
}

sub emit {
    my ($s) = @_;
    push @lines, $s;
}

sub emitHeader {
    emit "{-# LANGUAGE OverloadedStrings, FlexibleInstances #-}";
    emit "-- Automatically generated by util/generate-tmr-hsc.pl";
    emit "module System.Hardware.MercuryApi.Generated where";
    emit "";
    emit "import Control.Applicative";
    emit "import Data.Hashable";
    emit "import Data.ByteString (ByteString)";
    emit "import qualified Data.ByteString as B";
    emit "import Data.Monoid";
    emit "import Data.Text (Text)";
    emit "import qualified Data.Text as T";
    emit "import qualified Data.Text.Encoding as T";
    emit "import qualified Data.Text.Encoding.Error as T";
    emit "import Data.Word";
    emit "import Foreign";
    emit "import Foreign.C";
    emit "";
    emit "#include <tm_reader.h>";
    emit "#include <glue.h>";
    emit "#include <stdbool.h>";
    emit "";
    emit "type CBool = #{type bool}";
    emit "newtype ReaderEtc = ReaderEtc ()";
    emit "";
    emit "sizeofReaderEtc :: Int";
    emit "sizeofReaderEtc = #{size ReaderEtc}";
    emit "";
    emit "uriPtr :: Ptr ReaderEtc -> CString";
    emit "uriPtr = #{ptr ReaderEtc, reader.uri}";
    emit "";
    emit "-- I'm not sure what encoding MercuryApi uses for its strings.";
    emit "-- I'm guessing UTF-8 for now, but the encoding is encapsulated in";
    emit '-- these two functions (textFromBS and textToBS) so it can be';
    emit '-- easily changed.';
    emit 'textFromBS :: ByteString -> Text';
    emit 'textFromBS = T.decodeUtf8With T.lenientDecode';
    emit '';
    emit 'textToBS :: Text -> ByteString';
    emit 'textToBS = T.encodeUtf8';
    emit '';
    emit 'textFromCString :: CString -> IO Text';
    emit 'textFromCString cs = textFromBS <$> B.packCString cs';
    emit '';
    emit "type ErrorTriple = (StatusType, Status, Text)";
    emit "";
    emit "withReturnType' :: (b -> Either a b) -> Either a b";
    emit "withReturnType' f = f undefined";
    emit "";
    emit 'castLen :: (Integral a, Bounded a)';
    emit '        => Text';
    emit '        -> Int';
    emit '        -> Either (StatusType, Status, Text) a';
    emit "castLen listType x = withReturnType' cl";
    emit '  where';
    emit '    tShow = T.pack . show';
    emit '    cl rt =';
    emit '      let maxLen = fromIntegral $ maxBound `asTypeOf` rt';
    emit '      in if x > maxLen';
    emit '         then Left ( ERROR_TYPE_MISC';
    emit '                   , ERROR_TOO_BIG';
    emit '                   , listType <> " had length " <> tShow x <>';
    emit '                     " but maximum is " <> tShow maxLen';
    emit '                   )';
    emit '         else Right $ fromIntegral x';
    emit "";
}

sub dumpOutput {
    open F, ">$outputFile" or die;
    for my $line (@lines) {
        print F "$line\n";
    }
    close F;
}

sub emitEnum1 {
    my ($constructors, $comments, $sep) = @_;
    for my $con (@$constructors) {
        my $comment = "";
        if (exists $comments->{$con} and $comments->{$con} ne "") {
            $comment = " -- ^ " . $comments->{$con};
        }
        emit "  $sep $con$comment";
        $sep = "|";
    }
}

sub emitEnum {
    my ($constructors, $comments) = @_;
    emitEnum1 ($constructors, $comments, " ");
}

sub emitEnumCont {
    my ($constructors, $comments) = @_;
    emitEnum1 ($constructors, $comments, "|");
}

sub emitTo {
    my ($func, $prefix, $constructors) = @_;
    for my $con (@$constructors) {
        emit "$func #{const $prefix$con} = $con";
    }
}

sub emitFrom {
    my ($func, $prefix, $constructors) = @_;
    for my $con (@$constructors) {
        emit "$func $con = #{const $prefix$con}";
    }
}

sub emitStatus {
    emit "data StatusType =";
    emitEnum (\@errorTypes, {});
    emitEnumCont (\@glueTypes, \%glueTypes);
    emit "  | ERROR_TYPE_UNKNOWN -- ^ Not a recognized status type";
    emit "  deriving (Eq, Ord, Show, Read, Bounded, Enum)";
    emit "";

    emit "toStatusType :: Word32 -> StatusType";
    emitTo ("toStatusType", "TMR_", \@errorTypes);
    emitTo ("toStatusType", "",     \@glueTypes);
    emit "toStatusType _ = ERROR_TYPE_UNKNOWN";
    emit "";

    emit "data Status =";
    emitEnum (\@errorCodes, \%errorCodes);
    emitEnumCont (\@glueCodes, \%glueCodes);
    emitEnumCont ([sort keys %haskellCodes], \%haskellCodes);
    emit "  | ERROR_UNKNOWN Word32 -- ^ C API returned an unrecognized status code";
    emit "  deriving (Eq, Ord, Show, Read)";
    emit "";

    emit "toStatus :: Word32 -> Status";
    emitTo ("toStatus", "TMR_", \@errorCodes);
    emitTo ("toStatus", "",     \@glueCodes);
    emit "toStatus x = ERROR_UNKNOWN x";
    emit "";
}

sub emitParams {
    emit "type RawParam = #{type TMR_Param}";
    emit "";

    emit "data Param =";
    emitEnum (\@params, \%params);
    emit "  deriving (Eq, Ord, Show, Read, Bounded, Enum)";
    emit "";

    emit "instance Hashable Param where";
    emit "  hash = fromEnum";
    emit "  salt `hashWithSalt` p = salt `hashWithSalt` fromEnum p";
    emit "";

    emit "toParam :: RawParam -> Param";
    emitTo ("toParam", "TMR_", \@params);
    emit "toParam _ = PARAM_NONE";
    emit "";

    emit "fromParam :: Param -> RawParam";
    emitFrom ("fromParam", "TMR_", \@params);
    emit "";

    emit "paramMax :: RawParam";
    emit "paramMax = #{const TMR_PARAM_MAX}";
    emit "";
}

sub emitStruct {
    my ($name, $prefix, $fields, $types) = @_;

    emit "data $name =";
    emit "  $name";
    my $sep = "{";
    foreach my $field (@$fields) {
        my $type = $types->{$field};
        emit "  $sep ${prefix}_$field :: $type";
        $sep = ",";
    }
    emit "  }";
    emit "";

    emit "instance Storable $name where";
    emit "  sizeOf _ = #{size $name}";
    emit "  alignment _ = 8"; # because "#alignment" doesn't work for me
    emit "  peek p = $name";
    $sep = '<$>';
    foreach my $field (@$fields) {
        emit "           $sep #{peek $name, $field} p";
        $sep = '<*>';
    }
    emit "  poke p x = do";
    foreach my $field (@$fields) {
        emit "    #{poke $name, $field} p (${prefix}_$field x)";
    }
    emit "";
}

sub emitListStruct {
    my ($size) = @_;

    my $word = "Word$size";
    my @fields = ("list", "max", "len");
    my %fields = ("list" => "Ptr ()", "max" => $word, "len" => $word );
    emitStruct ("List$size", "l$size", \@fields, \%fields);
}

sub emitListFuncs {
    my ($size) = @_;

    emit "getList$size :: Storable a => (Ptr () -> IO ()) -> IO [a]";
    emit "getList$size f = do";
    emit "  let maxLen = maxBound :: Word${size}";
    emit '  allocaArray (fromIntegral maxLen) $ \storage -> do';
    emit "    let lst = List${size}";
    emit "              { l${size}_list = castPtr storage";
    emit "              , l${size}_max = maxLen";
    emit "              , l${size}_len = 0";
    emit '              }';
    emit '    with lst $ \p -> do';
    emit '      f (castPtr p)';
    emit "      lst' <- peek p";
    emit "      peekArray (fromIntegral (l${size}_len lst')) storage";
    emit '';
    emit "setList$size :: Storable a => Text -> [a] -> (Ptr () -> IO ()) -> IO (Maybe ErrorTriple)";
    emit "setList$size t x f = do";
    emit '  withArrayLen x $ \len storage -> do';
    emit '    let eth = castLen t len';
    emit '    case eth of';
    emit '      Left err -> return $ Just err';
    emit "      Right len' -> do";
    emit "        let lst = List${size}";
    emit "                  { l${size}_list = castPtr storage";
    emit "                  , l${size}_max = len'";
    emit "                  , l${size}_len = len'";
    emit '                  }';
    emit '        with lst $ \p -> f (castPtr p)';
    emit '        return Nothing';
    emit "";
}

sub emitStructs {
    emitListStruct ("16");
    emitListFuncs ("16");
    emitListStruct ("8");
    emitListFuncs ("8");
}

sub paramTypeName {
    my ($t) = @_;

    if ($t =~ /^\[(\w+)\]$/) {
        return "ParamType${1}List";
    } else {
        return "ParamType$t";
    }
}

sub emitParamTypes {
    my %ptn;
    foreach my $paramType (values %toHaskellType) {
        $ptn{$paramType} = paramTypeName ($paramType);
    }

    emit "data ParamType =";
    emitEnum ([sort values %ptn], {});
    emit "  | ParamTypeUnimplemented";
    emit "  deriving (Eq, Ord, Show, Read, Bounded, Enum)";
    emit "";

    emit "paramType :: Param -> ParamType";
    foreach my $param (@params) {
        my $type = $paramType{$param};
        if (exists $ptn{$type}) {
            my $name = $ptn{$type};
            emit "paramType $param = $name";
        }
    }
    emit "paramType _ = ParamTypeUnimplemented";
    emit "";

    emit "paramTypeDisplay :: ParamType -> Text";
    foreach my $paramType (sort values %toHaskellType) {
        my $name = $ptn{$paramType};
        emit "paramTypeDisplay $name = \"$paramType\"";
    }
    emit "paramTypeDisplay _ = \"$nyi\"";
    emit "";

    emit "class ParamValue a where";
    emit "  pType :: a -> ParamType";
    emit "  pGet :: (Ptr () -> IO ()) -> IO a";
    emit "  pSet :: a -> (Ptr () -> IO ()) -> IO (Maybe ErrorTriple)";

    foreach my $paramType (sort values %toHaskellType) {
        my $name = $ptn{$paramType};
        emit "";
        emit "instance ParamValue $paramType where";
        emit "  pType _ = $name";
        if ($paramType =~ /^Int/ or $paramType =~ /^Word/) {
            emit '  pGet f = alloca $ \p -> f (castPtr p) >> peek p';
            emit '  pSet x f = alloca $ \p -> poke p x >> f (castPtr p) >> return Nothing';
        } elsif ($paramType eq "Bool") {
            emit '  pGet f = alloca $ \p -> f (castPtr (p :: Ptr CBool)) >> toBool <$> peek p';
            emit '  pSet x f = alloca $ \p -> poke p (fromBool x :: CBool) >> f (castPtr p) >> return Nothing';
        } elsif ($paramType eq "Region") {
            emit '  pGet f = alloca $ \p -> f (castPtr p) >> toRegion <$> peek p';
            emit '  pSet x f = alloca $ \p -> poke p (fromRegion x) >> f (castPtr p) >> return Nothing';
        } elsif ($paramType eq "TagProtocol") {
            emit '  pGet f = alloca $ \p -> f (castPtr p) >> toTagProtocol <$> peek p';
            emit '  pSet x f = alloca $ \p -> poke p (fromTagProtocol x) >> f (castPtr p) >> return Nothing';
        } elsif ($paramType eq "Text") {
            emit '';
            emit '  pGet f = do';
            emit '    let maxLen = maxBound :: Word16';
            emit '    allocaBytes (fromIntegral maxLen) $ \storage -> do';
            emit '      let lst = List16';
            emit '                { l16_list = castPtr storage';
            emit '                , l16_max = maxLen';
            emit '                , l16_len = 0 -- unused for TMR_String';
            emit '                }';
            emit '      with lst $ \p -> do';
            emit '        f (castPtr p)';
            emit '        textFromCString storage';
            emit '';
            emit '  pSet x f = do';
            emit '    let bs = textToBS x';
            emit '    B.useAsCString bs $ \cs -> do';
            emit '      let eth = castLen "Text" (1 + B.length bs)';
            emit '      case eth of';
            emit '        Left err -> return $ Just err';
            emit "        Right len' -> do";
            emit '          let lst = List16';
            emit '                    { l16_list = castPtr cs';
            emit "                    , l16_max = len'";
            emit '                    , l16_len = 0 -- unused for TMR_String';
            emit '                    }';
            emit '          with lst $ \p -> f (castPtr p)';
            emit '          return Nothing';
        } elsif ($paramType =~ /^\[Int/ or $paramType =~ /^\[Word/) {
            my $size = $listSize{$paramType};
            emit "  pGet = getList$size";
            emit "  pSet = setList$size \"$paramType\"";
        } elsif ($paramType eq "[Region]") {
            my $size = $listSize{$paramType};
            emit "  pGet f = map toRegion <\$> getList$size f";
            emit "  pSet x f = setList$size \"$paramType\" (map fromRegion x) f";
        } elsif ($paramType eq "[TagProtocol]") {
            my $size = $listSize{$paramType};
            emit "  pGet f = map toTagProtocol <\$> getList$size f";
            emit "  pSet x f = setList$size \"$paramType\" (map fromTagProtocol x) f";
        }
    }
    emit "";
}

sub emitRegion {
    emit "type RawRegion = #{type TMR_Region}";
    emit "";

    emit "data Region =";
    emitEnum (\@regions, \%regions);
    emit "  deriving (Eq, Ord, Show, Read, Bounded, Enum)";
    emit "";

    emit "toRegion :: RawRegion -> Region";
    emitTo ("toRegion", "TMR_", \@regions);
    emit "toRegion _ = REGION_NONE";
    emit "";

    emit "fromRegion :: Region -> RawRegion";
    emitFrom ("fromRegion", "TMR_", \@regions);
    emit "";
}

sub emitTagProtocol {
    emit "type RawTagProtocol = #{type TMR_TagProtocol}";
    emit "";

    emit "data TagProtocol =";
    emitEnum (\@tagProtocols, {});
    emit "  deriving (Eq, Ord, Show, Read, Bounded, Enum)";
    emit "";

    emit "toTagProtocol :: RawTagProtocol -> TagProtocol";
    emitTo ("toTagProtocol", "TMR_", \@tagProtocols);
    emit "toTagProtocol _ = TAG_PROTOCOL_NONE";
    emit "";

    emit "fromTagProtocol :: TagProtocol -> RawTagProtocol";
    emitFrom ("fromTagProtocol", "TMR_", \@tagProtocols);
    emit "";
}

readStatus();
readParams();
readGlue();
readRegion();
readTagProtocol();

emitHeader();
emitStructs();
emitStatus();
emitRegion();
emitTagProtocol();
emitParams();
emitParamTypes();

dumpOutput();
