.class public Lcom/m0narx/tweaks/fragments/TabAdvanced;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabAdvanced.java"


# static fields
.field private static final PICKER_GET_BOOTANIMATION:I = 0x0

.field private static final PICKER_GET_BOOT_SOUND:I = 0x2

.field private static final PICKER_GET_DOWNANIMATION:I = 0x1

.field private static final PICKER_GET_FONT:I = 0x3


# instance fields
.field private Res:Landroid/content/res/Resources;

.field private fontNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method private cancelCustomFont()V
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v2

    .line 58
    .local v2, isSYSRW:Z
    const-string v0, ""

    .line 59
    .local v0, cmd:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 60
    const-string v0, "busybox mount -o remount,rw /system;"

    .line 62
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 67
    if-nez v2, :cond_1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "busybox mount -o remount,ro /system;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0080

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 71
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 72
    return-void

    .line 63
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "busybox cp -a /system/fonts/_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    const-string v4, " /system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "chmod 666 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private checkAnimFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "FileName"

    .prologue
    .line 129
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 130
    .local v0, fileNames:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "desc.txt"

    aput-object v2, v0, v1

    .line 131
    invoke-static {p1, v0}, Lcom/m0narx/tweaks/widgets/Misc;->checkZipContent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private checkFontZipFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "FileName"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/m0narx/tweaks/widgets/Misc;->checkZipContent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private installFontZip(Ljava/lang/String;)V
    .locals 4
    .parameter "packFile"

    .prologue
    .line 117
    new-instance v0, Lcom/m0narx/tweaks/widgets/fontsInstaller;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    .line 118
    const-string v1, "custom_font"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 117
    invoke-direct {v0, v2, p1, v3, v1}, Lcom/m0narx/tweaks/widgets/fontsInstaller;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/preference/HtcSwitchPreference;)V

    .line 119
    .local v0, fi:Lcom/m0narx/tweaks/widgets/fontsInstaller;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->start()V

    .line 120
    return-void
.end method


# virtual methods
.method public cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "resName"
    .parameter "tweakName"

    .prologue
    .line 41
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v1

    .line 42
    .local v1, isSYSRW:Z
    const-string v0, ""

    .line 43
    .local v0, cmd:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 44
    const-string v0, "busybox mount -o remount,rw /system;"

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox cp -f /system/customize/resource/_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    const-string v3, " /system/customize/resource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-nez v1, :cond_1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mount -o remount,ro /system;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    return-void
.end method

.method public copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "file1"
    .parameter "name"
    .parameter "PrefName"
    .parameter "TweakName"

    .prologue
    .line 137
    new-instance v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/system/customize/resource/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, BgCopy:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;
    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->toogleSystemSetting(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->toogleCheckBox(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->start()V

    .line 142
    return-void
.end method

.method public getXMLFile()I
    .locals 1

    .prologue
    .line 353
    const/high16 v0, 0x7f04

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "advanced"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Res:Landroid/content/res/Resources;

    .line 324
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/log/main"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_disable_logcat"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    :goto_0
    const-string v0, "pref_sysrw"

    const-string v1, "tweaks_system_rw"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 332
    const-string v0, "disable_logcat"

    const-string v1, "tweaks_disable_logcat"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 334
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_cache"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnClickListener([Ljava/lang/String;)V

    .line 335
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_dalvik"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnClickListener([Ljava/lang/String;)V

    .line 337
    const-string v0, "bootanimation"

    const-string v1, "tweaks_custom_bootanimation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 338
    const-string v0, "downanimation"

    const-string v1, "tweaks_custom_downanimation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    const-string v1, "RobotoCondensed-Regular.ttf"

    aput-object v1, v0, v3

    .line 341
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    const-string v1, "RobotoCondensed-Italic.ttf"

    aput-object v1, v0, v4

    .line 342
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "RobotoCondensed-BoldItalic.ttf"

    aput-object v2, v0, v1

    .line 343
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->fontNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RobotoCondensed-Bold.ttf"

    aput-object v2, v0, v1

    .line 349
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_disable_logcat"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v3, 0x7f0a00cc

    .line 76
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "m0narX_tweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Picked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->updateButtons()V

    goto :goto_0

    .line 82
    :pswitch_0
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->checkAnimFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "bootanimation.zip"

    const-string v2, "bootanimation"

    .line 85
    const-string v3, "tweaks_custom_bootanimation"

    .line 83
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 91
    :pswitch_1
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->checkAnimFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "downanimation.zip"

    const-string v2, "downanimation"

    .line 94
    const-string v3, "tweaks_custom_downanimation"

    .line 92
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 100
    :pswitch_2
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->checkFontZipFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->installFontZip(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0183

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 108
    :pswitch_3
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_audio.mp3"

    .line 109
    const-string v2, "boot_sound"

    const-string v3, "tweaks_custom_bootsound"

    .line 108
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, PKey:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 158
    .local v3, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "true"

    if-ne v5, v8, :cond_0

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 161
    :cond_0
    const-string v5, "pref_sysrw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    const-string v0, ""

    .line 163
    .local v0, CMD:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 164
    const-string v0, "busybox mount -o remount,rw /system;"

    .line 168
    :goto_0
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, Out:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 170
    const-string v5, "failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 172
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    .line 173
    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Res:Landroid/content/res/Resources;

    const v9, 0x7f0a00b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 174
    aput-object v1, v7, v6

    .line 173
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 174
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 242
    .end local v0           #CMD:Ljava/lang/String;
    .end local v1           #Out:Ljava/lang/String;
    :goto_1
    return v5

    .line 166
    .restart local v0       #CMD:Ljava/lang/String;
    :cond_1
    const-string v0, "busybox mount -o remount,ro /system;"

    goto :goto_0

    .line 178
    .restart local v1       #Out:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_system_rw"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0           #CMD:Ljava/lang/String;
    .end local v1           #Out:Ljava/lang/String;
    :cond_3
    :goto_2
    move v5, v7

    .line 242
    goto :goto_1

    .line 179
    :cond_4
    const-string v5, "enable_boot_sound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 180
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v4

    .line 181
    .local v4, isSYSRW:Z
    if-nez v4, :cond_5

    .line 182
    const-string v5, "busybox mount -o remount,rw /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 186
    const-string v5, "busybox cp -f /system/customize/resource/_android_audio.mp3 /system/customize/resource/android_audio.mp3"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    :goto_3
    if-nez v4, :cond_3

    .line 195
    const-string v5, "busybox mount -o remount,ro /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 189
    :cond_6
    const-string v5, "busybox rm -f /system/customize/resource/android_audio.mp3"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_custom_bootsound"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    const-string v5, "boot_sound"

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcSwitchPreference;

    .line 192
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 197
    .end local v4           #isSYSRW:Z
    :cond_7
    const-string v5, "bootanimation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 198
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_8

    .line 199
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const-string v7, "zip"

    .line 200
    const v8, 0x7f0a00c9

    .line 199
    invoke-static {p0, v5, v7, v8, v6}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    .line 201
    goto :goto_1

    .line 203
    :cond_8
    const-string v5, "bootanimation.zip"

    .line 204
    const-string v6, "tweaks_custom_bootanimation"

    .line 203
    invoke-virtual {p0, v5, v6}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :cond_9
    const-string v5, "downanimation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 207
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 208
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const-string v8, "zip"

    .line 209
    const v9, 0x7f0a00ca

    .line 208
    invoke-static {p0, v5, v8, v9, v7}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    .line 210
    goto/16 :goto_1

    .line 212
    :cond_a
    const-string v5, "downanimation.zip"

    .line 213
    const-string v6, "tweaks_custom_downanimation"

    .line 212
    invoke-virtual {p0, v5, v6}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :cond_b
    const-string v5, "boot_sound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 216
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_c

    .line 217
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const-string v7, "mp3"

    .line 218
    const v8, 0x7f0a00cb

    const/4 v9, 0x2

    .line 217
    invoke-static {p0, v5, v7, v8, v9}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    .line 219
    goto/16 :goto_1

    .line 221
    :cond_c
    const-string v5, "android_audio.mp3"

    .line 222
    const-string v6, "tweaks_custom_bootsound"

    .line 221
    invoke-virtual {p0, v5, v6}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 224
    :cond_d
    const-string v5, "custom_font"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 225
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_e

    .line 226
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    const-string v7, "vfpack"

    .line 227
    const v8, 0x7f0a0182

    const/4 v9, 0x3

    .line 226
    invoke-static {p0, v5, v7, v8, v9}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    .line 228
    goto/16 :goto_1

    .line 230
    :cond_e
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->cancelCustomFont()V

    .line 231
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_custom_font"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 233
    :cond_f
    const-string v5, "disable_logcat"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_10

    .line 235
    const-string v5, "busybox rm /dev/log/main"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    :goto_4
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_disable_logcat"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 238
    :cond_10
    const-string v5, "busybox mknod /dev/log/main c 10 24;chown 0:1007 /dev/log/main;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 10
    .parameter "preference"

    .prologue
    const v5, 0x7f0a00b8

    const v9, 0x7f0a0056

    const v8, 0x7f0a001d

    const v6, 0x1080027

    const/4 v7, 0x1

    .line 247
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, PKey:Ljava/lang/String;
    const-string v4, "pref_fix"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    .line 251
    .local v3, aDialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;-><init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V

    .line 253
    .local v0, FP:Lcom/m0narx/tweaks/process/fixPermissionsProcess;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->start()V

    .line 254
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 316
    .end local v0           #FP:Lcom/m0narx/tweaks/process/fixPermissionsProcess;
    .end local v3           #aDialog:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    :goto_0
    return v7

    .line 255
    :cond_1
    const-string v4, "pref_zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    .line 258
    .restart local v3       #aDialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v2, Lcom/m0narx/tweaks/process/zipAlignProcess;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/m0narx/tweaks/process/zipAlignProcess;-><init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V

    .line 259
    .local v2, ZA:Lcom/m0narx/tweaks/process/zipAlignProcess;
    invoke-virtual {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->start()V

    goto :goto_0

    .line 260
    .end local v2           #ZA:Lcom/m0narx/tweaks/process/zipAlignProcess;
    .end local v3           #aDialog:Lcom/htc/app/HtcProgressDialog;
    :cond_2
    const-string v4, "pref_cache"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 263
    const v5, 0x7f0a00b5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 264
    const v5, 0x7f0a013b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 266
    new-instance v5, Lcom/m0narx/tweaks/fragments/TabAdvanced$1;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced$1;-><init>(Lcom/m0narx/tweaks/fragments/TabAdvanced;)V

    .line 265
    invoke-virtual {v4, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 278
    new-instance v5, Lcom/m0narx/tweaks/fragments/TabAdvanced$2;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced$2;-><init>(Lcom/m0narx/tweaks/fragments/TabAdvanced;)V

    .line 277
    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 283
    :cond_3
    const-string v4, "pref_dalvik"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 286
    const v5, 0x7f0a01b7

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 287
    const v5, 0x7f0a013c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 289
    new-instance v5, Lcom/m0narx/tweaks/fragments/TabAdvanced$3;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced$3;-><init>(Lcom/m0narx/tweaks/fragments/TabAdvanced;)V

    .line 288
    invoke-virtual {v4, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 301
    new-instance v5, Lcom/m0narx/tweaks/fragments/TabAdvanced$4;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragments/TabAdvanced$4;-><init>(Lcom/m0narx/tweaks/fragments/TabAdvanced;)V

    .line 300
    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 306
    :cond_4
    const-string v4, "pref_widgets_fix"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabAdvanced;->mContext:Landroid/content/Context;

    .line 310
    const v5, 0x7f0a0080

    .line 311
    const-string v6, "pkill com.htc.launcher;sed -i \'s/boolean name=\"initialized\" value=\"true\"/boolean name=\"initialized\" value=\"false\"/g\' /data/data/com.htc.launcher/shared_prefs/WidgetScanner.xml;pkill com.htc.launcher;"

    .line 308
    invoke-static {v4, v5, v6, v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 370
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 152
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabAdvanced;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 147
    return-void
.end method
