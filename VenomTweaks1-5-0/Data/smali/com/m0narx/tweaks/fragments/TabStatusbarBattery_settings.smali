.class public Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabStatusbarBattery_settings.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private final PICKER_BATT_ICON:I

.field private res:Landroid/content/res/Resources;

.field private tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->PICKER_BATT_ICON:I

    .line 25
    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "batterybar_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 74
    const-string v1, "batterybar_automatically_color_pref"

    .line 73
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 75
    const-string v0, "batterybar_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 76
    const-string v1, "batterybar_automatically_color_pref"

    .line 75
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 77
    const-string v0, "batterybar_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 78
    const-string v1, "batterybar_automatically_color_pref"

    .line 77
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 79
    const-string v0, "batterybar_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 80
    const-string v1, "batterybar_automatically_color_pref"

    .line 79
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 81
    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 82
    const-string v0, "batterybar_automatically_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 83
    const-string v1, "show_miui"

    .line 82
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 84
    const-string v0, "barheight"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 85
    const-string v0, "battery_bar_anim"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 86
    const-string v0, "anim_pulse_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 87
    const-string v0, "anim_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 90
    const-string v0, "battery_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 91
    const-string v1, "battery_automatically_color_pref"

    .line 90
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 92
    const-string v0, "battery_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 93
    const-string v1, "battery_automatically_color_pref"

    .line 92
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 94
    const-string v0, "battery_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 95
    const-string v1, "battery_automatically_color_pref"

    .line 94
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 96
    const-string v0, "battery_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 97
    const-string v1, "battery_automatically_color_pref"

    .line 96
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private checkAutoMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    .line 60
    const-string v5, "tweaks_batt_color_auto_enabled"

    .line 59
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 61
    .local v0, manualcolor:Z
    :goto_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    .line 62
    const-string v5, "tweaks_battery_text_style"

    .line 61
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_1

    move v1, v2

    .line 64
    .local v1, textenabled:Z
    :goto_1
    const-string v4, "battery_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 65
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v4, v2

    .line 64
    :goto_2
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 66
    const-string v4, "battery_automatically_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 68
    const-string v4, "batterybar_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v6, "battery_bar_auto_color"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 68
    :goto_3
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 70
    return-void

    .end local v0           #manualcolor:Z
    .end local v1           #textenabled:Z
    :cond_0
    move v0, v3

    .line 59
    goto :goto_0

    .restart local v0       #manualcolor:Z
    :cond_1
    move v1, v3

    .line 61
    goto :goto_1

    .restart local v1       #textenabled:Z
    :cond_2
    move v4, v3

    .line 65
    goto :goto_2

    :cond_3
    move v2, v3

    .line 69
    goto :goto_3
.end method

.method private checkBatteryIcon()V
    .locals 5

    .prologue
    .line 48
    const-string v3, "battery_icon"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 49
    .local v0, battIcon:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_systemui_theme_battery"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, theme:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 52
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 53
    sget-object v4, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 52
    invoke-virtual {v3, v2, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->getCurrentDrawable(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    .local v1, battImg:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 55
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f040002

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "battery"

    return-object v0
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 186
    new-instance v2, Lcom/m0narx/tweaks/widgets/themeHelper;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 187
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->res:Landroid/content/res/Resources;

    .line 189
    const-string v2, "hide_battery"

    const-string v3, "tweaks_hide_battery"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    const-string v2, "battery_text_style_pref"

    .line 191
    const-string v3, "tweaks_battery_text_style"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 190
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 192
    const-string v2, "show_miui"

    const-string v3, "battery_bar_style"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    const-string v2, "barheight"

    const-string v3, "battery_bar_height"

    .line 194
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 193
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 196
    const-string v2, "barheight"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 198
    .local v0, barheight:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_height"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, height:I
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 202
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "battery_icon"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnClickListener([Ljava/lang/String;)V

    .line 206
    const-string v2, "battery_automatically_color_pref"

    .line 207
    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 208
    const-string v2, "battery_color_pref"

    const-string v3, "tweaks_batt_color_static"

    .line 209
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 208
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "battery_color_auto_charging"

    .line 211
    const-string v3, "tweaks_batt_color_auto_charging"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 210
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 213
    const-string v2, "battery_color_auto_regular"

    .line 214
    const-string v3, "tweaks_batt_color_auto_regular"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 213
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 216
    const-string v2, "battery_color_auto_medium"

    .line 217
    const-string v3, "tweaks_batt_color_auto_medium"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 216
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 219
    const-string v2, "battery_color_auto_low"

    .line 220
    const-string v3, "tweaks_batt_color_auto_low"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 219
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 222
    const-string v2, "batterybar_automatically_color_pref"

    .line 223
    const-string v3, "battery_bar_auto_color"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 222
    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    const-string v2, "batterybar_color_pref"

    const-string v3, "battery_bar_color"

    .line 225
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 224
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 226
    const-string v2, "batterybar_color_auto_charging"

    .line 227
    const-string v3, "battery_bar_color_auto_charging"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 226
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 229
    const-string v2, "batterybar_color_auto_regular"

    .line 230
    const-string v3, "batterybar_color_auto_regular"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 229
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 232
    const-string v2, "batterybar_color_auto_medium"

    .line 233
    const-string v3, "batterybar_color_auto_medium"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 234
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 232
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 235
    const-string v2, "batterybar_color_auto_low"

    .line 236
    const-string v3, "batterybar_color_auto_low"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 235
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 238
    const-string v2, "anim_type"

    const-string v3, "anim_type"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 239
    const-string v2, "anim_pulse_type"

    const-string v3, "anim_pulse_type"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 240
    const-string v2, "battery_bar_anim"

    const-string v3, "battery_bar_anim_on"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->CheckPreferences()V

    .line 243
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkAutoMode()V

    .line 244
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkBatteryIcon()V

    .line 245
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 33
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_battery"

    .line 40
    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkBatteryIcon()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    .line 110
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 115
    :cond_0
    const-string v2, "battery_text_style_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_battery_text_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkAutoMode()V

    .line 168
    :cond_1
    :goto_0
    return v5

    .line 118
    :cond_2
    const-string v2, "show_miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 120
    :cond_3
    const-string v2, "hide_battery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_hide_battery"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :cond_4
    const-string v2, "battery_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkAutoMode()V

    goto :goto_0

    .line 125
    :cond_5
    const-string v2, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_auto_color"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkAutoMode()V

    goto :goto_0

    .line 128
    :cond_6
    const-string v2, "barheight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_height"

    .line 130
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 131
    :cond_7
    const-string v2, "battery_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 132
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_static"

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 132
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 134
    :cond_8
    const-string v2, "battery_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 135
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_charging"

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 135
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 137
    :cond_9
    const-string v2, "battery_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 138
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_regular"

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 138
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 140
    :cond_a
    const-string v2, "battery_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 141
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_medium"

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 141
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v2, "battery_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 144
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_low"

    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 144
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 146
    :cond_c
    const-string v2, "batterybar_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 147
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color"

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 147
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 149
    :cond_d
    const-string v2, "batterybar_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 150
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_charging"

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 150
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v2, "batterybar_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 153
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_regular"

    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 153
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 155
    :cond_f
    const-string v2, "batterybar_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 156
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_medium"

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 156
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 158
    :cond_10
    const-string v2, "batterybar_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 159
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_low"

    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 161
    :cond_11
    const-string v2, "anim_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 162
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "anim_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 163
    :cond_12
    const-string v2, "anim_pulse_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 164
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "anim_pulse_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 165
    :cond_13
    const-string v2, "battery_bar_anim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_anim_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "battery_icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v1, themePicker:Landroid/content/Intent;
    const-string v2, "title"

    const v3, 0x7f0a00e1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v2, "filter"

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    .end local v1           #themePicker:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 4
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 259
    .line 260
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->res:Landroid/content/res/Resources;

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->CheckPreferences()V

    .line 272
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkAutoMode()V

    .line 273
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;->checkBatteryIcon()V

    .line 275
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
