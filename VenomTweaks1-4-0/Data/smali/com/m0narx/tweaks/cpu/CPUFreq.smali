.class public Lcom/m0narx/tweaks/cpu/CPUFreq;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "CPUFreq.java"


# static fields
.field private static final MAX_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_max_freq"

.field private static final MIN_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_min_freq"

.field private static final SCROFF_MAX_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%1$d/cpufreq/screen_off_max_freq"

.field private static final SETTING_MAX:Ljava/lang/String; = "max_freq"

.field private static final SETTING_MIN:Ljava/lang/String; = "min_freq"

.field private static final SETTING_OFF:Ljava/lang/String; = "scroff_max_freq"


# instance fields
.field private final AVALIABLE_FREQ:Ljava/lang/String;

.field private avaliableFreqs:[Ljava/lang/String;

.field private max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

.field private min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

.field private scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->AVALIABLE_FREQ:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    new-instance v1, Lvenom/common/settings;

    invoke-direct {v1}, Lvenom/common/settings;-><init>()V

    .line 155
    .local v1, conf:Lvenom/common/settings;
    const-string v0, ""

    .line 156
    .local v0, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, v1, Lvenom/common/settings;->CPU_CORES:I

    if-lt v2, v3, :cond_0

    .line 163
    return-object v0

    .line 157
    :cond_0
    new-instance v3, Ljava/io/File;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "chmod 666 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    const-string v4, "echo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string v4, "chmod 444 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private getCurrentFreqIdx(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 106
    invoke-static {p1}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, freq:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 112
    const/4 v1, 0x0

    .end local v1           #i:I
    :cond_0
    return v1

    .line 108
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, cmd:Ljava/lang/String;
    const-string v2, "min_freq"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, setting:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_min_freq"

    invoke-direct {p0, v3, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    const-string v2, "max_freq"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_max_freq"

    invoke-direct {p0, v3, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_1
    const-string v2, "scroff_max_freq"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/sys/devices/system/cpu/cpu%1$d/cpufreq/screen_off_max_freq"

    invoke-direct {p0, v3, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_2
    return-object v0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "core_settings"

    const v2, 0x7f0a0191

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "min_freq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, val:I
    const-string v2, "min_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/cpu/CPUFreq;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v0, v2, 0x3e8

    .line 46
    .local v0, freq:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_min_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/m0narx/tweaks/cpu/CPUUtils;->setAllCores(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0           #freq:I
    .end local v1           #val:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "max_freq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .restart local v1       #val:I
    const-string v2, "max_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/cpu/CPUFreq;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v0, v2, 0x3e8

    .line 52
    .restart local v0       #freq:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_max_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/m0narx/tweaks/cpu/CPUUtils;->setAllCores(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0           #freq:I
    .end local v1           #val:I
    :cond_2
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scroff_max_freq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    .restart local v1       #val:I
    const-string v2, "scroff_max_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/cpu/CPUFreq;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v0, v2, 0x3e8

    .line 58
    .restart local v0       #freq:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/screen_off_max_freq"

    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/m0narx/tweaks/cpu/CPUUtils;->setAllCores(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "min_freq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 68
    .local v0, freq:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    .end local v0           #freq:I
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_freq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 71
    .restart local v0       #freq:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    .end local v0           #freq:I
    :cond_2
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroff_max_freq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 74
    .restart local v0       #freq:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCurrent()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_min_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 119
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_max_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 120
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/screen_off_max_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 122
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_min_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 123
    .local v0, freq:I
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_max_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 126
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/screen_off_max_freq"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getCurrentFreqIdx(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 129
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method protected setPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v1}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, freqs:Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 84
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 85
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "min_freq"

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 88
    new-instance v1, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 89
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v2, 0x7f0a0193

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 90
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "max_freq"

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 94
    new-instance v1, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 95
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v2, 0x7f0a01a3

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 96
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v2, "scroff_max_freq"

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->avaliableFreqs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 100
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->min_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 101
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 102
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUFreq;->scroff_max_freq:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/CPUFreq;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 103
    return-void
.end method
