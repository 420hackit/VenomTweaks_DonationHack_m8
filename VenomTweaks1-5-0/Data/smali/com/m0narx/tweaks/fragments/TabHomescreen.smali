.class public Lcom/m0narx/tweaks/fragments/TabHomescreen;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabHomescreen.java"


# static fields
.field private static final APP_DRAWER_CLOSED:I = 0x7

.field private static final APP_DRAWER_OPEN:I = 0x8

.field private static final BG_BLINKFEED:I = 0x6

.field private static final BG_FOLDER:I = 0x1e

.field private static final BG_FOLDER_INC:I = 0xa

.field private static final BG_PANEL:I = 0x1

.field private static final BG_PANEL_INC:I = 0x9

.field private static final BG_PRISM:I = 0x3

.field private static final BG_PRISM_ANIMATED:I = 0x4

.field private static final BG_ROSIE:I = 0x2

.field private static final BG_ROSIEANIM:I = 0x5

.field private static final BG_TILE:I = 0x5

.field private static final BG_UNDERLAY:I = 0x1f

.field private static final DIALOG_SELECT_BACKGROUND:I = 0x2

.field private static final DIALOG_SELECT_FOLDER:I = 0x14

.field private static final DIALOG_SELECT_NAVBAR:I = 0x16

.field private static final DIALOG_SELECT_UNDERLAY:I = 0x15

.field private static final FROM_SDCARD:I = 0x1

.field private static final FROM_THEME:I = 0x0

.field private static final ICON_UNDERLAY:I = 0x6

.field private static final NAVBAR:I = 0x9

.field public static final PACKAGE_NAVBAR:Ljava/lang/String; = "venom.theme.prism.Venom_Navbars"

.field public static final PACKAGE_UNDERLAY:Ljava/lang/String; = "venom.theme.prism.Venom_Underlays"

.field private static PAGES_DEFAULT:I = 0x0

.field private static PAGES_MAX:I = 0x0

.field private static PAGES_MIN:I = 0x0

.field private static final PAGES_STEP:I = 0x1

.field private static final PICKER_GET_CLOCK_APP:I = 0x1

.field private static final PICKER_GET_CLOCK_PRISM_APP:I = 0xa

.field private static final PICKER_GET_CUSTOM_APPDRAWER_SHORTCUT:I = 0xe

.field private static final PICKER_GET_WEATHER_APP:I = 0x2

.field private static final PICKER_GET_WEATHER_PRISM_APP:I = 0xb

.field private static final REQUEST_CROP:I = 0xc

.field private static SIZE_DEFAULT:I = 0x0

.field private static SIZE_MAX:I = 0x0

.field private static SIZE_MIN:I = 0x0

.field private static final SIZE_STEP:I = 0x1

.field private static SLIDE_DEFAULT:I = 0x0

.field private static SLIDE_MAX:I = 0x0

.field private static SLIDE_MIN:I = 0x0

.field private static final SLIDE_STEP:I = 0x64


# instance fields
.field private mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

.field private mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

.field private mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

.field private navbarDialog:Lcom/htc/widget/HtcAlertDialog;

.field private underlayDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 80
    const/4 v0, 0x5

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    .line 81
    const/16 v0, 0x32

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MAX:I

    .line 82
    const/16 v0, 0x14

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_DEFAULT:I

    .line 85
    const/16 v0, 0x50

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    .line 86
    const/16 v0, 0x78

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MAX:I

    .line 87
    const/16 v0, 0x64

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_DEFAULT:I

    .line 90
    sput v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SLIDE_MIN:I

    .line 91
    const/16 v0, 0x1388

    sput v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SLIDE_MAX:I

    .line 92
    sput v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SLIDE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 94
    new-instance v0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->underlayDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private initSeeksBars()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xff

    .line 1093
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_foldericon_transp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1094
    .local v2, val:I
    const-string v3, "prism_foldericon_transp"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1095
    .local v0, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1096
    invoke-virtual {v0, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1097
    move v1, v2

    .line 1098
    .local v1, progress:I
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1100
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_folderbg_transp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1101
    const-string v3, "prism_folderbg_transp"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1102
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {v0, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1104
    move v1, v2

    .line 1105
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1107
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_blinkfeed_max_feed_pages"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1108
    const-string v3, "blinkfeed_max_feed_pages"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1109
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1110
    sget v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MAX:I

    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1111
    div-int/lit8 v3, v2, 0x1

    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int v1, v3, v4

    .line 1112
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1114
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_icon_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1115
    const-string v3, "icon_size"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1116
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1117
    sget v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MAX:I

    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1118
    div-int/lit8 v3, v2, 0x1

    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int v1, v3, v4

    .line 1119
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1138
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_icon_underlay_scale"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1139
    const-string v3, "underlay_bounds"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1140
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {v0, v6}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1142
    move v1, v2

    .line 1143
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1145
    return-void
.end method

.method private refreshUnderlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1079
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    const-string v1, "tweaks_icon_underlay"

    .line 1079
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 1082
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 1087
    :goto_0
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->setUnderlay()V

    .line 1089
    return-void

    .line 1084
    :cond_0
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 1085
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setAppDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 876
    const-string v1, "tweaks_custom_background"

    .line 875
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 877
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUnderlay()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1039
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1040
    const-string v1, "tweaks_icon_underlay"

    .line 1039
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1041
    const-string v0, "underlay_bounds"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    const-string v0, "underlay_bounds"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 1168
    const v0, 0x7f040015

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1173
    const-string v0, "rosie"

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 886
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/framework/theme/AppIcons;->getInstance(Landroid/content/Context;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    .line 888
    new-instance v0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 889
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$8;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$8;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;)V

    .line 888
    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 898
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->setAppDrawer()V

    .line 900
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "rosie_menu"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    const-string v2, "rosie_weather"

    aput-object v2, v0, v1

    const-string v1, "prism_folder_bg"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 901
    const-string v2, "blinkfeed_ratio"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    .line 900
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnClickListener([Ljava/lang/String;)V

    .line 906
    const-string v0, "prism_foldericon_transp"

    const-string v1, ""

    .line 907
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 906
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 908
    const-string v0, "prism_folderbg_transp"

    const-string v1, ""

    .line 909
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 908
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 911
    const-string v0, "rosie_folder_center"

    const-string v1, "tweaks_rosie_folder_center"

    .line 912
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 911
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 914
    const-string v0, "rosie_custombg"

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 916
    const-string v0, "use_custom_allapps"

    const-string v1, "tweaks_custom_background"

    .line 917
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 916
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 921
    const-string v0, "custom_app_drawer_icon_open"

    .line 922
    const-string v1, "tweaks_custom_app_drawer_icon_open"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 921
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 926
    const-string v0, "allapps_position"

    const-string v1, "tweaks_allapps_position"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 931
    const-string v0, "rosie_ringscroll"

    .line 932
    const-string v1, "tweaks_prism_infinitive_scrolling"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 931
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 941
    const-string v0, "hide_labels"

    const-string v1, "tweaks_hide_labels"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 943
    const-string v0, "support_landscape"

    const-string v1, "tweaks_support_landscape"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 945
    const-string v0, "folder_cell_layout"

    const-string v1, "tweaks_folder_cell_layout"

    .line 946
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 945
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 948
    const-string v0, "custom_appdrawer_shortcut"

    .line 949
    const-string v1, "tweaks_custom_appdrawer_shortcut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 948
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 951
    const-string v0, "hide_allapps_navbar"

    const-string v1, "tweaks_hide_allapps_navbar"

    .line 952
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 951
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 954
    const-string v0, "folder_style"

    const-string v1, "tweaks_folder_style"

    .line 955
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 954
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 960
    const-string v0, "blinkfeed_autosync_interval"

    .line 961
    const-string v1, "tweaks_blinkfeed_autosync_interval"

    .line 962
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 960
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 964
    const-string v0, "blinkfeed_max_feed_pages"

    const-string v1, ""

    .line 965
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    sget v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_DEFAULT:I

    div-int/lit8 v3, v3, 0x1

    .line 966
    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 964
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 968
    const-string v0, "weather_anim"

    const-string v1, "tweaks_weather_anim"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 972
    const-string v0, "sense_anim"

    const-string v1, "tweaks_sense_anim"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 974
    const-string v0, "always_show_weather_anim"

    .line 975
    const-string v1, "tweaks_always_show_weather_anim"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 974
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 977
    const-string v0, "icon_size"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 978
    sget v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_DEFAULT:I

    div-int/lit8 v3, v3, 0x1

    sget v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 977
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 994
    const-string v0, "show_alarm_widget"

    const-string v1, "tweaks_show_alarm_widget"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1000
    const-string v0, "scrolling_wallpaper"

    const-string v1, "tweaks_scrolling_wallpaper"

    .line 1001
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1000
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1002
    const-string v0, "icon_underlay"

    const-string v1, "tweaks_icon_underlay"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1003
    const-string v0, "underlay_bounds"

    const-string v1, ""

    .line 1004
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1003
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1006
    const-string v0, "blinkfeed_hide_top"

    const-string v1, "tweaks_blinkfeed_hide_top"

    .line 1007
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1006
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1008
    const-string v0, "weather_color"

    const-string v1, "tweaks_rosie_weather_color"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1010
    const-string v0, "blinkfeed_foreground"

    const-string v1, "tweaks_blinkfeed_foreground"

    .line 1011
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0xb4b4b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1010
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1012
    const-string v0, "blinkfeed_bg"

    const-string v1, "tweaks_blinkfeed_bg"

    .line 1013
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0x191818

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1012
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1014
    const-string v0, "blinkfeed_itemsbg"

    const-string v1, "tweaks_blinkfeed_itemsbg"

    .line 1015
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0x979798

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1014
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1016
    const-string v0, "prism_overlay"

    const-string v1, "tweaks_prism_overlay"

    .line 1017
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0xcc4a1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1016
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 1019
    const-string v0, "prism_menu_use_icons"

    const-string v1, "tweaks_prism_menu_use_icons"

    .line 1020
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1019
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1022
    const-string v0, "hide_labels_all_apps"

    const-string v1, "tweaks_hide_labels_all_apps"

    .line 1023
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1022
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1025
    const-string v0, "hide_hotseat_on_blinkfeed"

    const-string v1, "tweaks_hide_hotseat_on_blinkfeed"

    .line 1026
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1025
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1030
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->initSeeksBars()V

    .line 1034
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->setUnderlay()V

    .line 1035
    return-void
.end method

.method public makeDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 128
    :sswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 130
    const v1, 0x7f050078

    .line 131
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 159
    :sswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 161
    const v1, 0x7f050064

    .line 162
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 186
    :sswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    const v1, 0x7f0a0403

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 188
    const v1, 0x7f050077

    .line 189
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 239
    :sswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f0a02ad

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 241
    const v1, 0x7f05009e

    .line 242
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_3
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 305
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 306
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 307
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 308
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 448
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 315
    :sswitch_0
    if-ne p2, v4, :cond_0

    .line 318
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 319
    const-string v2, "/data/system/prism_folder.png"

    .line 318
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_prism_folder_bg"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_1

    .line 325
    :sswitch_1
    if-ne p2, v4, :cond_0

    .line 328
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 329
    const-string v2, "/data/system/custom_navbar.png"

    .line 328
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 329
    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_navbar"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    const-string v0, "custom_navbar"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 337
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 341
    :sswitch_2
    if-ne p2, v4, :cond_0

    .line 344
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 345
    const-string v2, "/data/system/app_drawer_closed.png"

    .line 344
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 345
    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_app_drawer_icon_closed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    const-string v0, "custom_app_drawer_icon_closed"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 348
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 353
    :sswitch_3
    if-ne p2, v4, :cond_0

    .line 356
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 357
    const-string v2, "/data/system/app_drawer_open.png"

    .line 356
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_app_drawer_icon_open"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    const-string v0, "custom_app_drawer_icon_open"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 360
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 365
    :sswitch_4
    if-ne p2, v4, :cond_0

    .line 368
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 369
    const-string v2, "/data/system/background_feed_tile.png"

    .line 368
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 369
    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_feed_tile_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    const-string v0, "blinkfeed_tile_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 372
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 377
    :sswitch_5
    if-ne p2, v4, :cond_0

    .line 381
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x438

    const/16 v4, 0x780

    .line 382
    const/16 v5, 0xc

    move-object v0, p0

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBgCrop(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Landroid/net/Uri;III)V

    goto/16 :goto_1

    .line 386
    :sswitch_6
    if-ne p2, v4, :cond_0

    .line 390
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 391
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 392
    const-string v1, "/data/system/background_appdrawer.png"

    .line 391
    invoke-static {v6, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->CopyImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 396
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 397
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 402
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :sswitch_7
    if-ne p2, v4, :cond_0

    .line 405
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 406
    const-string v1, "tweaks_custom_appdrawer_pckg"

    .line 407
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 409
    const-string v1, "tweaks_custom_appdrawer_activity"

    .line 410
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 412
    const-string v1, "tweaks_custom_appdrawer_shortcut"

    .line 411
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    const-string v0, "custom_appdrawer_shortcut"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 414
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 416
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 421
    :sswitch_8
    if-ne p2, v4, :cond_0

    .line 425
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 426
    const-string v2, "/data/system/icon_underlay.png"

    .line 425
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 428
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_icon_underlay"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    const-string v0, "pkill com.htc.lockscreen"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 435
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 438
    :sswitch_9
    if-ne p2, v4, :cond_0

    .line 441
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 442
    const-string v2, "/data/system/background_panel.png"

    .line 441
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 442
    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_navbar_bg"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
        0xc -> :sswitch_6
        0xe -> :sswitch_7
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 473
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    .line 474
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    :cond_0
    const-string v6, "enable_landscape"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_enable_landscape"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    :cond_1
    :goto_0
    move v4, v5

    .line 838
    :goto_1
    return v4

    .line 479
    :cond_2
    const-string v6, "rosie_navbar_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 480
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_navbar_transp"

    .line 481
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 480
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 483
    :cond_3
    const-string v6, "rosie_extappdrawer"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 484
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_extappdrawer"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 486
    :cond_4
    const-string v6, "rosie_bgcolor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 487
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_bgcolor"

    .line 488
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 487
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 490
    :cond_5
    const-string v6, "rosie_custombg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 492
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 493
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 494
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_customanim"

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 497
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->makeDialog(I)V

    goto :goto_1

    .line 501
    :cond_7
    const-string v6, "rosie_scrollwall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 502
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_scrollwall"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 504
    :cond_8
    const-string v6, "hide_hs_labels"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 505
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_hs_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 507
    :cond_9
    const-string v6, "rosie_bordercolor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 508
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_bordercolor"

    .line 509
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 508
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 512
    :cond_a
    const-string v6, "custom_appdrawer_shortcut"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 513
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_b

    .line 514
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    .local v2, myIntent:Landroid/content/Intent;
    const/16 v5, 0xe

    .line 515
    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 520
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_b
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_appdrawer_shortcut"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 524
    :cond_c
    const-string v6, "prism_navbar_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 525
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_trans_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 528
    :cond_d
    const-string v6, "prism_foldericon_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 529
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_foldericon_transp"

    .line 530
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 529
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 532
    :cond_e
    const-string v6, "prism_folderbg_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 533
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_folderbg_transp"

    .line 534
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 533
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 537
    :cond_f
    const-string v6, "use_custom_allapps"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 538
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 541
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->setAppDrawer()V

    goto/16 :goto_0

    .line 543
    :cond_10
    const-string v6, "exit_allapps"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 544
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_exit_allapps"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 546
    :cond_11
    const-string v6, "custom_blinkfeed_bg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 547
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 550
    :cond_12
    const-string v6, "custom_blinkfeed_tile_bg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 551
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 554
    :cond_13
    const-string v6, "blinkfeed_tile_color"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 555
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_bgcolor"

    .line 556
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 555
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 559
    :cond_14
    const-string v6, "blinkfeed_tile_custombg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 560
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_15

    .line 561
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 564
    :cond_15
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 566
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 570
    :cond_16
    const-string v6, "blinkfeed_hide_share_button"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 571
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_hide_share_button"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 574
    :cond_17
    const-string v6, "cell_setting"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 575
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_cell_setting"

    .line 576
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 575
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 577
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 579
    :cond_18
    const-string v6, "hide_appdrawer_clock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 580
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_appdrawer_clock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 583
    :cond_19
    const-string v6, "hide_labels_homescreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 584
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_workspacelabel"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 585
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 586
    :cond_1a
    const-string v6, "icon_compatibility"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 587
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_compatibility"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 588
    :cond_1b
    const-string v6, "custom_app_drawer_icon_open"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1c

    .line 590
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_app_drawer_icon_open"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 593
    :cond_1c
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 595
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 598
    :cond_1d
    const-string v6, "custom_app_drawer_icon_closed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 599
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1e

    .line 600
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_app_drawer_icon_closed"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 603
    :cond_1e
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 605
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 608
    :cond_1f
    const-string v6, "icon_underlay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_20

    .line 610
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_icon_underlay"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->setUnderlay()V

    .line 612
    const-string v4, "pkill com.htc.launcher;"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    const-string v4, "pkill com.htc.lockscreen"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 616
    :cond_20
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    const v6, 0x7f0a02a5

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 618
    const v6, 0x7f050052

    const/4 v7, -0x1

    .line 619
    new-instance v8, Lcom/m0narx/tweaks/fragments/TabHomescreen$6;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$6;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    .line 618
    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 642
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 616
    iput-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->underlayDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 646
    :cond_21
    const-string v4, "allapps_position"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 648
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_allapps_position"

    .line 649
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 648
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 652
    :cond_22
    const-string v4, "skip_unlock_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 653
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_skip_unlockanimation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 654
    :cond_23
    const-string v4, "sense_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 655
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_sense_anim"

    .line 656
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 655
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 658
    :cond_24
    const-string v4, "rosie_folder_center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 659
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_folder_center"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 660
    :cond_25
    const-string v4, "rosie_ringscroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 661
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_infinitive_scrolling"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 662
    :cond_26
    const-string v4, "custom_navbar_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 663
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_navbar_mode"

    .line 664
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 663
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 667
    :cond_27
    const-string v4, "hide_clock_on_app_drawer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 668
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_clock_on_app_drawer"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 671
    :cond_28
    const-string v4, "hide_labels"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 673
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 676
    :cond_29
    const-string v4, "support_landscape"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 677
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_support_landscape"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 680
    :cond_2a
    const-string v4, "folder_setting"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 681
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_setting"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 684
    :cond_2b
    const-string v4, "folder_cell_layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 685
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_cell_layout"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 688
    :cond_2c
    const-string v4, "hide_allapps_navbar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 689
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_allapps_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 691
    :cond_2d
    const-string v4, "folder_style"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 692
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_style"

    .line 693
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 692
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 695
    :cond_2e
    const-string v4, "hide_clock_on_blinkfeed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 696
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_clock_on_blinkfeed"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 698
    :cond_2f
    const-string v4, "blinkfeed_autosync_interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 699
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_autosync_interval"

    .line 700
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 699
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 702
    :cond_30
    const-string v4, "blinkfeed_max_feed_pages"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 704
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    .line 705
    div-int/lit8 v6, v6, 0x1

    .line 704
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, val:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_max_feed_pages"

    .line 711
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 710
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 715
    .end local v3           #val:Ljava/lang/String;
    :cond_31
    const-string v4, "icon_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 717
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    .line 718
    div-int/lit8 v6, v6, 0x1

    .line 717
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 721
    .restart local v3       #val:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_size"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 727
    .end local v3           #val:Ljava/lang/String;
    :cond_32
    const-string v4, "weather_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 728
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_weather_anim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 729
    :cond_33
    const-string v4, "prism_indicator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 730
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_indicator"

    .line 731
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 730
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 733
    :cond_34
    const-string v4, "always_show_weather_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 734
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_always_show_weather_anim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 735
    :cond_35
    const-string v4, "hotseat_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 736
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hotseat_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 738
    :cond_36
    const-string v4, "hotseat_slide_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 740
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SLIDE_MIN:I

    .line 741
    div-int/lit8 v6, v6, 0x64

    .line 740
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 744
    .restart local v3       #val:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    const-string v6, " sec"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 744
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hotseat_slide_timeout"

    .line 748
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 747
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 750
    .end local v3           #val:Ljava/lang/String;
    :cond_37
    const-string v4, "fade_in_hotseat_on_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 751
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_fade_in_hotseat_on_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 752
    :cond_38
    const-string v4, "fade_in_statusbar_on_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 753
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_fade_in_statusbar_on_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 754
    :cond_39
    const-string v4, "statusbar_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 755
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_statusbar_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 757
    :cond_3a
    const-string v4, "old_layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 758
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_use_fucked_up_layout"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 759
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 760
    :cond_3b
    const-string v4, "show_alarm_widget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 761
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_alarm_widget"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 762
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 763
    :cond_3c
    const-string v4, "masthead_weather_animation_interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 765
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_masthead_weather_animation_interval"

    .line 768
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0xea60

    mul-int/2addr v7, v8

    .line 767
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 770
    :cond_3d
    const-string v4, "scrolling_wallpaper"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 771
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_scrolling_wallpaper"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 772
    :cond_3e
    const-string v4, "underlay_bounds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 774
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_underlay_scale"

    .line 777
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 776
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 779
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 780
    :cond_3f
    const-string v4, "blinkfeed_hide_top"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 782
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_hide_top"

    .line 783
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 782
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 786
    :cond_40
    const-string v4, "weather_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 788
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_weather_color"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 791
    :cond_41
    const-string v4, "blinkfeed_foreground"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 793
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_foreground"

    .line 794
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 793
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 797
    :cond_42
    const-string v4, "blinkfeed_hide_top"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 799
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_hide_top"

    .line 800
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 799
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 802
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 803
    :cond_43
    const-string v4, "blinkfeed_bg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 805
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_bg"

    .line 806
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 805
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 809
    :cond_44
    const-string v4, "blinkfeed_itemsbg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 811
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_itemsbg"

    .line 812
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 811
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 815
    :cond_45
    const-string v4, "prism_overlay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 817
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_overlay"

    .line 818
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 817
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 821
    :cond_46
    const-string v4, "prism_menu_use_icons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 823
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_menu_use_icons"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 825
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 826
    :cond_47
    const-string v4, "hide_labels_all_apps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 828
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_labels_all_apps"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 830
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 831
    :cond_48
    const-string v4, "hide_hotseat_on_blinkfeed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_hotseat_on_blinkfeed"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 844
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "rosie_menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 846
    const-class v2, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->startFragmentActivity(Ljava/lang/String;)V

    .line 864
    :cond_0
    :goto_0
    return v4

    .line 847
    :cond_1
    const-string v2, "rosie_weather"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 848
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    const-string v3, "tweaks_rosie_weather"

    invoke-virtual {v2, v3, v4}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->showSelector(Ljava/lang/String;Z)V

    goto :goto_0

    .line 849
    :cond_2
    const-string v2, "prism_folder_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 850
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->makeDialog(I)V

    goto :goto_0

    .line 851
    :cond_3
    const-string v2, "blinkfeed_ratio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 852
    new-instance v1, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;-><init>(Landroid/content/Context;)V

    .line 853
    .local v1, dialog:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabHomescreen$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen$7;-><init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 859
    invoke-virtual {v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->show()V

    goto :goto_0

    .line 860
    .end local v1           #dialog:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;
    :cond_4
    const-string v2, "custom_navbar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->makeDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 455
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->refreshUnderlay()V

    .line 457
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 6
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1180
    const-string v1, "blinkfeed_max_feed_pages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    sget v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->PAGES_MIN:I

    div-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1198
    .end local v0           #val:Ljava/lang/String;
    :goto_0
    return-void

    .line 1185
    :cond_0
    const-string v1, "icon_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    sget v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SIZE_MIN:I

    div-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .restart local v0       #val:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1190
    .end local v0           #val:Ljava/lang/String;
    :cond_1
    const-string v1, "hotseat_slide_timeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    sget v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SLIDE_MIN:I

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1194
    .restart local v0       #val:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1195
    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1197
    .end local v0           #val:Ljava/lang/String;
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 1204
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->initSeeksBars()V

    .line 1206
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 1207
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 467
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 462
    return-void
.end method
