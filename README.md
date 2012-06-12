HTC Evita Device Tree
========================

Android device tree for HTC One XL (evita)

Thread on xda-developers here http://forum.xda-developers.com/showthread.php?t=1688448

Follow the steps in this document first
http://source.android.com/source/initializing.html

To get the source:

> repo init -u git://github.com/vmagro/android.git -b ics<br>
> repo sync -j4<br>

To build

> . build/envsetup.sh<br>
> cd vendor/cm<br>
> ./get-prebuilts<br>
> cd ../..<br>
> brunch evita<br>

Once build is completed, it will be located at $BUILDDIRECTORY/out/target/product/evita/
Flash with GAPPS: http://goo.im/gapps/gapps-ics-20120429-signed.zip
