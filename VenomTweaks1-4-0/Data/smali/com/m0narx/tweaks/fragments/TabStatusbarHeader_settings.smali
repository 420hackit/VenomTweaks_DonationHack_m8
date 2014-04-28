.class public Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabStatusbarHeader_settings.java"


# static fields
.field private static final PICKER_GET_CARRIER_APP:I = 0x2

.field private static final PICKER_GET_SETTINGS_APP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private setClockInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_headerclock_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "headerclock_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 178
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 179
    const-string v0, "headerclock_ampm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "headerclock_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 186
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 187
    const-string v0, "headerclock_ampm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setDateInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 195
    const-string v0, "statusbar_date_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 196
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "statusbar_date_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 199
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setHeaderInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_extended_statusbartext"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const-string v0, "extended_statusbartext_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 163
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 164
    const-string v0, "extended_statusbartext_showicon"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 165
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "extended_statusbartext_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 168
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 169
    const-string v0, "extended_statusbartext_showicon"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 170
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f040018

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "statusbarcaption"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    const-string v0, "extended_statusbartext"

    .line 129
    const-string v1, "tweaks_extended_statusbartext"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 128
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "extended_statusbartext_color"

    .line 131
    const-string v1, "tweaks_extended_statusbartext_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 132
    const v3, -0x80809

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 130
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "hide_settings"

    const-string v1, "tweaks_hide_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    const-string v0, "hide_edit"

    const-string v1, "tweaks_hide_edit"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    const-string v0, "extended_statusbartext_showicon"

    .line 137
    const-string v1, "tweaks_extended_statusbartext_showicon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    const-string v0, "systemui_settings"

    const-string v1, "tweaks_systemui_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    const-string v0, "hide_date"

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    const-string v0, "headerclock_style"

    const-string v1, "tweaks_headerclock_style"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 143
    const-string v0, "headerclock_color"

    const-string v1, "tweaks_headerclock_color"

    .line 144
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 143
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 145
    const-string v0, "headerclock_ampm"

    .line 146
    const-string v1, "tweaks_headerclock_ampm"

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 147
    const-string v0, "statusbar_date_color"

    const-string v1, "tweaks_statusbar_date_color"

    .line 148
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0x585859

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 151
    const-string v0, "show_headerclockseconds"

    const-string v1, "tweaks_show_headerclockseconds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setHeaderInfo()V

    .line 155
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setClockInfo()V

    .line 156
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setDateInfo()V

    .line 157
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 24
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 27
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings_package"

    .line 30
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings_activity"

    .line 32
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    const-string v0, "systemui_settings"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 35
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier_package"

    .line 39
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier_activity"

    .line 41
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    const-string v0, "systemui_header"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 44
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 62
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    :cond_0
    const-string v5, "extended_statusbartext"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext"

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 68
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setHeaderInfo()V

    :cond_1
    :goto_0
    move v3, v4

    .line 117
    :goto_1
    return v3

    .line 71
    :cond_2
    const-string v5, "extended_statusbartext_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext_color"

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 72
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 74
    :cond_3
    const-string v5, "extended_statusbartext_showicon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 75
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext_showicon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 76
    :cond_4
    const-string v5, "hide_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 77
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 81
    :cond_5
    const-string v5, "hide_edit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 82
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_edit"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 84
    :cond_6
    const-string v5, "systemui_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 86
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 90
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 92
    :cond_8
    const-string v5, "systemui_header"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 94
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 98
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_9
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_carrier"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 100
    :cond_a
    const-string v3, "hide_date"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_hide_date"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setDateInfo()V

    goto/16 :goto_0

    .line 103
    :cond_b
    const-string v3, "headerclock_style"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 104
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setClockInfo()V

    goto/16 :goto_0

    .line 106
    :cond_c
    const-string v3, "headerclock_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 107
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_color"

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 107
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 109
    :cond_d
    const-string v3, "headerclock_ampm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 110
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_ampm"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 111
    :cond_e
    const-string v3, "statusbar_date_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 112
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_date_color"

    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 112
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 114
    :cond_f
    const-string v3, "show_headerclockseconds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_headerclockseconds"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 221
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setHeaderInfo()V

    .line 226
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setClockInfo()V

    .line 227
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setDateInfo()V

    .line 229
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 214
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 215
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 58
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 53
    return-void
.end method
