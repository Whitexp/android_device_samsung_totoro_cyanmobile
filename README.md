CyanMobile for Totoro
=======================

Developer : Whitexp

Credits:
Motafoca,
Psyke83,
Squadzone,
and alls testers !

How to init repository
----------------------

You need to have your environment configured exatly like here: 

   http://source.android.com/source/initializing.html 

Next download a repo client (part "Installing Repo" of this link):

   http://source.android.com/source/downloading.html

After this steps you have everything configured and can initialize your repository for building CMX for Totoro.

First initialize local repository with CyanMobile Mainfest - this will get you CMX Source Code.

    repo init -u git://github.com/CyanMobile/android_cyanmobile.git -b gingerbread
Then sync up:

    repo sync (If you Have Faster Net You Can Have Parrarel Downloads with -j2 , -j4 Tags)

This may took few hours depending on your internet speed.

You will get full CyanMobile repo with Totoro folder (device/samsung/totoro), ready to build CM for Totoro.

How to build
------------
First you will need to get properiaty drivers from running device.
This step assumes you have adb installed and configured - google for it if you don't, beacuse it is ultimate Android Dev tool and you REALY need it if you want to do something ;)

Connect your device via USB and do the following commands (from the root of your CM repository):

    cd device/samsung/totoro
    ./extract-files.sh
    cd ../../..

And start the build:

    . build/envsetup.sh && brunch totoro

Now Andorid is building. Now you need to wait quite a long time (depending on your hardware) for the message:

    Package complete: /home/{USER}/WORKING_DIRECTORY/out/target/product/totoro/update-CyanMobile-eXperience-Totoro-xxxxxxxx-Release.zip

Now in folder out/target/Totoro/ you will find flashable zip called update-CyanMobile-eXperience-Totoro-xxxxxxxx-Release.zip with your built ROM. Flash it and enjoy! Voila!
 
Enjoy !

PS: this readme is based on lg p350
