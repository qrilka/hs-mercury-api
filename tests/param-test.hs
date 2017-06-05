-- Automatically generated by util/generate-tmr-hsc.pl
{-# LANGUAGE OverloadedStrings #-}

import Test.HUnit

import qualified System.Hardware.MercuryApi as TMR

main = runTestTT tests

testBaudRate :: Test
testBaudRate = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_BAUDRATE"
    "/reader/baudRate"
    (TMR.paramName TMR.PARAM_BAUDRATE)
  assertEqual "TMR.paramID \"/reader/baudRate\""
    TMR.PARAM_BAUDRATE
    (TMR.paramID "/reader/baudRate")

testProbeBaudRates :: Test
testProbeBaudRates = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_PROBEBAUDRATES"
    "/reader/probeBaudRates"
    (TMR.paramName TMR.PARAM_PROBEBAUDRATES)
  assertEqual "TMR.paramID \"/reader/probeBaudRates\""
    TMR.PARAM_PROBEBAUDRATES
    (TMR.paramID "/reader/probeBaudRates")

testCommandTimeout :: Test
testCommandTimeout = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_COMMANDTIMEOUT"
    "/reader/commandTimeout"
    (TMR.paramName TMR.PARAM_COMMANDTIMEOUT)
  assertEqual "TMR.paramID \"/reader/commandTimeout\""
    TMR.PARAM_COMMANDTIMEOUT
    (TMR.paramID "/reader/commandTimeout")

testTransportTimeout :: Test
testTransportTimeout = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TRANSPORTTIMEOUT"
    "/reader/transportTimeout"
    (TMR.paramName TMR.PARAM_TRANSPORTTIMEOUT)
  assertEqual "TMR.paramID \"/reader/transportTimeout\""
    TMR.PARAM_TRANSPORTTIMEOUT
    (TMR.paramID "/reader/transportTimeout")

testPowerMode :: Test
testPowerMode = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_POWERMODE"
    "/reader/powerMode"
    (TMR.paramName TMR.PARAM_POWERMODE)
  assertEqual "TMR.paramID \"/reader/powerMode\""
    TMR.PARAM_POWERMODE
    (TMR.paramID "/reader/powerMode")

testUserMode :: Test
testUserMode = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_USERMODE"
    "/reader/userMode"
    (TMR.paramName TMR.PARAM_USERMODE)
  assertEqual "TMR.paramID \"/reader/userMode\""
    TMR.PARAM_USERMODE
    (TMR.paramID "/reader/userMode")

testAntennaCheckPort :: Test
testAntennaCheckPort = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_CHECKPORT"
    "/reader/antenna/checkPort"
    (TMR.paramName TMR.PARAM_ANTENNA_CHECKPORT)
  assertEqual "TMR.paramID \"/reader/antenna/checkPort\""
    TMR.PARAM_ANTENNA_CHECKPORT
    (TMR.paramID "/reader/antenna/checkPort")

testAntennaPortList :: Test
testAntennaPortList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_PORTLIST"
    "/reader/antenna/portList"
    (TMR.paramName TMR.PARAM_ANTENNA_PORTLIST)
  assertEqual "TMR.paramID \"/reader/antenna/portList\""
    TMR.PARAM_ANTENNA_PORTLIST
    (TMR.paramID "/reader/antenna/portList")

testAntennaConnectedPortList :: Test
testAntennaConnectedPortList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_CONNECTEDPORTLIST"
    "/reader/antenna/connectedPortList"
    (TMR.paramName TMR.PARAM_ANTENNA_CONNECTEDPORTLIST)
  assertEqual "TMR.paramID \"/reader/antenna/connectedPortList\""
    TMR.PARAM_ANTENNA_CONNECTEDPORTLIST
    (TMR.paramID "/reader/antenna/connectedPortList")

testAntennaPortSwitchGpos :: Test
testAntennaPortSwitchGpos = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_PORTSWITCHGPOS"
    "/reader/antenna/portSwitchGpos"
    (TMR.paramName TMR.PARAM_ANTENNA_PORTSWITCHGPOS)
  assertEqual "TMR.paramID \"/reader/antenna/portSwitchGpos\""
    TMR.PARAM_ANTENNA_PORTSWITCHGPOS
    (TMR.paramID "/reader/antenna/portSwitchGpos")

testAntennaSettlingTimeList :: Test
testAntennaSettlingTimeList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_SETTLINGTIMELIST"
    "/reader/antenna/settlingTimeList"
    (TMR.paramName TMR.PARAM_ANTENNA_SETTLINGTIMELIST)
  assertEqual "TMR.paramID \"/reader/antenna/settlingTimeList\""
    TMR.PARAM_ANTENNA_SETTLINGTIMELIST
    (TMR.paramID "/reader/antenna/settlingTimeList")

testAntennaReturnLoss :: Test
testAntennaReturnLoss = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_RETURNLOSS"
    "/reader/antenna/returnLoss"
    (TMR.paramName TMR.PARAM_ANTENNA_RETURNLOSS)
  assertEqual "TMR.paramID \"/reader/antenna/returnLoss\""
    TMR.PARAM_ANTENNA_RETURNLOSS
    (TMR.paramID "/reader/antenna/returnLoss")

testAntennaTxRxMap :: Test
testAntennaTxRxMap = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ANTENNA_TXRXMAP"
    "/reader/antenna/txRxMap"
    (TMR.paramName TMR.PARAM_ANTENNA_TXRXMAP)
  assertEqual "TMR.paramID \"/reader/antenna/txRxMap\""
    TMR.PARAM_ANTENNA_TXRXMAP
    (TMR.paramID "/reader/antenna/txRxMap")

testGpioInputList :: Test
testGpioInputList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GPIO_INPUTLIST"
    "/reader/gpio/inputList"
    (TMR.paramName TMR.PARAM_GPIO_INPUTLIST)
  assertEqual "TMR.paramID \"/reader/gpio/inputList\""
    TMR.PARAM_GPIO_INPUTLIST
    (TMR.paramID "/reader/gpio/inputList")

testGpioOutputList :: Test
testGpioOutputList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GPIO_OUTPUTLIST"
    "/reader/gpio/outputList"
    (TMR.paramName TMR.PARAM_GPIO_OUTPUTLIST)
  assertEqual "TMR.paramID \"/reader/gpio/outputList\""
    TMR.PARAM_GPIO_OUTPUTLIST
    (TMR.paramID "/reader/gpio/outputList")

testGen2AccessPassword :: Test
testGen2AccessPassword = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_ACCESSPASSWORD"
    "/reader/gen2/accessPassword"
    (TMR.paramName TMR.PARAM_GEN2_ACCESSPASSWORD)
  assertEqual "TMR.paramID \"/reader/gen2/accessPassword\""
    TMR.PARAM_GEN2_ACCESSPASSWORD
    (TMR.paramID "/reader/gen2/accessPassword")

testGen2Q :: Test
testGen2Q = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_Q"
    "/reader/gen2/q"
    (TMR.paramName TMR.PARAM_GEN2_Q)
  assertEqual "TMR.paramID \"/reader/gen2/q\""
    TMR.PARAM_GEN2_Q
    (TMR.paramID "/reader/gen2/q")

testGen2TagEncoding :: Test
testGen2TagEncoding = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_TAGENCODING"
    "/reader/gen2/tagEncoding"
    (TMR.paramName TMR.PARAM_GEN2_TAGENCODING)
  assertEqual "TMR.paramID \"/reader/gen2/tagEncoding\""
    TMR.PARAM_GEN2_TAGENCODING
    (TMR.paramID "/reader/gen2/tagEncoding")

testGen2Session :: Test
testGen2Session = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_SESSION"
    "/reader/gen2/session"
    (TMR.paramName TMR.PARAM_GEN2_SESSION)
  assertEqual "TMR.paramID \"/reader/gen2/session\""
    TMR.PARAM_GEN2_SESSION
    (TMR.paramID "/reader/gen2/session")

testGen2Target :: Test
testGen2Target = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_TARGET"
    "/reader/gen2/target"
    (TMR.paramName TMR.PARAM_GEN2_TARGET)
  assertEqual "TMR.paramID \"/reader/gen2/target\""
    TMR.PARAM_GEN2_TARGET
    (TMR.paramID "/reader/gen2/target")

testGen2BLF :: Test
testGen2BLF = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_BLF"
    "/reader/gen2/BLF"
    (TMR.paramName TMR.PARAM_GEN2_BLF)
  assertEqual "TMR.paramID \"/reader/gen2/BLF\""
    TMR.PARAM_GEN2_BLF
    (TMR.paramID "/reader/gen2/BLF")

testGen2Tari :: Test
testGen2Tari = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_TARI"
    "/reader/gen2/tari"
    (TMR.paramName TMR.PARAM_GEN2_TARI)
  assertEqual "TMR.paramID \"/reader/gen2/tari\""
    TMR.PARAM_GEN2_TARI
    (TMR.paramID "/reader/gen2/tari")

testGen2WriteMode :: Test
testGen2WriteMode = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_WRITEMODE"
    "/reader/gen2/writeMode"
    (TMR.paramName TMR.PARAM_GEN2_WRITEMODE)
  assertEqual "TMR.paramID \"/reader/gen2/writeMode\""
    TMR.PARAM_GEN2_WRITEMODE
    (TMR.paramID "/reader/gen2/writeMode")

testGen2Bap :: Test
testGen2Bap = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_BAP"
    "/reader/gen2/bap"
    (TMR.paramName TMR.PARAM_GEN2_BAP)
  assertEqual "TMR.paramID \"/reader/gen2/bap\""
    TMR.PARAM_GEN2_BAP
    (TMR.paramID "/reader/gen2/bap")

testGen2ProtocolExtension :: Test
testGen2ProtocolExtension = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_GEN2_PROTOCOLEXTENSION"
    "/reader/gen2/protocolExtension"
    (TMR.paramName TMR.PARAM_GEN2_PROTOCOLEXTENSION)
  assertEqual "TMR.paramID \"/reader/gen2/protocolExtension\""
    TMR.PARAM_GEN2_PROTOCOLEXTENSION
    (TMR.paramID "/reader/gen2/protocolExtension")

testIso180006bBLF :: Test
testIso180006bBLF = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ISO180006B_BLF"
    "/reader/iso180006b/BLF"
    (TMR.paramName TMR.PARAM_ISO180006B_BLF)
  assertEqual "TMR.paramID \"/reader/iso180006b/BLF\""
    TMR.PARAM_ISO180006B_BLF
    (TMR.paramID "/reader/iso180006b/BLF")

testIso180006bModulationDepth :: Test
testIso180006bModulationDepth = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ISO180006B_MODULATION_DEPTH"
    "/reader/iso180006b/modulationDepth"
    (TMR.paramName TMR.PARAM_ISO180006B_MODULATION_DEPTH)
  assertEqual "TMR.paramID \"/reader/iso180006b/modulationDepth\""
    TMR.PARAM_ISO180006B_MODULATION_DEPTH
    (TMR.paramID "/reader/iso180006b/modulationDepth")

testIso180006bDelimiter :: Test
testIso180006bDelimiter = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_ISO180006B_DELIMITER"
    "/reader/iso180006b/delimiter"
    (TMR.paramName TMR.PARAM_ISO180006B_DELIMITER)
  assertEqual "TMR.paramID \"/reader/iso180006b/delimiter\""
    TMR.PARAM_ISO180006B_DELIMITER
    (TMR.paramID "/reader/iso180006b/delimiter")

testReadAsyncOffTime :: Test
testReadAsyncOffTime = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READ_ASYNCOFFTIME"
    "/reader/read/asyncOffTime"
    (TMR.paramName TMR.PARAM_READ_ASYNCOFFTIME)
  assertEqual "TMR.paramID \"/reader/read/asyncOffTime\""
    TMR.PARAM_READ_ASYNCOFFTIME
    (TMR.paramID "/reader/read/asyncOffTime")

testReadAsyncOnTime :: Test
testReadAsyncOnTime = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READ_ASYNCONTIME"
    "/reader/read/asyncOnTime"
    (TMR.paramName TMR.PARAM_READ_ASYNCONTIME)
  assertEqual "TMR.paramID \"/reader/read/asyncOnTime\""
    TMR.PARAM_READ_ASYNCONTIME
    (TMR.paramID "/reader/read/asyncOnTime")

testReadPlan :: Test
testReadPlan = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READ_PLAN"
    "/reader/read/plan"
    (TMR.paramName TMR.PARAM_READ_PLAN)
  assertEqual "TMR.paramID \"/reader/read/plan\""
    TMR.PARAM_READ_PLAN
    (TMR.paramID "/reader/read/plan")

testRadioEnablePowerSave :: Test
testRadioEnablePowerSave = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_ENABLEPOWERSAVE"
    "/reader/radio/enablePowerSave"
    (TMR.paramName TMR.PARAM_RADIO_ENABLEPOWERSAVE)
  assertEqual "TMR.paramID \"/reader/radio/enablePowerSave\""
    TMR.PARAM_RADIO_ENABLEPOWERSAVE
    (TMR.paramID "/reader/radio/enablePowerSave")

testRadioPowerMax :: Test
testRadioPowerMax = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_POWERMAX"
    "/reader/radio/powerMax"
    (TMR.paramName TMR.PARAM_RADIO_POWERMAX)
  assertEqual "TMR.paramID \"/reader/radio/powerMax\""
    TMR.PARAM_RADIO_POWERMAX
    (TMR.paramID "/reader/radio/powerMax")

testRadioPowerMin :: Test
testRadioPowerMin = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_POWERMIN"
    "/reader/radio/powerMin"
    (TMR.paramName TMR.PARAM_RADIO_POWERMIN)
  assertEqual "TMR.paramID \"/reader/radio/powerMin\""
    TMR.PARAM_RADIO_POWERMIN
    (TMR.paramID "/reader/radio/powerMin")

testRadioPortReadPowerList :: Test
testRadioPortReadPowerList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_PORTREADPOWERLIST"
    "/reader/radio/portReadPowerList"
    (TMR.paramName TMR.PARAM_RADIO_PORTREADPOWERLIST)
  assertEqual "TMR.paramID \"/reader/radio/portReadPowerList\""
    TMR.PARAM_RADIO_PORTREADPOWERLIST
    (TMR.paramID "/reader/radio/portReadPowerList")

testRadioPortWritePowerList :: Test
testRadioPortWritePowerList = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_PORTWRITEPOWERLIST"
    "/reader/radio/portWritePowerList"
    (TMR.paramName TMR.PARAM_RADIO_PORTWRITEPOWERLIST)
  assertEqual "TMR.paramID \"/reader/radio/portWritePowerList\""
    TMR.PARAM_RADIO_PORTWRITEPOWERLIST
    (TMR.paramID "/reader/radio/portWritePowerList")

testRadioReadPower :: Test
testRadioReadPower = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_READPOWER"
    "/reader/radio/readPower"
    (TMR.paramName TMR.PARAM_RADIO_READPOWER)
  assertEqual "TMR.paramID \"/reader/radio/readPower\""
    TMR.PARAM_RADIO_READPOWER
    (TMR.paramID "/reader/radio/readPower")

testRadioWritePower :: Test
testRadioWritePower = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_WRITEPOWER"
    "/reader/radio/writePower"
    (TMR.paramName TMR.PARAM_RADIO_WRITEPOWER)
  assertEqual "TMR.paramID \"/reader/radio/writePower\""
    TMR.PARAM_RADIO_WRITEPOWER
    (TMR.paramID "/reader/radio/writePower")

testRadioTemperature :: Test
testRadioTemperature = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_TEMPERATURE"
    "/reader/radio/temperature"
    (TMR.paramName TMR.PARAM_RADIO_TEMPERATURE)
  assertEqual "TMR.paramID \"/reader/radio/temperature\""
    TMR.PARAM_RADIO_TEMPERATURE
    (TMR.paramID "/reader/radio/temperature")

testTagReadDataRecordHighestRssi :: Test
testTagReadDataRecordHighestRssi = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_RECORDHIGHESTRSSI"
    "/reader/tagReadData/recordHighestRssi"
    (TMR.paramName TMR.PARAM_TAGREADDATA_RECORDHIGHESTRSSI)
  assertEqual "TMR.paramID \"/reader/tagReadData/recordHighestRssi\""
    TMR.PARAM_TAGREADDATA_RECORDHIGHESTRSSI
    (TMR.paramID "/reader/tagReadData/recordHighestRssi")

testTagReadDataReportRssiInDbm :: Test
testTagReadDataReportRssiInDbm = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_REPORTRSSIINDBM"
    "/reader/tagReadData/reportRssiInDbm"
    (TMR.paramName TMR.PARAM_TAGREADDATA_REPORTRSSIINDBM)
  assertEqual "TMR.paramID \"/reader/tagReadData/reportRssiInDbm\""
    TMR.PARAM_TAGREADDATA_REPORTRSSIINDBM
    (TMR.paramID "/reader/tagReadData/reportRssiInDbm")

testTagReadDataUniqueByAntenna :: Test
testTagReadDataUniqueByAntenna = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYANTENNA"
    "/reader/tagReadData/uniqueByAntenna"
    (TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYANTENNA)
  assertEqual "TMR.paramID \"/reader/tagReadData/uniqueByAntenna\""
    TMR.PARAM_TAGREADDATA_UNIQUEBYANTENNA
    (TMR.paramID "/reader/tagReadData/uniqueByAntenna")

testTagReadDataUniqueByData :: Test
testTagReadDataUniqueByData = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYDATA"
    "/reader/tagReadData/uniqueByData"
    (TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYDATA)
  assertEqual "TMR.paramID \"/reader/tagReadData/uniqueByData\""
    TMR.PARAM_TAGREADDATA_UNIQUEBYDATA
    (TMR.paramID "/reader/tagReadData/uniqueByData")

testTagopAntenna :: Test
testTagopAntenna = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGOP_ANTENNA"
    "/reader/tagop/antenna"
    (TMR.paramName TMR.PARAM_TAGOP_ANTENNA)
  assertEqual "TMR.paramID \"/reader/tagop/antenna\""
    TMR.PARAM_TAGOP_ANTENNA
    (TMR.paramID "/reader/tagop/antenna")

testTagopProtocol :: Test
testTagopProtocol = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGOP_PROTOCOL"
    "/reader/tagop/protocol"
    (TMR.paramName TMR.PARAM_TAGOP_PROTOCOL)
  assertEqual "TMR.paramID \"/reader/tagop/protocol\""
    TMR.PARAM_TAGOP_PROTOCOL
    (TMR.paramID "/reader/tagop/protocol")

testVersionHardware :: Test
testVersionHardware = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_VERSION_HARDWARE"
    "/reader/version/hardware"
    (TMR.paramName TMR.PARAM_VERSION_HARDWARE)
  assertEqual "TMR.paramID \"/reader/version/hardware\""
    TMR.PARAM_VERSION_HARDWARE
    (TMR.paramID "/reader/version/hardware")

testVersionSerial :: Test
testVersionSerial = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_VERSION_SERIAL"
    "/reader/version/serial"
    (TMR.paramName TMR.PARAM_VERSION_SERIAL)
  assertEqual "TMR.paramID \"/reader/version/serial\""
    TMR.PARAM_VERSION_SERIAL
    (TMR.paramID "/reader/version/serial")

testVersionModel :: Test
testVersionModel = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_VERSION_MODEL"
    "/reader/version/model"
    (TMR.paramName TMR.PARAM_VERSION_MODEL)
  assertEqual "TMR.paramID \"/reader/version/model\""
    TMR.PARAM_VERSION_MODEL
    (TMR.paramID "/reader/version/model")

testVersionSoftware :: Test
testVersionSoftware = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_VERSION_SOFTWARE"
    "/reader/version/software"
    (TMR.paramName TMR.PARAM_VERSION_SOFTWARE)
  assertEqual "TMR.paramID \"/reader/version/software\""
    TMR.PARAM_VERSION_SOFTWARE
    (TMR.paramID "/reader/version/software")

testVersionSupportedProtocols :: Test
testVersionSupportedProtocols = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_VERSION_SUPPORTEDPROTOCOLS"
    "/reader/version/supportedProtocols"
    (TMR.paramName TMR.PARAM_VERSION_SUPPORTEDPROTOCOLS)
  assertEqual "TMR.paramID \"/reader/version/supportedProtocols\""
    TMR.PARAM_VERSION_SUPPORTEDPROTOCOLS
    (TMR.paramID "/reader/version/supportedProtocols")

testRegionHopTable :: Test
testRegionHopTable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_REGION_HOPTABLE"
    "/reader/region/hopTable"
    (TMR.paramName TMR.PARAM_REGION_HOPTABLE)
  assertEqual "TMR.paramID \"/reader/region/hopTable\""
    TMR.PARAM_REGION_HOPTABLE
    (TMR.paramID "/reader/region/hopTable")

testRegionHopTime :: Test
testRegionHopTime = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_REGION_HOPTIME"
    "/reader/region/hopTime"
    (TMR.paramName TMR.PARAM_REGION_HOPTIME)
  assertEqual "TMR.paramID \"/reader/region/hopTime\""
    TMR.PARAM_REGION_HOPTIME
    (TMR.paramID "/reader/region/hopTime")

testRegionId :: Test
testRegionId = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_REGION_ID"
    "/reader/region/id"
    (TMR.paramName TMR.PARAM_REGION_ID)
  assertEqual "TMR.paramID \"/reader/region/id\""
    TMR.PARAM_REGION_ID
    (TMR.paramID "/reader/region/id")

testRegionSupportedRegions :: Test
testRegionSupportedRegions = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_REGION_SUPPORTEDREGIONS"
    "/reader/region/supportedRegions"
    (TMR.paramName TMR.PARAM_REGION_SUPPORTEDREGIONS)
  assertEqual "TMR.paramID \"/reader/region/supportedRegions\""
    TMR.PARAM_REGION_SUPPORTEDREGIONS
    (TMR.paramID "/reader/region/supportedRegions")

testRegionLbtEnable :: Test
testRegionLbtEnable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_REGION_LBT_ENABLE"
    "/reader/region/lbt/enable"
    (TMR.paramName TMR.PARAM_REGION_LBT_ENABLE)
  assertEqual "TMR.paramID \"/reader/region/lbt/enable\""
    TMR.PARAM_REGION_LBT_ENABLE
    (TMR.paramID "/reader/region/lbt/enable")

testLicenseKey :: Test
testLicenseKey = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_LICENSE_KEY"
    "/reader/licenseKey"
    (TMR.paramName TMR.PARAM_LICENSE_KEY)
  assertEqual "TMR.paramID \"/reader/licenseKey\""
    TMR.PARAM_LICENSE_KEY
    (TMR.paramID "/reader/licenseKey")

testUserConfig :: Test
testUserConfig = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_USER_CONFIG"
    "/reader/userConfig"
    (TMR.paramName TMR.PARAM_USER_CONFIG)
  assertEqual "TMR.paramID \"/reader/userConfig\""
    TMR.PARAM_USER_CONFIG
    (TMR.paramID "/reader/userConfig")

testRadioEnableSJC :: Test
testRadioEnableSJC = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_RADIO_ENABLESJC"
    "/reader/radio/enableSJC"
    (TMR.paramName TMR.PARAM_RADIO_ENABLESJC)
  assertEqual "TMR.paramID \"/reader/radio/enableSJC\""
    TMR.PARAM_RADIO_ENABLESJC
    (TMR.paramID "/reader/radio/enableSJC")

testExtendedEpc :: Test
testExtendedEpc = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_EXTENDEDEPC"
    "/reader/extendedEpc"
    (TMR.paramName TMR.PARAM_EXTENDEDEPC)
  assertEqual "TMR.paramID \"/reader/extendedEpc\""
    TMR.PARAM_EXTENDEDEPC
    (TMR.paramID "/reader/extendedEpc")

testStatistics :: Test
testStatistics = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_STATISTICS"
    "/reader/statistics"
    (TMR.paramName TMR.PARAM_READER_STATISTICS)
  assertEqual "TMR.paramID \"/reader/statistics\""
    TMR.PARAM_READER_STATISTICS
    (TMR.paramID "/reader/statistics")

testStats :: Test
testStats = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_STATS"
    "/reader/stats"
    (TMR.paramName TMR.PARAM_READER_STATS)
  assertEqual "TMR.paramID \"/reader/stats\""
    TMR.PARAM_READER_STATS
    (TMR.paramID "/reader/stats")

testUri :: Test
testUri = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_URI"
    "/reader/uri"
    (TMR.paramName TMR.PARAM_URI)
  assertEqual "TMR.paramID \"/reader/uri\""
    TMR.PARAM_URI
    (TMR.paramID "/reader/uri")

testVersionProductGroupID :: Test
testVersionProductGroupID = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_PRODUCT_GROUP_ID"
    "/reader/version/productGroupID"
    (TMR.paramName TMR.PARAM_PRODUCT_GROUP_ID)
  assertEqual "TMR.paramID \"/reader/version/productGroupID\""
    TMR.PARAM_PRODUCT_GROUP_ID
    (TMR.paramID "/reader/version/productGroupID")

testVersionProductGroup :: Test
testVersionProductGroup = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_PRODUCT_GROUP"
    "/reader/version/productGroup"
    (TMR.paramName TMR.PARAM_PRODUCT_GROUP)
  assertEqual "TMR.paramID \"/reader/version/productGroup\""
    TMR.PARAM_PRODUCT_GROUP
    (TMR.paramID "/reader/version/productGroup")

testVersionProductID :: Test
testVersionProductID = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_PRODUCT_ID"
    "/reader/version/productID"
    (TMR.paramName TMR.PARAM_PRODUCT_ID)
  assertEqual "TMR.paramID \"/reader/version/productID\""
    TMR.PARAM_PRODUCT_ID
    (TMR.paramID "/reader/version/productID")

testTagReadDataTagopSuccesses :: Test
testTagReadDataTagopSuccesses = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADATA_TAGOPSUCCESSCOUNT"
    "/reader/tagReadData/tagopSuccesses"
    (TMR.paramName TMR.PARAM_TAGREADATA_TAGOPSUCCESSCOUNT)
  assertEqual "TMR.paramID \"/reader/tagReadData/tagopSuccesses\""
    TMR.PARAM_TAGREADATA_TAGOPSUCCESSCOUNT
    (TMR.paramID "/reader/tagReadData/tagopSuccesses")

testTagReadDataTagopFailures :: Test
testTagReadDataTagopFailures = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADATA_TAGOPFAILURECOUNT"
    "/reader/tagReadData/tagopFailures"
    (TMR.paramName TMR.PARAM_TAGREADATA_TAGOPFAILURECOUNT)
  assertEqual "TMR.paramID \"/reader/tagReadData/tagopFailures\""
    TMR.PARAM_TAGREADATA_TAGOPFAILURECOUNT
    (TMR.paramID "/reader/tagReadData/tagopFailures")

testStatusAntennaEnable :: Test
testStatusAntennaEnable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_STATUS_ENABLE_ANTENNAREPORT"
    "/reader/status/antennaEnable"
    (TMR.paramName TMR.PARAM_STATUS_ENABLE_ANTENNAREPORT)
  assertEqual "TMR.paramID \"/reader/status/antennaEnable\""
    TMR.PARAM_STATUS_ENABLE_ANTENNAREPORT
    (TMR.paramID "/reader/status/antennaEnable")

testStatusFrequencyEnable :: Test
testStatusFrequencyEnable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_STATUS_ENABLE_FREQUENCYREPORT"
    "/reader/status/frequencyEnable"
    (TMR.paramName TMR.PARAM_STATUS_ENABLE_FREQUENCYREPORT)
  assertEqual "TMR.paramID \"/reader/status/frequencyEnable\""
    TMR.PARAM_STATUS_ENABLE_FREQUENCYREPORT
    (TMR.paramID "/reader/status/frequencyEnable")

testStatusTemperatureEnable :: Test
testStatusTemperatureEnable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_STATUS_ENABLE_TEMPERATUREREPORT"
    "/reader/status/temperatureEnable"
    (TMR.paramName TMR.PARAM_STATUS_ENABLE_TEMPERATUREREPORT)
  assertEqual "TMR.paramID \"/reader/status/temperatureEnable\""
    TMR.PARAM_STATUS_ENABLE_TEMPERATUREREPORT
    (TMR.paramID "/reader/status/temperatureEnable")

testTagReadDataEnableReadFilter :: Test
testTagReadDataEnableReadFilter = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_ENABLEREADFILTER"
    "/reader/tagReadData/enableReadFilter"
    (TMR.paramName TMR.PARAM_TAGREADDATA_ENABLEREADFILTER)
  assertEqual "TMR.paramID \"/reader/tagReadData/enableReadFilter\""
    TMR.PARAM_TAGREADDATA_ENABLEREADFILTER
    (TMR.paramID "/reader/tagReadData/enableReadFilter")

testTagReadDataReadFilterTimeout :: Test
testTagReadDataReadFilterTimeout = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_READFILTERTIMEOUT"
    "/reader/tagReadData/readFilterTimeout"
    (TMR.paramName TMR.PARAM_TAGREADDATA_READFILTERTIMEOUT)
  assertEqual "TMR.paramID \"/reader/tagReadData/readFilterTimeout\""
    TMR.PARAM_TAGREADDATA_READFILTERTIMEOUT
    (TMR.paramID "/reader/tagReadData/readFilterTimeout")

testTagReadDataUniqueByProtocol :: Test
testTagReadDataUniqueByProtocol = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYPROTOCOL"
    "/reader/tagReadData/uniqueByProtocol"
    (TMR.paramName TMR.PARAM_TAGREADDATA_UNIQUEBYPROTOCOL)
  assertEqual "TMR.paramID \"/reader/tagReadData/uniqueByProtocol\""
    TMR.PARAM_TAGREADDATA_UNIQUEBYPROTOCOL
    (TMR.paramID "/reader/tagReadData/uniqueByProtocol")

testDescription :: Test
testDescription = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_DESCRIPTION"
    "/reader/description"
    (TMR.paramName TMR.PARAM_READER_DESCRIPTION)
  assertEqual "TMR.paramID \"/reader/description\""
    TMR.PARAM_READER_DESCRIPTION
    (TMR.paramID "/reader/description")

testHostname :: Test
testHostname = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_HOSTNAME"
    "/reader/hostname"
    (TMR.paramName TMR.PARAM_READER_HOSTNAME)
  assertEqual "TMR.paramID \"/reader/hostname\""
    TMR.PARAM_READER_HOSTNAME
    (TMR.paramID "/reader/hostname")

testCurrentTime :: Test
testCurrentTime = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_CURRENTTIME"
    "/reader/currentTime"
    (TMR.paramName TMR.PARAM_CURRENTTIME)
  assertEqual "TMR.paramID \"/reader/currentTime\""
    TMR.PARAM_CURRENTTIME
    (TMR.paramID "/reader/currentTime")

testGen2WriteReplyTimeout :: Test
testGen2WriteReplyTimeout = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_WRITE_REPLY_TIMEOUT"
    "/reader/gen2/writeReplyTimeout"
    (TMR.paramName TMR.PARAM_READER_WRITE_REPLY_TIMEOUT)
  assertEqual "TMR.paramID \"/reader/gen2/writeReplyTimeout\""
    TMR.PARAM_READER_WRITE_REPLY_TIMEOUT
    (TMR.paramID "/reader/gen2/writeReplyTimeout")

testGen2WriteEarlyExit :: Test
testGen2WriteEarlyExit = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_WRITE_EARLY_EXIT"
    "/reader/gen2/writeEarlyExit"
    (TMR.paramName TMR.PARAM_READER_WRITE_EARLY_EXIT)
  assertEqual "TMR.paramID \"/reader/gen2/writeEarlyExit\""
    TMR.PARAM_READER_WRITE_EARLY_EXIT
    (TMR.paramID "/reader/gen2/writeEarlyExit")

testStatsEnable :: Test
testStatsEnable = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_READER_STATS_ENABLE"
    "/reader/stats/enable"
    (TMR.paramName TMR.PARAM_READER_STATS_ENABLE)
  assertEqual "TMR.paramID \"/reader/stats/enable\""
    TMR.PARAM_READER_STATS_ENABLE
    (TMR.paramID "/reader/stats/enable")

testTriggerReadGpi :: Test
testTriggerReadGpi = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_TRIGGER_READ_GPI"
    "/reader/trigger/read/Gpi"
    (TMR.paramName TMR.PARAM_TRIGGER_READ_GPI)
  assertEqual "TMR.paramID \"/reader/trigger/read/Gpi\""
    TMR.PARAM_TRIGGER_READ_GPI
    (TMR.paramID "/reader/trigger/read/Gpi")

testMetadataflags :: Test
testMetadataflags = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_METADATAFLAG"
    "/reader/metadataflags"
    (TMR.paramName TMR.PARAM_METADATAFLAG)
  assertEqual "TMR.paramID \"/reader/metadataflags\""
    TMR.PARAM_METADATAFLAG
    (TMR.paramID "/reader/metadataflags")

testLicensedFeatures :: Test
testLicensedFeatures = TestCase $ do
  assertEqual "TMR.paramName TMR.PARAM_LICENSED_FEATURES"
    "/reader/licensedFeatures"
    (TMR.paramName TMR.PARAM_LICENSED_FEATURES)
  assertEqual "TMR.paramID \"/reader/licensedFeatures\""
    TMR.PARAM_LICENSED_FEATURES
    (TMR.paramID "/reader/licensedFeatures")

tests :: Test
tests = TestList
  [ TestLabel "testBaudRate" testBaudRate
  , TestLabel "testProbeBaudRates" testProbeBaudRates
  , TestLabel "testCommandTimeout" testCommandTimeout
  , TestLabel "testTransportTimeout" testTransportTimeout
  , TestLabel "testPowerMode" testPowerMode
  , TestLabel "testUserMode" testUserMode
  , TestLabel "testAntennaCheckPort" testAntennaCheckPort
  , TestLabel "testAntennaPortList" testAntennaPortList
  , TestLabel "testAntennaConnectedPortList" testAntennaConnectedPortList
  , TestLabel "testAntennaPortSwitchGpos" testAntennaPortSwitchGpos
  , TestLabel "testAntennaSettlingTimeList" testAntennaSettlingTimeList
  , TestLabel "testAntennaReturnLoss" testAntennaReturnLoss
  , TestLabel "testAntennaTxRxMap" testAntennaTxRxMap
  , TestLabel "testGpioInputList" testGpioInputList
  , TestLabel "testGpioOutputList" testGpioOutputList
  , TestLabel "testGen2AccessPassword" testGen2AccessPassword
  , TestLabel "testGen2Q" testGen2Q
  , TestLabel "testGen2TagEncoding" testGen2TagEncoding
  , TestLabel "testGen2Session" testGen2Session
  , TestLabel "testGen2Target" testGen2Target
  , TestLabel "testGen2BLF" testGen2BLF
  , TestLabel "testGen2Tari" testGen2Tari
  , TestLabel "testGen2WriteMode" testGen2WriteMode
  , TestLabel "testGen2Bap" testGen2Bap
  , TestLabel "testGen2ProtocolExtension" testGen2ProtocolExtension
  , TestLabel "testIso180006bBLF" testIso180006bBLF
  , TestLabel "testIso180006bModulationDepth" testIso180006bModulationDepth
  , TestLabel "testIso180006bDelimiter" testIso180006bDelimiter
  , TestLabel "testReadAsyncOffTime" testReadAsyncOffTime
  , TestLabel "testReadAsyncOnTime" testReadAsyncOnTime
  , TestLabel "testReadPlan" testReadPlan
  , TestLabel "testRadioEnablePowerSave" testRadioEnablePowerSave
  , TestLabel "testRadioPowerMax" testRadioPowerMax
  , TestLabel "testRadioPowerMin" testRadioPowerMin
  , TestLabel "testRadioPortReadPowerList" testRadioPortReadPowerList
  , TestLabel "testRadioPortWritePowerList" testRadioPortWritePowerList
  , TestLabel "testRadioReadPower" testRadioReadPower
  , TestLabel "testRadioWritePower" testRadioWritePower
  , TestLabel "testRadioTemperature" testRadioTemperature
  , TestLabel "testTagReadDataRecordHighestRssi" testTagReadDataRecordHighestRssi
  , TestLabel "testTagReadDataReportRssiInDbm" testTagReadDataReportRssiInDbm
  , TestLabel "testTagReadDataUniqueByAntenna" testTagReadDataUniqueByAntenna
  , TestLabel "testTagReadDataUniqueByData" testTagReadDataUniqueByData
  , TestLabel "testTagopAntenna" testTagopAntenna
  , TestLabel "testTagopProtocol" testTagopProtocol
  , TestLabel "testVersionHardware" testVersionHardware
  , TestLabel "testVersionSerial" testVersionSerial
  , TestLabel "testVersionModel" testVersionModel
  , TestLabel "testVersionSoftware" testVersionSoftware
  , TestLabel "testVersionSupportedProtocols" testVersionSupportedProtocols
  , TestLabel "testRegionHopTable" testRegionHopTable
  , TestLabel "testRegionHopTime" testRegionHopTime
  , TestLabel "testRegionId" testRegionId
  , TestLabel "testRegionSupportedRegions" testRegionSupportedRegions
  , TestLabel "testRegionLbtEnable" testRegionLbtEnable
  , TestLabel "testLicenseKey" testLicenseKey
  , TestLabel "testUserConfig" testUserConfig
  , TestLabel "testRadioEnableSJC" testRadioEnableSJC
  , TestLabel "testExtendedEpc" testExtendedEpc
  , TestLabel "testStatistics" testStatistics
  , TestLabel "testStats" testStats
  , TestLabel "testUri" testUri
  , TestLabel "testVersionProductGroupID" testVersionProductGroupID
  , TestLabel "testVersionProductGroup" testVersionProductGroup
  , TestLabel "testVersionProductID" testVersionProductID
  , TestLabel "testTagReadDataTagopSuccesses" testTagReadDataTagopSuccesses
  , TestLabel "testTagReadDataTagopFailures" testTagReadDataTagopFailures
  , TestLabel "testStatusAntennaEnable" testStatusAntennaEnable
  , TestLabel "testStatusFrequencyEnable" testStatusFrequencyEnable
  , TestLabel "testStatusTemperatureEnable" testStatusTemperatureEnable
  , TestLabel "testTagReadDataEnableReadFilter" testTagReadDataEnableReadFilter
  , TestLabel "testTagReadDataReadFilterTimeout" testTagReadDataReadFilterTimeout
  , TestLabel "testTagReadDataUniqueByProtocol" testTagReadDataUniqueByProtocol
  , TestLabel "testDescription" testDescription
  , TestLabel "testHostname" testHostname
  , TestLabel "testCurrentTime" testCurrentTime
  , TestLabel "testGen2WriteReplyTimeout" testGen2WriteReplyTimeout
  , TestLabel "testGen2WriteEarlyExit" testGen2WriteEarlyExit
  , TestLabel "testStatsEnable" testStatsEnable
  , TestLabel "testTriggerReadGpi" testTriggerReadGpi
  , TestLabel "testMetadataflags" testMetadataflags
  , TestLabel "testLicensedFeatures" testLicensedFeatures
  ]
