.class public Lcom/m0narx/tweaks/fragments/kernel;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "kernel.java"


# static fields
.field public static final BLN:Ljava/lang/String; = "/sys/class/leds/button-backlight/blink_buttons"

.field public static final D2W:Ljava/lang/String; = "/sys/android_touch/doubletap2wake"

.field public static final FASTCHARGE:Ljava/lang/String; = "/sys/kernel/fast_charge/force_fast_charge"

.field public static final L2M:Ljava/lang/String; = "/sys/android_touch/logo2menu"

.field public static final L2W:Ljava/lang/String; = "/sys/android_touch/logo2wake"

.field public static final PD:Ljava/lang/String; = "/sys/android_touch/pocket_detect"

.field public static final S2WFiles:[Ljava/lang/String; = null

.field public static final VIB_STRENGTH:Ljava/lang/String; = "/sys/android_touch/vib_strength"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    const-string v2, "/sys/android_touch/sweep2wake/s2w_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 27
    const-string v2, "/sys/android_touch/sweep2wake"

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/m0narx/tweaks/fragments/kernel;->S2WFiles:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private checkBLN()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, file:Ljava/io/File;
    const-string v3, "bln"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 164
    .local v1, pref:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 167
    const-string v3, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    .local v2, value:I
    if-ne v2, v5, :cond_0

    .line 170
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 177
    .end local v2           #value:I
    :goto_0
    return-void

    .line 172
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 174
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 175
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private checkD2W()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/doubletap2wake"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, file:Ljava/io/File;
    const-string v3, "dt2wake"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 85
    .local v1, pref:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 88
    const-string v3, "/sys/android_touch/doubletap2wake"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    .local v2, value:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    .end local v2           #value:I
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 95
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkFastCharge()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, file:Ljava/io/File;
    const-string v3, "fastcharge"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 184
    .local v1, pref:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 187
    const-string v3, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    .local v2, value:I
    if-ne v2, v5, :cond_0

    .line 190
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 197
    .end local v2           #value:I
    :goto_0
    return-void

    .line 192
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 194
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 195
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private checkL2M()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/logo2menu"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, file:Ljava/io/File;
    const-string v3, "logo2menu"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 144
    .local v1, pref:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 147
    const-string v3, "/sys/android_touch/logo2menu"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 149
    .local v2, value:I
    if-ne v2, v5, :cond_0

    .line 150
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 157
    .end local v2           #value:I
    :goto_0
    return-void

    .line 152
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 154
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 155
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private checkL2W()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/logo2wake"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, file:Ljava/io/File;
    const-string v3, "logo2wake"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 104
    .local v1, pref:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 107
    const-string v3, "/sys/android_touch/logo2wake"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    .local v2, value:I
    if-ne v2, v5, :cond_0

    .line 110
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 117
    .end local v2           #value:I
    :goto_0
    return-void

    .line 112
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 114
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 115
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private checkPD()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/pocket_detect"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, file:Ljava/io/File;
    const-string v3, "pocket_detection"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 124
    .local v1, pref:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 127
    const-string v3, "/sys/android_touch/pocket_detect"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    .local v2, value:I
    if-ne v2, v5, :cond_0

    .line 130
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 137
    .end local v2           #value:I
    :goto_0
    return-void

    .line 132
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 134
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 135
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private checkSweep2Wake()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {}, Lcom/m0narx/tweaks/fragments/kernel;->getS2WFile()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, s2w:Ljava/lang/String;
    const-string v3, "sweep_wake"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 45
    .local v1, s2w_pref:Lcom/htc/preference/HtcListPreference;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 48
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_sweep_wake"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 53
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    .local v2, value:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_sweep_wake"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private checkVibStrength()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/android_touch/vib_strength"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, file:Ljava/io/File;
    const-string v2, "button_vibrations"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/kernel;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 204
    .local v1, pref:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 207
    const-string v2, "/sys/android_touch/vib_strength"

    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/kernel;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static getS2WFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/m0narx/tweaks/fragments/kernel;->S2WFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 78
    const-string v2, ""

    :goto_1
    return-object v2

    .line 73
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/m0narx/tweaks/fragments/kernel;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, s2w:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v2, Lcom/m0narx/tweaks/fragments/kernel;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setShortPressLockscreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_sweep_wake"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_back_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_home_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    :cond_0
    return-void
.end method

.method private setSweep2Wake()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_sweep_wake"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    const-string v0, "ro.htc.framework.screencapture"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "setprop ro.htc.framework.screencapture false"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 349
    const v0, 0x7f04000a

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    const-string v0, "kernel"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    const-string v0, "sweep_wake"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v0, "dt2wake"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v0, "logo2wake"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 302
    const-string v0, "pocket_detection"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 303
    const-string v0, "button_vibrations"

    const-string v1, ""

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v0, "logo2menu"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    const-string v0, "bln"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 307
    const-string v0, "fastcharge"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 308
    const-string v0, "use_kernel_settings"

    const-string v1, "tweaks_use_kernel_settings"

    .line 309
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 308
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/kernel;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 311
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkD2W()V

    .line 312
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkL2W()V

    .line 313
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkPD()V

    .line 314
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkL2M()V

    .line 315
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkBLN()V

    .line 316
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkFastCharge()V

    .line 317
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkVibStrength()V

    .line 319
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->checkSweep2Wake()V

    .line 321
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->setSweep2Wake()V

    .line 323
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    .line 226
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, PKey:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    if-ne v3, v4, :cond_0

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    :cond_0
    const-string v3, "sweep_wake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    invoke-static {}, Lcom/m0narx/tweaks/fragments/kernel;->getS2WFile()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, file:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->setShortPressLockscreen()V

    .line 241
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_sweep_wake"

    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 241
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/kernel;->setSweep2Wake()V

    .line 272
    .end local v2           #file:Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 245
    :cond_2
    const-string v3, "dt2wake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/doubletap2wake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_d2wake"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 248
    :cond_3
    const-string v3, "logo2wake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/logo2wake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_logo2wake"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 251
    :cond_4
    const-string v3, "pocket_detection"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/pocket_detect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pocket_detection"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 254
    :cond_5
    const-string v3, "logo2menu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/logo2menu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_logo2menu"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 257
    :cond_6
    const-string v3, "bln"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/class/leds/button-backlight/blink_buttons"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_bln"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 260
    :cond_7
    const-string v3, "fastcharge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_fastcharge"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 263
    :cond_8
    const-string v3, "button_vibrations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/android_touch/vib_strength"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_vib_strength"

    .line 267
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 266
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 268
    :cond_9
    const-string v3, "use_kernel_settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/kernel;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_use_kernel_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 40
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 361
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 366
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
