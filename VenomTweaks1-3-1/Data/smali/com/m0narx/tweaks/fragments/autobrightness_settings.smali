.class public Lcom/m0narx/tweaks/fragments/autobrightness_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "autobrightness_settings.java"


# instance fields
.field private final AB_MODE_LOWER:Ljava/lang/String;

.field private final AB_MODE_LOWEST:Ljava/lang/String;

.field private final AB_MODE_MANUAL:Ljava/lang/String;

.field private final AB_MODE_NORMAL:Ljava/lang/String;

.field private PROFILE_LOWER:Ljava/lang/String;

.field private PROFILE_LOWEST:Ljava/lang/String;

.field private PROFILE_NORMAL:Ljava/lang/String;

.field private final RES_DEFAULT:I

.field private final RES_SENSOR:I

.field private lightSensor:Landroid/hardware/Sensor;

.field private listener:Landroid/hardware/SensorEventListener;

.field private mHandler:Landroid/os/Handler;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorVals:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 20
    const v0, 0x1070020

    iput v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->RES_DEFAULT:I

    .line 21
    const v0, 0x107001f

    iput v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->RES_SENSOR:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    .line 24
    const-string v0, "36,36,36,70,97,122,150,178,207,255"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    .line 25
    const-string v0, "16,16,16,50,77,102,130,158,187,255"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->AB_MODE_NORMAL:Ljava/lang/String;

    .line 28
    const-string v0, "1"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->AB_MODE_LOWER:Ljava/lang/String;

    .line 29
    const-string v0, "2"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->AB_MODE_LOWEST:Ljava/lang/String;

    .line 30
    const-string v0, "3"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->AB_MODE_MANUAL:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private getStringFromIntArrayRes(I)Ljava/lang/String;
    .locals 5
    .parameter "ResId"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 86
    .local v0, ABArr:[I
    const-string v2, ""

    .line 87
    .local v2, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 94
    return-object v2

    .line 88
    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private refreshProfiles(Ljava/lang/String;)V
    .locals 5
    .parameter "setTo"

    .prologue
    const/4 v4, 0x1

    .line 51
    const-string v2, "brightness_presets"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 52
    .local v1, profiles:Lcom/htc/preference/HtcListPreference;
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 54
    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 71
    :goto_0
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_autobrightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, AbString:Ljava/lang/String;
    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 58
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 67
    const-string v2, "sliders"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSliders()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_autobrightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, AbString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->setSlidersByString(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->setSlidersByString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSlidersByString(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 98
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, vals:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 107
    return-void

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 102
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 101
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "level_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 105
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private valid(Ljava/lang/String;I)Z
    .locals 11
    .parameter "pKey"
    .parameter "value"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 171
    const/4 v5, 0x0

    .line 173
    .local v5, rValue:Z
    const-string v7, "_"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, vals:[Ljava/lang/String;
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    .local v0, key:I
    if-eq v0, v9, :cond_0

    if-ne v0, v10, :cond_1

    .line 178
    :cond_0
    const/4 v5, 0x1

    .line 180
    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 181
    .local v3, prefKey:I
    add-int/lit8 v1, v0, 0x1

    .line 183
    .local v1, nextKey:I
    const/4 v4, 0x0

    .line 184
    .local v4, prevValue:I
    const/4 v2, 0x0

    .line 186
    .local v2, nextValue:I
    if-eq v0, v9, :cond_2

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "level_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 188
    invoke-virtual {v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v4

    .line 190
    :cond_2
    if-eq v0, v10, :cond_3

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "level_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 191
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 192
    invoke-virtual {v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v2

    .line 194
    :cond_3
    if-gt p2, v4, :cond_4

    if-ne v0, v9, :cond_6

    :cond_4
    if-lt p2, v2, :cond_5

    if-ne v0, v10, :cond_6

    .line 195
    :cond_5
    const/4 v5, 0x1

    .line 201
    :goto_0
    return v5

    .line 196
    :cond_6
    if-le p2, v2, :cond_7

    .line 197
    const/4 v5, 0x0

    goto :goto_0

    .line 199
    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 276
    const v0, 0x7f040001

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "autobrightness"

    return-object v0
.end method

.method public init()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 223
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0180

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, titleStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorVals:[I

    .line 229
    const-string v4, "brightness_presets"

    const-string v5, ""

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 249
    const v4, 0x1070020

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getStringFromIntArrayRes(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_NORMAL:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 253
    const v5, 0x7f0a017e

    .line 252
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, info:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->mContext:Landroid/content/Context;

    .line 256
    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 255
    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    .line 257
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    .line 258
    new-instance v4, Lcom/m0narx/tweaks/fragments/autobrightness_settings$1;

    invoke-direct {v4, p0, v1}, Lcom/m0narx/tweaks/fragments/autobrightness_settings$1;-><init>(Lcom/m0narx/tweaks/fragments/autobrightness_settings;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    .line 267
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    .line 268
    const/4 v7, 0x3

    .line 267
    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 270
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshSliders()V

    .line 271
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 272
    return-void

    .line 231
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorVals:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "level_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 235
    .local v2, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorVals:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v2, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setMax(I)V

    .line 244
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "level_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 245
    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 244
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 239
    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "level_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 241
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
    const v4, 0x7f0a0181

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setTitle(I)V

    .line 242
    invoke-virtual {v2, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setMax(I)V

    goto :goto_1
.end method

.method public onMyProgressChanged(Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;I)V
    .locals 0
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 218
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 42
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "o"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, PKey:Ljava/lang/String;
    const-string v10, "brightness_presets"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_autobrightness"

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshSliders()V

    .line 166
    :cond_1
    :goto_1
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 126
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 127
    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_autobrightness"

    iget-object v12, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 129
    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_autobrightness"

    iget-object v12, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 133
    :cond_4
    const-string v10, "level_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v0, v10}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->valid(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 136
    const/4 v10, 0x0

    goto :goto_2

    .line 138
    :cond_5
    const-string v7, ""

    .line 139
    .local v7, str:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 140
    .local v8, value:I
    if-nez v8, :cond_6

    .line 141
    const/4 v8, 0x1

    .line 143
    :cond_6
    const v10, 0x3ec8c8c9

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    float-to-double v4, v10

    .line 144
    .local v4, newbrightness:D
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 145
    .local v9, window:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 146
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    double-to-float v10, v4

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 147
    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 149
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3
    const/16 v10, 0xa

    if-le v1, v10, :cond_7

    .line 164
    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_autobrightness"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 150
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "level_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 152
    invoke-virtual {v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v6

    .line 153
    .local v6, progress:I
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 156
    :cond_8
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .line 157
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 156
    invoke-virtual {v10, v11}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 159
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->lightSensor:Landroid/hardware/Sensor;

    .line 47
    const/4 v3, 0x3

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 286
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public onSettingsReset()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_autobrightness"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshSliders()V

    .line 294
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 212
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/autobrightness_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 213
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
