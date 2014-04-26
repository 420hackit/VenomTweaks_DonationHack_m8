.class public Lcom/m0narx/tweaks/cpu/GPUOC;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "GPUOC.java"


# static fields
.field private static final AVAILABLE_OC_3D:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

.field private static final OC_3D:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

.field private static final SETTING_3D:Ljava/lang/String; = "gpu3d_oc"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private getEntries()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 42
    const-string v3, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

    invoke-static {v3}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, gpuOCs:Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, freqs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 48
    return-object v0

    .line 46
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Mhz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 54
    const-string v2, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

    invoke-static {v2}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, gpuOCs:Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, freqs:[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    const-string v1, "gpu3d_oc"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/cpu/GPUOC;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, setting:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "gpu_oc"

    const v2, 0x7f0a01e1

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpu_available_frequencies"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk;echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string v2, "chmod 444 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, cmd:Ljava/lang/String;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    const-string v1, "gpu3d_oc"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/cpu/GPUOC;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    return v1
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 0
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 78
    return-void
.end method

.method protected setCurrent()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/GPUOC;->findPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-static {v1}, Lcom/m0narx/tweaks/cpu/CPUUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected setPreference()V
    .locals 3

    .prologue
    const v2, 0x7f0a01e2

    .line 28
    new-instance v0, Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/GPUOC;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, gpu3d:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 30
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(I)V

    .line 31
    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(I)V

    .line 32
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/GPUOC;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/GPUOC;->getValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 34
    const-string v1, "gpu3d_oc"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setKey(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/GPUOC;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 37
    return-void
.end method
