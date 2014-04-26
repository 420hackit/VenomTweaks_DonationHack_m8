.class public Lcom/m0narx/tweaks/fragments/minfree_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "minfree_settings.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private final MANUAL:Ljava/lang/String;

.field private final MT:Ljava/lang/String;

.field private final MTU:Ljava/lang/String;

.field private final MTX:Ljava/lang/String;

.field private final PAGE_SIZE:I

.field private PROFILE_MT:Ljava/lang/String;

.field private PROFILE_MTU:Ljava/lang/String;

.field private PROFILE_MTX:Ljava/lang/String;

.field private PROFILE_S:Ljava/lang/String;

.field private final STOCK:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/fragments/minfree_settings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 15
    const-string v0, "8192,10240,12288,14336,16384,20480"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    .line 16
    const-string v0, "2560,4096,6144,7680,8704,10240"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    .line 17
    const-string v0, "1536,2048,3584,5120,8704,10240"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    .line 18
    const-string v0, "512,1024,1280,2048,3072,4096"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    .line 20
    const-string v0, "0"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->STOCK:Ljava/lang/String;

    .line 21
    const-string v0, "1"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->MT:Ljava/lang/String;

    .line 22
    const-string v0, "2"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->MTX:Ljava/lang/String;

    .line 23
    const-string v0, "3"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->MTU:Ljava/lang/String;

    .line 24
    const-string v0, "4"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->MANUAL:Ljava/lang/String;

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PAGE_SIZE:I

    .line 14
    return-void
.end method

.method private refreshProfiles(Ljava/lang/String;)V
    .locals 5
    .parameter "setTo"

    .prologue
    const/4 v4, 0x1

    .line 31
    const-string v2, "minfree_presets"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 32
    .local v1, profiles:Lcom/htc/preference/HtcListPreference;
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 34
    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 56
    :goto_0
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_minfree"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, AbString:Ljava/lang/String;
    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 39
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_5
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_6
    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    const-string v2, "minfree_sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSliders()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_minfree"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, AbString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/fragments/minfree_settings;->setSlidersByString(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_minfree"

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/fragments/minfree_settings;->setMinfreeValues(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->setSlidersByString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMinfreeValues(Ljava/lang/String;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string v1, " > /sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    return-void
.end method

.method private setSlidersByString(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    .line 77
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, vals:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 86
    return-void

    .line 79
    :cond_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit16 v1, v3, 0x400

    .line 80
    .local v1, tempInt:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 81
    invoke-virtual {v3, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 84
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a0161

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 83
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f04000d

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "minfree"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->res:Landroid/content/res/Resources;

    .line 162
    const-string v2, "minfree_presets"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/minfree_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshSliders()V

    .line 173
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 174
    return-void

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 168
    .local v1, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setMax(I)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 170
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 169
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/minfree_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v12, 0x1

    .line 102
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, Pval:Ljava/lang/String;
    const-string v7, "minfree_presets"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 106
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshSliders()V

    .line 143
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/m0narx/tweaks/fragments/minfree_settings;->setMinfreeValues(Ljava/lang/String;)V

    .line 144
    :goto_2
    return v12

    .line 108
    :cond_2
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MT:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 110
    :cond_3
    const-string v7, "2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTX:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 112
    :cond_4
    const-string v7, "3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_MTU:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 114
    :cond_5
    const-string v7, "4"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    const-string v7, "minfree_presets"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    .line 116
    .local v4, profiles:Lcom/htc/preference/HtcListPreference;
    const-string v7, "4"

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    const-string v7, "minfree_sliders"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 118
    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 123
    .end local v4           #profiles:Lcom/htc/preference/HtcListPreference;
    :cond_6
    const-string v7, "value_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    const-string v6, ""

    .line 125
    .local v6, str:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    const/4 v7, 0x6

    if-le v2, v7, :cond_7

    .line 141
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_minfree"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 126
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "value_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 128
    invoke-virtual {v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v5

    .line 129
    .local v5, progress:I
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 133
    :cond_8
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 134
    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->res:Landroid/content/res/Resources;

    const v9, 0x7f0a0161

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual {v7, v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 136
    mul-int/lit16 v7, v5, 0x400

    div-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 138
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit16 v8, v5, 0x400

    div-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 4
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->res:Landroid/content/res/Resources;

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public onSettingsReset()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_minfree"

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/minfree_settings;->PROFILE_S:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshSliders()V

    .line 197
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/minfree_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 156
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
