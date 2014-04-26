.class public Lcom/m0narx/tweaks/fragments/traffic_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "traffic_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private setTraffic()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/traffic_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_speed_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "traffic_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "traffic_color"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f04001b

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "traffic"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 47
    const-string v0, "show_traffic"

    const-string v1, "tweaks_speed_view"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/traffic_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    const-string v0, "traffic_color"

    const-string v1, "tweaks_speed_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/traffic_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 50
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->setTraffic()V

    .line 51
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    .line 26
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    :cond_0
    const-string v2, "traffic_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/traffic_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_speed_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    :cond_1
    :goto_0
    return v5

    .line 31
    :cond_2
    const-string v2, "show_traffic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/traffic_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_speed_view"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->setTraffic()V

    goto :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 86
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->setTraffic()V

    .line 92
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0a0201

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/traffic_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 80
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
