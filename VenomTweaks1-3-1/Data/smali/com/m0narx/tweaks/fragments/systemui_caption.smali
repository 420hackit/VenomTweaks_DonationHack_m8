.class public Lcom/m0narx/tweaks/fragments/systemui_caption;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "systemui_caption.java"


# static fields
.field private static final PICKER_GET_CARRIER_APP:I = 0x2

.field private static final PICKER_GET_SETTINGS_APP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private setClockInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_headerclock_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "headerclock_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 177
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 178
    const-string v0, "headerclock_ampm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "headerclock_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 185
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 186
    const-string v0, "headerclock_ampm"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setDateInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 194
    const-string v0, "statusbar_date_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 195
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "statusbar_date_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 198
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setHeaderInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_extended_statusbartext"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "extended_statusbartext_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 162
    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 163
    const-string v0, "extended_statusbartext_showicon"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 164
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "extended_statusbartext_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 167
    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 168
    const-string v0, "extended_statusbartext_showicon"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 169
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 203
    const v0, 0x7f040018

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "statusbarcaption"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    const-string v0, "extended_statusbartext"

    .line 128
    const-string v1, "tweaks_extended_statusbartext"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 127
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 129
    const-string v0, "extended_statusbartext_color"

    .line 130
    const-string v1, "tweaks_extended_statusbartext_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 131
    const v3, -0x80809

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "hide_settings"

    const-string v1, "tweaks_hide_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    const-string v0, "hide_edit"

    const-string v1, "tweaks_hide_edit"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    const-string v0, "extended_statusbartext_showicon"

    .line 136
    const-string v1, "tweaks_extended_statusbartext_showicon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 135
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    const-string v0, "systemui_settings"

    const-string v1, "tweaks_systemui_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    const-string v0, "hide_date"

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 141
    const-string v0, "headerclock_style"

    const-string v1, "tweaks_headerclock_style"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v0, "headerclock_color"

    const-string v1, "tweaks_headerclock_color"

    .line 143
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 142
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 144
    const-string v0, "headerclock_ampm"

    .line 145
    const-string v1, "tweaks_headerclock_ampm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v0, "statusbar_date_color"

    const-string v1, "tweaks_statusbar_date_color"

    .line 147
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0x585859

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 150
    const-string v0, "show_headerclockseconds"

    const-string v1, "tweaks_show_headerclockseconds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui_caption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 153
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setHeaderInfo()V

    .line 154
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setClockInfo()V

    .line 155
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setDateInfo()V

    .line 156
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 23
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 26
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings_package"

    .line 29
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings_activity"

    .line 31
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    const-string v0, "systemui_settings"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 34
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier_package"

    .line 38
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier_activity"

    .line 40
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_carrier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    const-string v0, "systemui_header"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 43
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 26
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

    .line 61
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 63
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    :cond_0
    const-string v5, "extended_statusbartext"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext"

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 67
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setHeaderInfo()V

    :cond_1
    :goto_0
    move v3, v4

    .line 116
    :goto_1
    return v3

    .line 70
    :cond_2
    const-string v5, "extended_statusbartext_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext_color"

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 71
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 73
    :cond_3
    const-string v5, "extended_statusbartext_showicon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_extended_statusbartext_showicon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 75
    :cond_4
    const-string v5, "hide_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 76
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 80
    :cond_5
    const-string v5, "hide_edit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 81
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_edit"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 83
    :cond_6
    const-string v5, "systemui_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 85
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v2, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_caption;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 89
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 91
    :cond_8
    const-string v5, "systemui_header"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 93
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_caption;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 97
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_9
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_carrier"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 99
    :cond_a
    const-string v3, "hide_date"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 100
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_hide_date"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setDateInfo()V

    goto/16 :goto_0

    .line 102
    :cond_b
    const-string v3, "headerclock_style"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 103
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setClockInfo()V

    goto/16 :goto_0

    .line 105
    :cond_c
    const-string v3, "headerclock_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 106
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_color"

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 106
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 108
    :cond_d
    const-string v3, "headerclock_ampm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 109
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_headerclock_ampm"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 110
    :cond_e
    const-string v3, "statusbar_date_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 111
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_date_color"

    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 111
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 113
    :cond_f
    const-string v3, "show_headerclockseconds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_caption;->Cr:Landroid/content/ContentResolver;

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
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 220
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setHeaderInfo()V

    .line 225
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setClockInfo()V

    .line 226
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setDateInfo()V

    .line 228
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 214
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 57
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_caption;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 52
    return-void
.end method
