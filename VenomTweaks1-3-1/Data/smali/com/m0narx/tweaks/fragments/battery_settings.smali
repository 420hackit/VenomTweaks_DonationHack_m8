.class public Lcom/m0narx/tweaks/fragments/battery_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "battery_settings.java"


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
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/fragments/battery_settings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->PICKER_BATT_ICON:I

    .line 24
    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "batterybar_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 73
    const-string v1, "batterybar_automatically_color_pref"

    .line 72
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 74
    const-string v0, "batterybar_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 75
    const-string v1, "batterybar_automatically_color_pref"

    .line 74
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 76
    const-string v0, "batterybar_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 77
    const-string v1, "batterybar_automatically_color_pref"

    .line 76
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 78
    const-string v0, "batterybar_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 79
    const-string v1, "batterybar_automatically_color_pref"

    .line 78
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 80
    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 81
    const-string v0, "batterybar_automatically_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 82
    const-string v1, "show_miui"

    .line 81
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 83
    const-string v0, "barheight"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 84
    const-string v0, "battery_bar_anim"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 85
    const-string v0, "anim_pulse_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 86
    const-string v0, "anim_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 89
    const-string v0, "battery_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 90
    const-string v1, "battery_automatically_color_pref"

    .line 89
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 91
    const-string v0, "battery_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 92
    const-string v1, "battery_automatically_color_pref"

    .line 91
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 93
    const-string v0, "battery_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 94
    const-string v1, "battery_automatically_color_pref"

    .line 93
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 95
    const-string v0, "battery_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 96
    const-string v1, "battery_automatically_color_pref"

    .line 95
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private checkAutoMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    .line 59
    const-string v5, "tweaks_batt_color_auto_enabled"

    .line 58
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 60
    .local v0, manualcolor:Z
    :goto_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    .line 61
    const-string v5, "tweaks_battery_text_style"

    .line 60
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_1

    move v1, v2

    .line 63
    .local v1, textenabled:Z
    :goto_1
    const-string v4, "battery_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 64
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v4, v2

    .line 63
    :goto_2
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 65
    const-string v4, "battery_automatically_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 67
    const-string v4, "batterybar_color_pref"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 68
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v6, "battery_bar_auto_color"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 67
    :goto_3
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 69
    return-void

    .end local v0           #manualcolor:Z
    .end local v1           #textenabled:Z
    :cond_0
    move v0, v3

    .line 58
    goto :goto_0

    .restart local v0       #manualcolor:Z
    :cond_1
    move v1, v3

    .line 60
    goto :goto_1

    .restart local v1       #textenabled:Z
    :cond_2
    move v4, v3

    .line 64
    goto :goto_2

    :cond_3
    move v2, v3

    .line 68
    goto :goto_3
.end method

.method private checkBatteryIcon()V
    .locals 5

    .prologue
    .line 47
    const-string v3, "battery_icon"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 48
    .local v0, battIcon:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_systemui_theme_battery"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, theme:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 51
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 52
    sget-object v4, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 51
    invoke-virtual {v3, v2, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->getCurrentDrawable(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, battImg:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 54
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 248
    const v0, 0x7f040002

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
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

    .line 185
    new-instance v2, Lcom/m0narx/tweaks/widgets/themeHelper;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 186
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->res:Landroid/content/res/Resources;

    .line 188
    const-string v2, "hide_battery"

    const-string v3, "tweaks_hide_battery"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 189
    const-string v2, "battery_text_style_pref"

    .line 190
    const-string v3, "tweaks_battery_text_style"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 189
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 191
    const-string v2, "show_miui"

    const-string v3, "battery_bar_style"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    const-string v2, "barheight"

    const-string v3, "battery_bar_height"

    .line 193
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 192
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 195
    const-string v2, "barheight"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 197
    .local v0, barheight:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_height"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, height:I
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 201
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->res:Landroid/content/res/Resources;

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

    .line 203
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "battery_icon"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnClickListener([Ljava/lang/String;)V

    .line 205
    const-string v2, "battery_automatically_color_pref"

    .line 206
    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 205
    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    const-string v2, "battery_color_pref"

    const-string v3, "tweaks_batt_color_static"

    .line 208
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 207
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 209
    const-string v2, "battery_color_auto_charging"

    .line 210
    const-string v3, "tweaks_batt_color_auto_charging"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 209
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "battery_color_auto_regular"

    .line 213
    const-string v3, "tweaks_batt_color_auto_regular"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 212
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 215
    const-string v2, "battery_color_auto_medium"

    .line 216
    const-string v3, "tweaks_batt_color_auto_medium"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 215
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 218
    const-string v2, "battery_color_auto_low"

    .line 219
    const-string v3, "tweaks_batt_color_auto_low"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 218
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 221
    const-string v2, "batterybar_automatically_color_pref"

    .line 222
    const-string v3, "battery_bar_auto_color"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 221
    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    const-string v2, "batterybar_color_pref"

    const-string v3, "battery_bar_color"

    .line 224
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 223
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 225
    const-string v2, "batterybar_color_auto_charging"

    .line 226
    const-string v3, "battery_bar_color_auto_charging"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 225
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 228
    const-string v2, "batterybar_color_auto_regular"

    .line 229
    const-string v3, "batterybar_color_auto_regular"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 230
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 228
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 231
    const-string v2, "batterybar_color_auto_medium"

    .line 232
    const-string v3, "batterybar_color_auto_medium"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 233
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 231
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 234
    const-string v2, "batterybar_color_auto_low"

    .line 235
    const-string v3, "batterybar_color_auto_low"

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 234
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 237
    const-string v2, "anim_type"

    const-string v3, "anim_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v2, "anim_pulse_type"

    const-string v3, "anim_pulse_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v2, "battery_bar_anim"

    const-string v3, "battery_bar_anim_on"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->CheckPreferences()V

    .line 242
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkAutoMode()V

    .line 243
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkBatteryIcon()V

    .line 244
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 32
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_battery"

    .line 39
    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkBatteryIcon()V

    goto :goto_0

    .line 35
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

    .line 109
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    :cond_0
    const-string v2, "battery_text_style_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_battery_text_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkAutoMode()V

    .line 167
    :cond_1
    :goto_0
    return v5

    .line 117
    :cond_2
    const-string v2, "show_miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 119
    :cond_3
    const-string v2, "hide_battery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_hide_battery"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 121
    :cond_4
    const-string v2, "battery_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkAutoMode()V

    goto :goto_0

    .line 124
    :cond_5
    const-string v2, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_auto_color"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkAutoMode()V

    goto :goto_0

    .line 127
    :cond_6
    const-string v2, "barheight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_height"

    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    :cond_7
    const-string v2, "battery_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_static"

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 133
    :cond_8
    const-string v2, "battery_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_charging"

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 134
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 136
    :cond_9
    const-string v2, "battery_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 137
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_regular"

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 137
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 139
    :cond_a
    const-string v2, "battery_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 140
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_medium"

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 140
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 142
    :cond_b
    const-string v2, "battery_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 143
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_batt_color_auto_low"

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 145
    :cond_c
    const-string v2, "batterybar_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 146
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color"

    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 146
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 148
    :cond_d
    const-string v2, "batterybar_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 149
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_charging"

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 149
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 151
    :cond_e
    const-string v2, "batterybar_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 152
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_regular"

    .line 153
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 152
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 154
    :cond_f
    const-string v2, "batterybar_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 155
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_medium"

    .line 156
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 155
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 157
    :cond_10
    const-string v2, "batterybar_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 158
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "battery_bar_color_auto_low"

    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 158
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 160
    :cond_11
    const-string v2, "anim_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 161
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "anim_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 162
    :cond_12
    const-string v2, "anim_pulse_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 163
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "anim_pulse_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 164
    :cond_13
    const-string v2, "battery_bar_anim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->Cr:Landroid/content/ContentResolver;

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
    .line 172
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "battery_icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v1, themePicker:Landroid/content/Intent;
    const-string v2, "title"

    const v3, 0x7f0a00e1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v2, "filter"

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 178
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/fragments/battery_settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
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
    .line 258
    .line 259
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/battery_settings;->res:Landroid/content/res/Resources;

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

    .line 258
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->CheckPreferences()V

    .line 271
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkAutoMode()V

    .line 272
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/battery_settings;->checkBatteryIcon()V

    .line 274
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
