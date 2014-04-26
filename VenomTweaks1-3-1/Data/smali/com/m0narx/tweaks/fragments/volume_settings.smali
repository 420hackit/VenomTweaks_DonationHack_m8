.class public Lcom/m0narx/tweaks/fragments/volume_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "volume_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private resetValues()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x7

    .line 174
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_voice_call"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_system"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_ring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_music"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_alarm"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_notification"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_bluetooth_volume"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setSliders()V

    .line 184
    return-void
.end method

.method private setCustomSteps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_volume_steps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "volumesteps_manual"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "volumesteps_manual"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setSliders()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/16 v4, 0xf

    const/4 v3, 0x7

    .line 94
    const-string v0, "volume_voice_call"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_voice_call"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    const-string v0, "volume_system"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_system"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    const-string v0, "volume_ring"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_ring"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v0, "volume_music"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_music"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const-string v0, "volume_alarm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_alarm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    const-string v0, "volume_notification"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    const-string v0, "volume_bluetooth_volume"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_bluetooth_volume"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    const-string v0, "volume_voice_call"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_voice_call"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 103
    const-string v0, "volume_system"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_system"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 104
    const-string v0, "volume_ring"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_ring"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 105
    const-string v0, "volume_music"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_music"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 106
    const-string v0, "volume_alarm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_alarm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 107
    const-string v0, "volume_notification"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 108
    const-string v0, "volume_bluetooth_volume"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_volume_bluetooth_volume"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f04001c

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "volume_steps"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x7

    .line 68
    const-string v0, "enable_volumesteps"

    const-string v1, "tweaks_volume_steps"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v0, "volume_voice_call"

    const-string v1, "tweaks_volume_voice_call"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 71
    const-string v0, "volume_system"

    const-string v1, "tweaks_volume_system"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 72
    const-string v0, "volume_ring"

    const-string v1, "tweaks_volume_ring"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 73
    const-string v0, "volume_music"

    const-string v1, "tweaks_volume_music"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 74
    const-string v0, "volume_alarm"

    const-string v1, "tweaks_volume_alarm"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 75
    const-string v0, "volume_notification"

    const-string v1, "tweaks_volume_notification"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 76
    const-string v0, "volume_bluetooth_volume"

    const-string v1, "tweaks_volume_bluetooth_volume"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/volume_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 79
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setSliders()V

    .line 80
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setCustomSteps()V

    .line 82
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 126
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    :cond_0
    const-string v4, "enable_volumesteps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_steps"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->resetValues()V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setCustomSteps()V

    move v2, v3

    .line 168
    :cond_2
    :goto_0
    return v2

    .line 139
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 143
    const-string v2, "volume_voice_call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_voice_call"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    move v2, v3

    .line 168
    goto :goto_0

    .line 146
    :cond_5
    const-string v2, "volume_system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 147
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_system"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 149
    :cond_6
    const-string v2, "volume_ring"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 150
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_ring"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 152
    :cond_7
    const-string v2, "volume_music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_music"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 155
    :cond_8
    const-string v2, "volume_alarm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_alarm"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 158
    :cond_9
    const-string v2, "volume_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 159
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_notification"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 161
    :cond_a
    const-string v2, "volume_bluetooth_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_volume_bluetooth_volume"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 188
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->resetValues()V

    .line 195
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setSliders()V

    .line 196
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->setCustomSteps()V

    .line 198
    return-void
.end method

.method public setHeader()V
    .locals 4

    .prologue
    .line 48
    const v2, 0x7f0a0024

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/volume_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 49
    .local v0, ab:Lcom/htc/widget/ActionBarContainer;
    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/volume_settings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 52
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/volume_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v2, Lcom/m0narx/tweaks/fragments/volume_settings$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/volume_settings$1;-><init>(Lcom/m0narx/tweaks/fragments/volume_settings;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/volume_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 63
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
