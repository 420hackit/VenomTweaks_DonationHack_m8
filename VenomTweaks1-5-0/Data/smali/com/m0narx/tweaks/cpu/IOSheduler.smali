.class public Lcom/m0narx/tweaks/cpu/IOSheduler;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "IOSheduler.java"


# static fields
.field private static final IO_SCHEDULER:Ljava/lang/String; = "/sys/block/mmcblk0/queue/scheduler"

.field private static final SETTING:Ljava/lang/String; = "io_sheduller"


# instance fields
.field private strShedEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private getPref()Lcom/htc/preference/HtcListPreference;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method private setIOShedullerEntries()V
    .locals 6

    .prologue
    .line 48
    const-string v4, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v4}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, sheds:Ljava/lang/String;
    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, values:[Ljava/lang/String;
    const-string v2, ""

    .line 57
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 64
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 58
    :cond_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const-string v1, "io_sheduller"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, setting:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "fs_settings"

    const v2, 0x7f0a019b

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 27
    const-string v0, "io_sheduller"

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/cpu/IOSheduler;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->strShedEntries:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 0
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 34
    return-void
.end method

.method protected setCurrent()V
    .locals 4

    .prologue
    .line 72
    const-string v2, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v2}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, sheds:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 74
    :cond_0
    aget-object v2, v1, v0

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getPref()Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setPreference()V
    .locals 3

    .prologue
    const v2, 0x7f0a0195

    .line 38
    new-instance v0, Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/IOSheduler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, pref:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 44
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;->setIOShedullerEntries()V

    .line 45
    return-void
.end method
