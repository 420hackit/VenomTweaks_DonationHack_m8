.class public Lcom/m0narx/tweaks/cpu/ZRAM;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "ZRAM.java"


# static fields
.field private static final KEY_DEVS:Ljava/lang/String; = "zram_devs"

.field private static final KEY_SIZE:Ljava/lang/String; = "zram_size"

.field private static final TWEAK_DEVS:Ljava/lang/String; = "tweaks_zram_devs"

.field private static final TWEAK_SIZE:Ljava/lang/String; = "tweaks_zram"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSetZRAMRunnable:Ljava/lang/Runnable;

.field private zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

.field private zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/m0narx/tweaks/cpu/ZRAM$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/cpu/ZRAM$1;-><init>(Lcom/m0narx/tweaks/cpu/ZRAM;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/m0narx/tweaks/cpu/ZRAM$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/cpu/ZRAM$2;-><init>(Lcom/m0narx/tweaks/cpu/ZRAM;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mSetZRAMRunnable:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/cpu/ZRAM;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setZRAMSlider()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 108
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_zram"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, position:I
    if-ne v1, v4, :cond_0

    .line 111
    :try_start_0
    const-string v2, "/sys/block/zram0/disksize"

    invoke-static {v2}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v1, v2, 0x400
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 119
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Mb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v2, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 121
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setEnabled(Z)V

    .line 122
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 115
    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    div-int/lit16 v2, v1, 0x400

    div-int/lit16 v1, v2, 0x400

    goto :goto_0

    .line 121
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getApplyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, ""

    return-object v0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "fs_settings"

    const v2, 0x7f0a019b

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/lib/modules"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, modules:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 39
    :goto_1
    return v2

    .line 34
    :cond_0
    aget-object v0, v4, v3

    .line 35
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zram.ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    const/4 v2, 0x1

    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const-wide/16 v4, 0x7d0

    .line 44
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zram_size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mSetZRAMRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, selectedPos:I
    mul-int/lit16 v2, v0, 0x400

    mul-int/lit16 v1, v2, 0x400

    .line 48
    .local v1, size:I
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_zram"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mSetZRAMRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .end local v0           #selectedPos:I
    .end local v1           #size:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zram_devs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mSetZRAMRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .restart local v0       #selectedPos:I
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_zram_devs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/ZRAM;->setZRAMSlider()V

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mSetZRAMRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zram_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Mb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zram_devs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCurrent()V
    .locals 8

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, count:I
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/block"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, dev:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v3, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 97
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/ZRAM;->setZRAMSlider()V

    .line 100
    return-void

    .line 90
    :cond_1
    aget-object v2, v4, v3

    .line 91
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zram"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected setPreference()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 74
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v1, 0x7f0a01ee

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 75
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v1, "zram_size"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 78
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v1, 0x7f0a01ed

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 79
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v1, "zram_devs"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/ZRAM;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 82
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/ZRAM;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 83
    return-void
.end method
