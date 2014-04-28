.class public Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabStatusbarContacts_settings.java"


# instance fields
.field private final SIZE_MAX:I

.field private final SIZE_MIN:I

.field private final SIZE_STEP:I

.field private final VIBRATION_MAX:I

.field private final VIBRATION_MIN:I

.field private final VIBRATION_STEP:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    const/16 v1, 0xa

    .line 14
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->SIZE_MIN:I

    .line 17
    iput v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->SIZE_MAX:I

    .line 18
    iput v1, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->SIZE_STEP:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->VIBRATION_MIN:I

    .line 21
    iput v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->VIBRATION_MAX:I

    .line 22
    iput v1, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->VIBRATION_STEP:I

    .line 14
    return-void
.end method

.method private setSliders()V
    .locals 7

    .prologue
    .line 112
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_contact_widget_size"

    const/16 v5, 0xc8

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, val:Ljava/lang/String;
    const-string v3, "contacts_size"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 116
    .local v0, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v3, -0xa

    .line 121
    .local v1, progress:I
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 127
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_contact_widget_vibrator_duration"

    const-wide/16 v5, 0x32

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v3, "contacts_vibration_strength"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 130
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    const/16 v3, 0x19

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v3, -0x5

    .line 135
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 138
    return-void
.end method

.method private setVibration()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    const-string v1, "contacts_vibration_strength"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 103
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_contact_widget_vibrator"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f040006

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "contacts_settings"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contacts_widget_setup"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnClickListener([Ljava/lang/String;)V

    .line 81
    const-string v0, "contacts_size"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 83
    const-string v0, "contacts_vibration_strength"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 86
    const-string v0, "contacts_corners"

    const-string v1, "tweaks_contact_widget_round_corners"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    const-string v0, "contacts_use_longclick"

    const-string v1, "tweaks_contact_widget_longClick"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    const-string v0, "contacts_add_action"

    const-string v1, "tweaks_contact_widget_add_icon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v0, "contacts_use_vibration"

    const-string v1, "tweaks_contact_widget_vibrator"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setVibration()V

    .line 94
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setSliders()V

    .line 96
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    if-ne v3, v5, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 40
    .local v1, bvar:Ljava/lang/Integer;
    const-string v3, "contacts_size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, val:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_size"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    .end local v2           #val:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 38
    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 47
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_2
    const-string v3, "contacts_vibration_strength"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .restart local v2       #val:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_vibrator_duration"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    .line 53
    .end local v2           #val:Ljava/lang/String;
    :cond_3
    const-string v3, "contacts_corners"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_round_corners"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 55
    :cond_4
    const-string v3, "contacts_use_longclick"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_longClick"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 58
    :cond_5
    const-string v3, "contacts_add_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 59
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_add_icon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 61
    :cond_6
    const-string v3, "contacts_use_vibration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_contact_widget_vibrator"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setVibration()V

    goto :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "contacts_widget_setup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v1, contacts:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->startActivity(Landroid/content/Intent;)V

    .line 194
    .end local v1           #contacts:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 144
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 159
    const-string v1, "contacts_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    add-int/lit8 v1, p3, 0xa

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0           #val:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v1, "contacts_vibration_strength"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    add-int/lit8 v1, p3, 0x5

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0       #val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setVibration()V

    .line 181
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setSliders()V

    .line 182
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 183
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0a0380

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 74
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->updateHeader()V

    .line 33
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 28
    :cond_0
    return-void
.end method
