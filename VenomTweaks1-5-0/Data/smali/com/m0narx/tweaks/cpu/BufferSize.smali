.class public Lcom/m0narx/tweaks/cpu/BufferSize;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "BufferSize.java"


# static fields
.field private static final READ_AHEAD:[Ljava/lang/String; = null

.field private static final SETTING:Ljava/lang/String; = "readahead"


# instance fields
.field private final increment_readahead:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys/block/mmcblk0/bdi/read_ahead_kb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 12
    const-string v2, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    aput-object v2, v0, v1

    .line 11
    sput-object v0, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x80

    iput v0, p0, Lcom/m0narx/tweaks/cpu/BufferSize;->increment_readahead:I

    .line 19
    return-void
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    const-string v3, "readahead"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/cpu/BufferSize;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, setting:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    const-string v2, "128"

    .line 74
    :cond_1
    const-string v0, ""

    .line 75
    .local v0, cmd:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 78
    return-object v0

    .line 76
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "echo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "fs_settings"

    const v2, 0x7f0a019b

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 29
    .local v3, selectedPos:I
    mul-int/lit16 v2, v3, 0x80

    .line 30
    .local v2, newValue:I
    const-string v4, "readahead"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/m0narx/tweaks/cpu/BufferSize;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 32
    const-string v0, ""

    .line 33
    .local v0, CMD:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 36
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    const/4 v4, 0x1

    return v4

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "echo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 42
    add-int/lit8 v1, p2, 0x1

    .line 43
    .local v1, selectedPos:I
    mul-int/lit16 v0, v1, 0x80

    .line 44
    .local v0, newValue:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/BufferSize;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method protected setCurrent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/cpu/BufferSize;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 59
    .local v0, Pbuff:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    sget-object v2, Lcom/m0narx/tweaks/cpu/BufferSize;->READ_AHEAD:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, buff:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    const-string v1, "128"

    .line 63
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method protected setPreference()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/BufferSize;->mContext:Landroid/content/Context;

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    .line 50
    .local v0, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 51
    const-string v1, "readahead"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/BufferSize;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 54
    return-void
.end method
