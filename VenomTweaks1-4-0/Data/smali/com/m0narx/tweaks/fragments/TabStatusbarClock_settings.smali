.class public Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabStatusbarClock_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f040004

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "clock"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    const-string v0, "pref_clock"

    const-string v1, "tweaks_clock_style"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 53
    const-string v0, "clock_hide_ampm"

    const-string v1, "tweaks_clock_ampm"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 55
    const-string v0, "show_clockseconds"

    const-string v1, "tweaks_show_clockseconds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    .line 27
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 30
    :cond_0
    const-string v2, "pref_clock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_clock_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    :cond_1
    :goto_0
    return v5

    .line 32
    :cond_2
    const-string v2, "clock_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_clock_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 34
    :cond_3
    const-string v2, "clock_hide_ampm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_clock_ampm"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 37
    :cond_4
    const-string v2, "show_clockseconds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_show_clockseconds"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 73
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
