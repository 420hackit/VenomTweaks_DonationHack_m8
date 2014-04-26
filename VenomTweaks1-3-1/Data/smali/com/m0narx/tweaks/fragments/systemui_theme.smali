.class public Lcom/m0narx/tweaks/fragments/systemui_theme;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "systemui_theme.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private final PICKER_ALARM_ICON:I

.field private final PICKER_BATT_ICON:I

.field private final PICKER_BLUETOOTH_ICON:I

.field private final PICKER_DATA_ICON:I

.field private final PICKER_EQS_ICON:I

.field private final PICKER_GPS_ICON:I

.field private final PICKER_HEADSET_ICON:I

.field private final PICKER_HEQS_ICON:I

.field private final PICKER_SIGNAL_ICON:I

.field private final PICKER_SYNC_ICON:I

.field private final PICKER_THEME:I

.field private final PICKER_VOLUME_ICON:I

.field private final PICKER_WIFI_ICON:I

.field private tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/fragments/systemui_theme;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 25
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_THEME:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_BATT_ICON:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_WIFI_ICON:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_SIGNAL_ICON:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_GPS_ICON:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_BLUETOOTH_ICON:I

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_ALARM_ICON:I

    .line 32
    const/4 v0, 0x6

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_HEADSET_ICON:I

    .line 33
    const/4 v0, 0x7

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_SYNC_ICON:I

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_VOLUME_ICON:I

    .line 35
    const/16 v0, 0x9

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_DATA_ICON:I

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_EQS_ICON:I

    .line 37
    const/16 v0, 0xb

    iput v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->PICKER_HEQS_ICON:I

    .line 21
    return-void
.end method

.method private ApplyTheme(Ljava/lang/String;)V
    .locals 3
    .parameter "themeName"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, data:Landroid/content/Intent;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    iget v2, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->RESULT_OK:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkAllIcons()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 40
    const-string v0, "battery_icon"

    const-string v1, "tweaks_systemui_theme_battery"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const/16 v3, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 41
    const-string v0, "signal_icon"

    const-string v1, "tweaks_systemui_theme_signal"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 42
    const-string v0, "wifi_icon"

    const-string v1, "tweaks_systemui_theme_wifi"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 43
    const-string v0, "gps_icon"

    const-string v1, "tweaks_systemui_theme_gps"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 44
    const-string v0, "bluetooth_icon"

    const-string v1, "tweaks_systemui_theme_bluetooth"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 45
    const-string v0, "alarm_icon"

    const-string v1, "tweaks_systemui_theme_alarm"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 46
    const-string v0, "headset_icon"

    const-string v1, "tweaks_systemui_theme_headset"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 47
    const-string v0, "sync_icon"

    const-string v1, "tweaks_systemui_theme_sync"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 48
    const-string v0, "volume_icon"

    const-string v1, "tweaks_systemui_theme_volume"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 49
    const-string v0, "data_icon"

    const-string v1, "tweaks_systemui_theme_data"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 50
    const-string v0, "eqs_icons"

    const-string v1, "tweaks_systemui_theme_eqs"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 51
    const-string v0, "heqs_icons"

    const-string v1, "tweaks_systemui_theme_heqs"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 52
    return-void
.end method

.method private checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V
    .locals 4
    .parameter "prefName"
    .parameter "tweak"
    .parameter "Filter"
    .parameter "Level"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/systemui_theme;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 143
    .local v0, Icon:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, theme:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 146
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2, p3}, Lcom/m0narx/tweaks/widgets/themeHelper;->getCurrentDrawable(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    .local v1, Img:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 148
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void
.end method

.method private chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V
    .locals 3
    .parameter "Title"
    .parameter "RetCode"
    .parameter "Filter"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->mContext:Landroid/content/Context;

    const-class v2, Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, themePicker:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v1, "filter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0, p2}, Lcom/m0narx/tweaks/fragments/systemui_theme;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x7f04001a

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "systemuitheme"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 237
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "apply_theme"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 238
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "battery_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 239
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "signal_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 240
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "wifi_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 241
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "gps_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 242
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "bluetooth_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 243
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "alarm_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 244
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "headset_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 245
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sync_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 246
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "volume_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 247
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data_icon"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 248
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "eqs_icons"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 249
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "heqs_icons"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->OnClickListener([Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkAllIcons()V

    .line 251
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 63
    iget v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->RESULT_OK:I

    if-eq p2, v0, :cond_1

    const-string v0, "aaa"

    const-string v1, "wrong result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "aaa"

    const-string v1, "no data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 70
    :sswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_battery"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    const-string v0, "battery_icon"

    const-string v1, "tweaks_systemui_theme_battery"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const/16 v3, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto :goto_0

    .line 67
    :sswitch_1
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->ApplyTheme(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_wifi"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    const-string v0, "wifi_icon"

    const-string v1, "tweaks_systemui_theme_wifi"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto :goto_0

    .line 80
    :sswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_signal"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    const-string v0, "signal_icon"

    const-string v1, "tweaks_systemui_theme_signal"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 85
    :sswitch_4
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_gps"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    const-string v0, "gps_icon"

    const-string v1, "tweaks_systemui_theme_gps"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 90
    :sswitch_5
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_bluetooth"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    const-string v0, "bluetooth_icon"

    const-string v1, "tweaks_systemui_theme_bluetooth"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 95
    :sswitch_6
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_alarm"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    const-string v0, "alarm_icon"

    const-string v1, "tweaks_systemui_theme_alarm"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 98
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 101
    :sswitch_7
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_headset"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    const-string v0, "headset_icon"

    const-string v1, "tweaks_systemui_theme_headset"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 106
    :sswitch_8
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_sync"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v0, "sync_icon"

    const-string v1, "tweaks_systemui_theme_sync"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    .line 109
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 112
    :sswitch_9
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_volume"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    const-string v0, "volume_icon"

    const-string v1, "tweaks_systemui_theme_volume"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 117
    :sswitch_a
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_data"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const-string v0, "data_icon"

    const-string v1, "tweaks_systemui_theme_data"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 122
    :sswitch_b
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_eqs"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    const-string v0, "eqs_icons"

    const-string v1, "tweaks_systemui_theme_eqs"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 127
    :sswitch_c
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_heqs"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    const-string v0, "heqs_icons"

    const-string v1, "tweaks_systemui_theme_heqs"

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkIcon(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;I)V

    goto/16 :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 153
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "battery_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const v1, 0x7f0a00e1

    const/4 v2, 0x0

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    .line 198
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    const-string v1, "wifi_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const v1, 0x7f0a00df

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v4, v2}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "signal_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    const v1, 0x7f0a00e0

    const/4 v2, 0x2

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 177
    :cond_3
    const-string v1, "apply_theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    const v1, 0x7f0a00dd

    const/16 v2, 0x3e8

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 179
    :cond_4
    const-string v1, "gps_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    const v1, 0x7f0a00e2

    const/4 v2, 0x3

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 181
    :cond_5
    const-string v1, "bluetooth_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    const v1, 0x7f0a00e3

    const/4 v2, 0x4

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 183
    :cond_6
    const-string v1, "alarm_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 184
    const v1, 0x7f0a00e4

    const/4 v2, 0x5

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 185
    :cond_7
    const-string v1, "headset_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    const v1, 0x7f0a00e5

    const/4 v2, 0x6

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto :goto_0

    .line 187
    :cond_8
    const-string v1, "sync_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    const v1, 0x7f0a00e6

    const/4 v2, 0x7

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto/16 :goto_0

    .line 189
    :cond_9
    const-string v1, "volume_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 190
    const v1, 0x7f0a00e7

    const/16 v2, 0x8

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto/16 :goto_0

    .line 191
    :cond_a
    const-string v1, "data_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 192
    const v1, 0x7f0a00e8

    const/16 v2, 0x9

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto/16 :goto_0

    .line 193
    :cond_b
    const-string v1, "eqs_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 194
    const v1, 0x7f0a00eb

    const/16 v2, 0xa

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto/16 :goto_0

    .line 195
    :cond_c
    const-string v1, "heqs_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const v1, 0x7f0a01a0

    const/16 v2, 0xb

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-direct {p0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui_theme;->chooseTheme(IILcom/m0narx/tweaks/widgets/themeHelper$element;)V

    goto/16 :goto_0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 267
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->checkAllIcons()V

    .line 272
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 273
    return-void
.end method

.method public setHeader()V
    .locals 4

    .prologue
    .line 203
    const v2, 0x7f0a00db

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/systemui_theme;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 205
    .local v0, ab:Lcom/htc/widget/ActionBarContainer;
    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 207
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v2, Lcom/m0narx/tweaks/fragments/systemui_theme$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/systemui_theme$1;-><init>(Lcom/m0narx/tweaks/fragments/systemui_theme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 218
    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    .end local v1           #mActionButton:Lcom/htc/widget/ActionBarItemView;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui_theme;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 219
    .restart local v1       #mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v2, 0x20800a9

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 220
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v2, Lcom/m0narx/tweaks/fragments/systemui_theme$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/systemui_theme$2;-><init>(Lcom/m0narx/tweaks/fragments/systemui_theme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
