This package is a Haskell binding to the [Mercury API][5] C API for
[ThingMagic][6] brand RFID readers.  It is especially geared toward
the [SparkFun Simultaneous RFID Reader][1], which uses ThingMagic's
[M6e Nano][7] module, but it should work with other ThingMagic
readers.  (Though currently, only support for serial readers is
compiled in.)  Most of the function and type names are the same as
their counterparts in the C API, with the `TMR_` prefix dropped.  For
more in-depth, language-independent documentation of Mercury API, see
[Mercury API Programmers Guide][2].

Currently, the Haskell binding only supports POSIX systems, but it
probably wouldn't be too hard to enable Windows support.

The Haskell binding doesn't support background reads.  I recommend
that you just spawn a new Haskell thread and do foreground reads
instead.

Currently, only support for the serial reader is compiled in, but it
probably wouldn't be too hard to enable LLRP support.  (I don't have
any way to test LLRP, however, as the M6e Nano doesn't support it.)

On Mac OS X, be sure to use the serial device that starts with
`/dev/cu.`, not the serial device that starts with `/dev/tty.`.

Only some parameters and some tagops are currently supported in the
Haskell binding.  (There are a lot of them, and I only implemented the
ones I needed.)  If you need support for additional parameters or
tagops, please file an issue in GitHub and I will add them.

Additional resources:

* [SparkFun Simultaneous RFID Reader hookup guide][3]
* [ThingMagic manuals and firmware][4]

[1]: https://www.sparkfun.com/products/14066
[2]: http://www.thingmagic.com/images/Downloads/Docs/MercuryAPI_ProgrammerGuide_for_v1.27.3.pdf
[3]: https://learn.sparkfun.com/tutorials/simultaneous-rfid-tag-reader-hookup-guide
[4]: http://www.thingmagic.com/index.php/manuals-firmware
[5]: http://www.thingmagic.com/index.php/manuals-firmware#Mercury_API
[6]: http://www.thingmagic.com/
[7]: http://www.thingmagic.com/index.php/embedded-rfid-readers/thingmagic-nano-module
