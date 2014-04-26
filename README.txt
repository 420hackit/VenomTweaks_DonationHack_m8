First and foremost, I just want to say how awesome Team Venom is, they have done a fantastic job with their ViperOneM8 rom!  Email me at 420hackit@gmail.com if anyone from Team Venom ever notices this and would like me to take it down.

Check out their release thread for donation and download links over at XDA:
http://forum.xda-developers.com/showthread.php?t=2705292

...:::NOTES:::...
This was only tested on my Sprint M8, but I see no reason why it shouldn't work on all M8 variants.

...:::HOW TO INSTALL:::...
-Clone the git project
-Load and compile with VirtuousTenStudio or whatever you prefer to compile smali code with
-Execute the following commands with the device plugged in and ADB-root enabled
#adb push VenomTweaks.apk /system/priv-app
#adb shell chmod 644 /system/priv-app/VenomTweaks.apk