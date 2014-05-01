.class public Lcom/m0narx/tweaks/TweaksBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TweaksBroadcastReceiver.java"


# instance fields
.field Cr:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private applyFirstBootOptions()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 243
    new-instance v4, Ljava/io/File;

    const-string v6, "/system/customize/default.prop"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, fileDefault:Ljava/io/File;
    iget-object v6, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, Cr:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    const-string v6, "tweaks_firstboot_completed"

    const/4 v7, 0x0

    .line 246
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v6, "tweaks_firstboot_completed"

    .line 250
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 256
    .local v1, defaultProp:Ljava/util/Properties;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 257
    const-string v7, "/system/customize/default.prop"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 263
    .local v3, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 276
    const-string v6, "pkill com.htc.lockscreenpkill com.android.systemui;pkill com.htc.launcher;"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 258
    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :catch_0
    move-exception v2

    .line 259
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .line 264
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 267
    .local v5, key:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 269
    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 273
    :catch_1
    move-exception v6

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 271
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method private applyLogCat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    const-string v1, "tweaks_disable_logcat"

    const/4 v2, 0x0

    .line 222
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    const/4 v1, 0x1

    .line 222
    if-ne v0, v1, :cond_0

    .line 224
    const-string v0, "busybox rm /dev/log/main;"

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private applyMinfreeValues()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 203
    const-string v2, "tweaks_minfree"

    .line 202
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, values:Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 205
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string v2, " > /sys/module/lowmemorykiller/parameters/minfree;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private applySysRW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    const-string v1, "tweaks_system_rw"

    const/4 v2, 0x0

    .line 214
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    const/4 v1, 0x1

    .line 214
    if-ne v0, v1, :cond_0

    .line 216
    const-string v0, "busybox mount -o remount,rw /system;"

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private applyThemeOptions()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 281
    new-instance v3, Ljava/io/File;

    const-string v5, "/system/customize/theme.prop"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, theme:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 283
    const-string v6, "tweaks_theme_imported"

    const/4 v7, 0x0

    .line 282
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 283
    if-ne v5, v8, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 288
    const-string v6, "tweaks_theme_imported"

    .line 287
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 294
    .local v4, themeProp:Ljava/util/Properties;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 295
    const-string v6, "/system/customize/theme.prop"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 301
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 314
    const-string v5, "pkill com.android.systemui;pkill com.htc.launcher;rm -rf /data/system/theme.prop"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    const-string v5, "m0narX_tweaks"

    const-string v6, "Theme applied!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 302
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, key:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 306
    iget-object v5, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 307
    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 311
    :catch_1
    move-exception v5

    goto :goto_1

    .line 309
    :cond_3
    iget-object v5, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 310
    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 309
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method private setBLN()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 131
    const-string v3, "tweaks_bln"

    const/4 v4, 0x0

    .line 130
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setButtonStrength()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_cap_brightness"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/class/leds/button-backlight/lut_coefficient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    const-string v1, "echo 0 > /sys/class/leds/button-backlight/currents"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    const-string v1, "echo 20 > /sys/class/leds/button-backlight/currents"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    return-void
.end method

.method private setCapBrightness()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_cap_brightness"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, value:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setD2Wake()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/doubletap2wake"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 167
    const-string v3, "tweaks_d2wake"

    const/4 v4, 0x0

    .line 166
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 169
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/doubletap2wake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/android_touch/doubletap2wake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setFastcharge()Ljava/lang/String;
    .locals 5

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 179
    const-string v3, "tweaks_fastcharge"

    const/4 v4, 0x0

    .line 178
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setL2Menu()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/logo2menu"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    const-string v3, "tweaks_logo2menu"

    const/4 v4, 0x0

    .line 117
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/logo2menu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/android_touch/logo2menu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setL2Wake()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/logo2wake"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    const-string v3, "tweaks_logo2wake"

    const/4 v4, 0x0

    .line 154
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/logo2wake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/android_touch/logo2wake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setPD()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/pocket_detect"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 143
    const-string v3, "tweaks_pocket_detection"

    const/4 v4, 0x0

    .line 142
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/pocket_detect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/android_touch/pocket_detect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setSweep2wake()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    invoke-static {}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->getS2WFile()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, s2w:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, ""

    .line 111
    :goto_0
    return-object v2

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 109
    const-string v3, "tweaks_sweep_wake"

    const/4 v4, 0x0

    .line 108
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, s2wState:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setVibStrength()Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/vib_strength"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 191
    const-string v3, "tweaks_vib_strength"

    const/4 v4, 0x0

    .line 190
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, value:I
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    const-string v4, "/sys/android_touch/vib_strength"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/android_touch/vib_strength"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .end local v1           #value:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setVolUpWake()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 237
    const-string v2, "tweaks_use_volume"

    const/4 v3, 0x0

    .line 236
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, vol_wake:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, " > /sys/keyboard/vol_wakeup;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 323
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "xContext"
    .parameter "mStartIntent"

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->Cr:Landroid/content/ContentResolver;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->applyThemeOptions()V

    .line 46
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->applyFirstBootOptions()V

    .line 48
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->applyMinfreeValues()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->applySysRW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->applyLogCat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setVolUpWake()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setCapBrightness()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabCpu;->applyAllSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    const-string v1, "tweaks_use_kernel_settings"

    .line 56
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setSweep2wake()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setD2Wake()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setL2Wake()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setPD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setL2Menu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setBLN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setFastcharge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setVibStrength()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->setButtonStrength()V

    .line 71
    iget-object v0, p0, Lcom/m0narx/tweaks/TweaksBroadcastReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
