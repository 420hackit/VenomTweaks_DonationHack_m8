.class public Lcom/m0narx/tweaks/cpu/Governor;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "Governor.java"


# static fields
.field private static final AVAILABLE_GOVERNORS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

.field private static final CURRENT_GOVERNOR:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_governor"

.field private static final SETTING:Ljava/lang/String; = "governor"


# instance fields
.field private strGovEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    new-instance v1, Lvenom/common/settings;

    invoke-direct {v1}, Lvenom/common/settings;-><init>()V

    .line 97
    .local v1, conf:Lvenom/common/settings;
    const-string v0, ""

    .line 98
    .local v0, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, v1, Lvenom/common/settings;->CPU_CORES:I

    if-lt v2, v3, :cond_0

    .line 105
    return-object v0

    .line 99
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

    .line 100
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

    .line 101
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

    .line 102
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

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private getPref()Lcom/htc/preference/HtcListPreference;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/Governor;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method private setGovenorEntries()V
    .locals 5

    .prologue
    .line 24
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v3}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    .line 25
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/cpu/Governor;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, values:[Ljava/lang/String;
    const-string v1, ""

    .line 29
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 36
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Governor;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 39
    return-void

    .line 30
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v1, "governor"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/Governor;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, setting:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_governor"

    invoke-direct {p0, v1, v0}, Lcom/m0narx/tweaks/cpu/Governor;->getAllCoresCMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "core_settings"

    const v2, 0x7f0a0191

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 53
    const-string v0, "governor"

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/cpu/Governor;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    const-string v0, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_governor"

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/cpu/CPUUtils;->setAllCores(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 0
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 60
    return-void
.end method

.method protected setCurrent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v2, "/sys/devices/system/cpu/cpu%1$d/cpufreq/scaling_governor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, gov:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Governor;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Governor;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Governor;->strGovEntries:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Governor;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setPreference()V
    .locals 3

    .prologue
    const v2, 0x7f0a0194

    .line 64
    new-instance v0, Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/Governor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, pref:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 66
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(I)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/Governor;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 70
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Governor;->setGovenorEntries()V

    .line 71
    return-void
.end method
