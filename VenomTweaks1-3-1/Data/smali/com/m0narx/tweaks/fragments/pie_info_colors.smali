.class public Lcom/m0narx/tweaks/fragments/pie_info_colors;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "pie_info_colors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private SetPieInfoColors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_pie_info_use_custom_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "pie_info_custom_colors"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v1, "PieStatusInfoColorString"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "pie_info_custom_colors"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 107
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->WritePieColorInfoString()V

    goto :goto_0
.end method

.method private WritePieColorInfoString()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 47
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    .line 48
    const-string v5, "tweaks_pie_info_clock"

    .line 47
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, clock:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    .line 50
    const-string v5, "tweaks_pie_info_notif"

    .line 49
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, notif:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    .line 52
    const-string v5, "tweaks_pie_info_dim"

    const/high16 v6, -0x3800

    .line 51
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, dim:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, colorString:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v5, "PieStatusInfoColorString"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f040012

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "pie_info_colors"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 87
    const-string v0, "pie_info_use_custom_colors"

    .line 88
    const-string v1, "tweaks_pie_info_use_custom_colors"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v0, "pie_info_clock"

    const-string v1, "tweaks_pie_info_clock"

    .line 91
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "pie_info_notif"

    const-string v1, "tweaks_pie_info_notif"

    .line 93
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 92
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 94
    const-string v0, "pie_info_dim"

    const-string v1, "tweaks_pie_info_dim"

    .line 95
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/high16 v3, -0x3800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 94
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 97
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->SetPieInfoColors()V

    .line 98
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    .line 15
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    if-ne v2, v4, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    .local v1, bvar:Ljava/lang/Integer;
    const-string v2, "pie_info_use_custom_colors"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_info_use_custom_colors"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->SetPieInfoColors()V

    .line 40
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 42
    return v3

    .line 16
    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 22
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_2
    const-string v2, "pie_info_clock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_info_clock"

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 23
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->WritePieColorInfoString()V

    goto :goto_1

    .line 27
    :cond_3
    const-string v2, "pie_info_notif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_info_notif"

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 29
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->WritePieColorInfoString()V

    goto :goto_1

    .line 33
    :cond_4
    const-string v2, "pie_info_dim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_info_dim"

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 35
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->WritePieColorInfoString()V

    goto :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie_info_colors;->SetPieInfoColors()V

    .line 130
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_info_colors;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
