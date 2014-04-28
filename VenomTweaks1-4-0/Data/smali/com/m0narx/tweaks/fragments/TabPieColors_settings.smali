.class public Lcom/m0narx/tweaks/fragments/TabPieColors_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabPieColors_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private SetPieColors()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_pie_use_custom_colors"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-string v1, "pie_custom_colors"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 128
    const-string v1, "pie_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_pie_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, color:I
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v2, "PieColorString"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    .end local v0           #color:I
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v1, "pie_custom_colors"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 137
    const-string v1, "pie_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 139
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto :goto_0
.end method

.method private WritePieColorString()V
    .locals 11

    .prologue
    const/high16 v10, -0x2000

    .line 70
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_tiles_color"

    const v9, 0x7f070009

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, tiles:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_select_color"

    const v9, 0x7f07000a

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, select:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_icon_color"

    const/high16 v9, -0x1000

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, icon:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_outline_color"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, outline:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_gradient_color"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, gradient:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pie_gradient_outline_color"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, gradient_outline:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, colorString:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v8, "PieColorString"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f040011

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "pie_colors"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x2000

    .line 109
    const-string v0, "pie_color"

    const-string v1, "PieColorString"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v3, "0"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;)V

    .line 110
    const-string v0, "pie_use_custom_colors"

    const-string v1, "tweaks_pie_use_custom_colors"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    const-string v0, "pie_tiles_color"

    const-string v1, "tweaks_pie_tiles_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, 0x7f070009

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 113
    const-string v0, "pie_select_color"

    const-string v1, "tweaks_pie_select_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, 0x7f07000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 114
    const-string v0, "pie_icon_color"

    const-string v1, "tweaks_pie_icon_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/high16 v3, -0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "pie_outline_color"

    const-string v1, "tweaks_pie_outline_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 116
    const-string v0, "pie_gradient_color"

    const-string v1, "tweaks_pie_gradient_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 117
    const-string v0, "pie_gradient_outline_color"

    const-string v1, "tweaks_pie_gradient_outline_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 118
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->SetPieColors()V

    .line 119
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
    const-string v2, "pie_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieColorString"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 64
    return v3

    .line 16
    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 23
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_2
    const-string v2, "pie_use_custom_colors"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_use_custom_colors"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 27
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->SetPieColors()V

    goto :goto_1

    .line 29
    :cond_3
    const-string v2, "pie_tiles_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_tiles_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto :goto_1

    .line 35
    :cond_4
    const-string v2, "pie_select_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_select_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto :goto_1

    .line 40
    :cond_5
    const-string v2, "pie_icon_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_icon_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto :goto_1

    .line 45
    :cond_6
    const-string v2, "pie_outline_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_outline_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto/16 :goto_1

    .line 50
    :cond_7
    const-string v2, "pie_gradient_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 52
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_gradient_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto/16 :goto_1

    .line 55
    :cond_8
    const-string v2, "pie_gradient_outline_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_pie_gradient_outline_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->WritePieColorString()V

    goto/16 :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->SetPieColors()V

    .line 162
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
