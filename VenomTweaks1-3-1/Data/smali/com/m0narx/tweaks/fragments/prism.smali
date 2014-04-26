.class public Lcom/m0narx/tweaks/fragments/prism;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "prism.java"


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

    .line 83
    const/4 v0, 0x5

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->PAGES_MIN:I

    .line 84
    const/16 v0, 0x32

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->PAGES_MAX:I

    .line 85
    const/16 v0, 0x14

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->PAGES_DEFAULT:I

    .line 88
    const/16 v0, 0x50

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    .line 89
    const/16 v0, 0x78

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MAX:I

    .line 90
    const/16 v0, 0x64

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->SIZE_DEFAULT:I

    .line 93
    sput v1, Lcom/m0narx/tweaks/fragments/prism;->SLIDE_MIN:I

    .line 94
    const/16 v0, 0x1388

    sput v0, Lcom/m0narx/tweaks/fragments/prism;->SLIDE_MAX:I

    .line 95
    sput v1, Lcom/m0narx/tweaks/fragments/prism;->SLIDE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 97
    new-instance v0, Lcom/m0narx/tweaks/fragments/prism$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragments/prism$1;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/prism;)Lcom/m0narx/framework/theme/AppIcons;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragments/prism;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragments/prism;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->navbarDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragments/prism;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->underlayDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private initSeeksBars()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xff

    .line 1010
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_foldericon_transp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1011
    .local v2, val:I
    const-string v3, "prism_foldericon_transp"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1012
    .local v0, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {v0, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1014
    move v1, v2

    .line 1015
    .local v1, progress:I
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1017
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_folderbg_transp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1018
    const-string v3, "prism_folderbg_transp"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1019
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {v0, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1021
    move v1, v2

    .line 1022
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1031
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_icon_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1032
    const-string v3, "icon_size"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1033
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

    .line 1034
    sget v3, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MAX:I

    sget v4, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1035
    div-int/lit8 v3, v2, 0x1

    sget v4, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int v1, v3, v4

    .line 1036
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1055
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_icon_underlay_scale"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1056
    const-string v3, "underlay_bounds"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 1057
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {v0, v6}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 1059
    move v1, v2

    .line 1060
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 1062
    return-void
.end method

.method private refreshUnderlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 995
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 996
    const-string v1, "tweaks_icon_underlay"

    .line 995
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 997
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 998
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 1004
    :goto_0
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->setUnderlay()V

    .line 1006
    return-void

    .line 1000
    :cond_0
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 1001
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setAppDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 812
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    .line 813
    const-string v1, "tweaks_custom_background"

    .line 812
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 814
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

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

    .line 950
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_icon_underlay"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 951
    const-string v0, "underlay_bounds"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    const-string v0, "underlay_bounds"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 1087
    const v0, 0x7f040015

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    const-string v0, "rosie"

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 823
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/framework/theme/AppIcons;->getInstance(Landroid/content/Context;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    .line 825
    new-instance v0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    .line 826
    new-instance v2, Lcom/m0narx/tweaks/fragments/prism$8;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/prism$8;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;)V

    .line 825
    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 835
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->setAppDrawer()V

    .line 837
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rosie_menu"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    const-string v2, "rosie_weather"

    aput-object v2, v0, v1

    const-string v1, "prism_folder_bg"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 838
    const-string v2, "blinkfeed_ratio"

    aput-object v2, v0, v1

    .line 837
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->OnClickListener([Ljava/lang/String;)V

    .line 841
    const-string v0, "prism_foldericon_transp"

    const-string v1, ""

    .line 842
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 841
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 843
    const-string v0, "prism_folderbg_transp"

    const-string v1, ""

    .line 844
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 843
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 846
    const-string v0, "rosie_folder_center"

    const-string v1, "tweaks_rosie_folder_center"

    .line 847
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 846
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 849
    const-string v0, "rosie_custombg"

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 851
    const-string v0, "use_custom_allapps"

    const-string v1, "tweaks_custom_background"

    .line 852
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 851
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 857
    const-string v0, "custom_app_drawer_icon_open"

    .line 858
    const-string v1, "tweaks_custom_app_drawer_icon_open"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 857
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 859
    const-string v0, "custom_app_drawer_icon_closed"

    .line 860
    const-string v1, "tweaks_custom_app_drawer_icon_closed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 859
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 864
    const-string v0, "allapps_position"

    const-string v1, "tweaks_allapps_position"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v0, "rosie_ringscroll"

    .line 870
    const-string v1, "tweaks_prism_infinitive_scrolling"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 869
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 877
    const-string v0, "hide_labels"

    const-string v1, "tweaks_hide_labels"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 879
    const-string v0, "support_landscape"

    const-string v1, "tweaks_support_landscape"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 881
    const-string v0, "folder_cell_layout"

    const-string v1, "tweaks_folder_cell_layout"

    .line 882
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 881
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 884
    const-string v0, "custom_appdrawer_shortcut"

    .line 885
    const-string v1, "tweaks_custom_appdrawer_shortcut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 884
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 887
    const-string v0, "hide_allapps_navbar"

    const-string v1, "tweaks_hide_allapps_navbar"

    .line 888
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 887
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 890
    const-string v0, "folder_style"

    const-string v1, "tweaks_folder_style"

    .line 891
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 890
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 906
    const-string v0, "prism_indicator"

    const-string v1, "tweaks_prism_indicator"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v0, "sense_anim"

    const-string v1, "tweaks_sense_anim"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string v0, "icon_size"

    const-string v1, ""

    .line 914
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    sget v3, Lcom/m0narx/tweaks/fragments/prism;->SIZE_DEFAULT:I

    div-int/lit8 v3, v3, 0x1

    .line 915
    sget v4, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    div-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 913
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 928
    const-string v0, "show_alarm_widget"

    const-string v1, "tweaks_show_alarm_widget"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 933
    const-string v0, "scrolling_wallpaper"

    const-string v1, "tweaks_scrolling_wallpaper"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 934
    const-string v0, "icon_underlay"

    const-string v1, "tweaks_icon_underlay"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 935
    const-string v0, "underlay_bounds"

    const-string v1, ""

    .line 936
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 935
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/prism;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 941
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->initSeeksBars()V

    .line 945
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->setUnderlay()V

    .line 946
    return-void
.end method

.method public makeDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 131
    :sswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 133
    const v1, 0x7f060078

    .line 134
    new-instance v2, Lcom/m0narx/tweaks/fragments/prism$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/prism$2;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 162
    :sswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 164
    const v1, 0x7f060064

    .line 165
    new-instance v2, Lcom/m0narx/tweaks/fragments/prism$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/prism$3;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 189
    :sswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    const v1, 0x7f0a0403

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 191
    const v1, 0x7f060077

    .line 192
    new-instance v2, Lcom/m0narx/tweaks/fragments/prism$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/prism$4;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 248
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 249
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 250
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 251
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 383
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/prism;->updateButtons()V

    goto :goto_0

    .line 258
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 262
    const-string v2, "/data/system/prism_folder.png"

    .line 261
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 262
    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_prism_folder_bg"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_1

    .line 268
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 272
    const-string v2, "/data/system/custom_navbar.png"

    .line 271
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 272
    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_navbar"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    const-string v0, "custom_navbar"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 281
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 285
    :sswitch_2
    if-ne p2, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 289
    const-string v2, "/data/system/app_drawer_closed.png"

    .line 288
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 289
    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_app_drawer_icon_closed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    const-string v0, "custom_app_drawer_icon_closed"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 292
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 297
    :sswitch_3
    if-ne p2, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 301
    const-string v2, "/data/system/app_drawer_open.png"

    .line 300
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_app_drawer_icon_open"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const-string v0, "custom_app_drawer_icon_open"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 304
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 309
    :sswitch_4
    if-ne p2, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 313
    const-string v2, "/data/system/background_feed_tile.png"

    .line 312
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 313
    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_feed_tile_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    const-string v0, "blinkfeed_tile_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 316
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 321
    :sswitch_5
    if-ne p2, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x438

    const/16 v4, 0x780

    .line 326
    const/16 v5, 0xc

    move-object v0, p0

    .line 325
    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBgCrop(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Landroid/net/Uri;III)V

    goto/16 :goto_1

    .line 330
    :sswitch_6
    if-ne p2, v1, :cond_0

    .line 334
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 335
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    .line 336
    const-string v1, "/data/system/background_appdrawer.png"

    .line 335
    invoke-static {v6, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->CopyImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 340
    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 341
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 346
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :sswitch_7
    if-ne p2, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    .line 350
    const-string v1, "tweaks_custom_appdrawer_pckg"

    .line 351
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 352
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    .line 353
    const-string v1, "tweaks_custom_appdrawer_activity"

    .line 354
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    .line 356
    const-string v1, "tweaks_custom_appdrawer_shortcut"

    .line 355
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    const-string v0, "custom_appdrawer_shortcut"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 358
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 360
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 366
    :sswitch_8
    if-ne p2, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "/data/system/icon_underlay.png"

    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 372
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_icon_underlay"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    const-string v0, "pkill com.htc.lockscreen"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    const-string v0, "icon_underlay"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 380
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 255
    :sswitch_data_0
    .sparse-switch
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
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 409
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 411
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    .line 412
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 414
    :cond_0
    const-string v6, "enable_landscape"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_enable_landscape"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    :cond_1
    :goto_0
    move v4, v5

    .line 776
    :goto_1
    return v4

    .line 417
    :cond_2
    const-string v6, "rosie_navbar_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 418
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_navbar_transp"

    .line 419
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 418
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 421
    :cond_3
    const-string v6, "rosie_extappdrawer"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_extappdrawer"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 424
    :cond_4
    const-string v6, "rosie_bgcolor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 425
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_bgcolor"

    .line 426
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 425
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 428
    :cond_5
    const-string v6, "rosie_custombg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 430
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 431
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_customanim"

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 435
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/prism;->makeDialog(I)V

    goto :goto_1

    .line 439
    :cond_7
    const-string v6, "rosie_scrollwall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 440
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_scrollwall"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 442
    :cond_8
    const-string v6, "hide_hs_labels"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 443
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_hs_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 445
    :cond_9
    const-string v6, "rosie_bordercolor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 446
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_bordercolor"

    .line 447
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 446
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 450
    :cond_a
    const-string v6, "custom_appdrawer_shortcut"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 451
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_b

    .line 452
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v2, myIntent:Landroid/content/Intent;
    const/16 v5, 0xe

    .line 453
    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/prism;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 458
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_b
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_appdrawer_shortcut"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 462
    :cond_c
    const-string v6, "prism_navbar_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 463
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_trans_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 466
    :cond_d
    const-string v6, "prism_foldericon_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 467
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_foldericon_transp"

    .line 468
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 467
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 470
    :cond_e
    const-string v6, "prism_folderbg_transp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 471
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_folderbg_transp"

    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 471
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 475
    :cond_f
    const-string v6, "use_custom_allapps"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 476
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 479
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->setAppDrawer()V

    goto/16 :goto_0

    .line 481
    :cond_10
    const-string v6, "exit_allapps"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 482
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_exit_allapps"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 484
    :cond_11
    const-string v6, "custom_blinkfeed_bg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 485
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 490
    :cond_12
    const-string v6, "custom_blinkfeed_tile_bg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 491
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_custom_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 496
    :cond_13
    const-string v6, "blinkfeed_tile_color"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 497
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_bgcolor"

    .line 498
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 497
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 501
    :cond_14
    const-string v6, "blinkfeed_tile_custombg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 502
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_15

    .line 503
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_feed_tile_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 506
    :cond_15
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 508
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 512
    :cond_16
    const-string v6, "blinkfeed_hide_share_button"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 513
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_hide_share_button"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 516
    :cond_17
    const-string v6, "cell_setting"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 517
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_cell_setting"

    .line 518
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 517
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 521
    :cond_18
    const-string v6, "hide_appdrawer_clock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 522
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_appdrawer_clock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 525
    :cond_19
    const-string v6, "hide_labels_homescreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 526
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_workspacelabel"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 528
    :cond_1a
    const-string v6, "icon_compatibility"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 529
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_compatibility"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 530
    :cond_1b
    const-string v6, "custom_app_drawer_icon_open"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 531
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1c

    .line 532
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_app_drawer_icon_open"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 535
    :cond_1c
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 537
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 540
    :cond_1d
    const-string v6, "custom_app_drawer_icon_closed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 541
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1e

    .line 542
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_app_drawer_icon_closed"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 545
    :cond_1e
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    .line 547
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 550
    :cond_1f
    const-string v6, "custom_navbar"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 552
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_20

    .line 553
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_custom_navbar"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    const-string v4, "pkill com.htc.launcher;"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 559
    :cond_20
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    const v6, 0x7f0a02ac

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 561
    const v6, 0x7f060051

    .line 562
    new-instance v7, Lcom/m0narx/tweaks/fragments/prism$5;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragments/prism$5;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    .line 561
    invoke-virtual {v5, v6, v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 583
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 559
    iput-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->navbarDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 588
    :cond_21
    const-string v6, "icon_underlay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_22

    .line 590
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_icon_underlay"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->setUnderlay()V

    .line 592
    const-string v4, "pkill com.htc.launcher;"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    const-string v4, "pkill com.htc.lockscreen"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 596
    :cond_22
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    const v6, 0x7f0a02a5

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 598
    const v6, 0x7f060052

    .line 599
    new-instance v7, Lcom/m0narx/tweaks/fragments/prism$6;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragments/prism$6;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    .line 598
    invoke-virtual {v5, v6, v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 622
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 596
    iput-object v5, p0, Lcom/m0narx/tweaks/fragments/prism;->underlayDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 626
    :cond_23
    const-string v4, "allapps_position"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 628
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_allapps_position"

    .line 629
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 628
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 631
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 632
    :cond_24
    const-string v4, "skip_unlock_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 633
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_skip_unlockanimation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 634
    :cond_25
    const-string v4, "sense_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 635
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_sense_anim"

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 635
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 638
    :cond_26
    const-string v4, "rosie_folder_center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 639
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_rosie_folder_center"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 640
    :cond_27
    const-string v4, "rosie_ringscroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 641
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_infinitive_scrolling"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 642
    :cond_28
    const-string v4, "custom_navbar_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 643
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_navbar_mode"

    .line 644
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 643
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 647
    :cond_29
    const-string v4, "hide_clock_on_app_drawer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 648
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_clock_on_app_drawer"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 651
    :cond_2a
    const-string v4, "hide_labels"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 653
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 656
    :cond_2b
    const-string v4, "support_landscape"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 657
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_support_landscape"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 660
    :cond_2c
    const-string v4, "folder_setting"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 661
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_setting"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 664
    :cond_2d
    const-string v4, "folder_cell_layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 665
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_cell_layout"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 668
    :cond_2e
    const-string v4, "hide_allapps_navbar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 669
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_allapps_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 671
    :cond_2f
    const-string v4, "folder_style"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 672
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_folder_style"

    .line 673
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 672
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 674
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 675
    :cond_30
    const-string v4, "hide_clock_on_blinkfeed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 676
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_clock_on_blinkfeed"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 678
    :cond_31
    const-string v4, "blinkfeed_autosync_interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 679
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_autosync_interval"

    .line 680
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 679
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 681
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 682
    :cond_32
    const-string v4, "blinkfeed_max_feed_pages"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 684
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/prism;->PAGES_MIN:I

    .line 685
    div-int/lit8 v6, v6, 0x1

    .line 684
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, val:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_blinkfeed_max_feed_pages"

    .line 691
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 690
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 693
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 696
    .end local v3           #val:Ljava/lang/String;
    :cond_33
    const-string v4, "icon_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 698
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    .line 699
    div-int/lit8 v6, v6, 0x1

    .line 698
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 702
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

    .line 704
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_size"

    .line 705
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 704
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 709
    .end local v3           #val:Ljava/lang/String;
    :cond_34
    const-string v4, "weather_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 710
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_weather_anim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 711
    :cond_35
    const-string v4, "prism_indicator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 712
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_prism_indicator"

    .line 713
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 712
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 716
    :cond_36
    const-string v4, "always_show_weather_anim"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 717
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_always_show_weather_anim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 719
    :cond_37
    const-string v4, "hotseat_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 720
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hotseat_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 723
    :cond_38
    const-string v4, "hotseat_slide_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 725
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/m0narx/tweaks/fragments/prism;->SLIDE_MIN:I

    .line 726
    div-int/lit8 v6, v6, 0x64

    .line 725
    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 729
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

    const-string v6, " sec"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hotseat_slide_timeout"

    .line 732
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 731
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 735
    .end local v3           #val:Ljava/lang/String;
    :cond_39
    const-string v4, "fade_in_hotseat_on_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 736
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_fade_in_hotseat_on_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 738
    :cond_3a
    const-string v4, "fade_in_statusbar_on_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 739
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_fade_in_statusbar_on_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 741
    :cond_3b
    const-string v4, "statusbar_slide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 742
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_statusbar_slide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 745
    :cond_3c
    const-string v4, "old_layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 746
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_use_fucked_up_layout"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 749
    :cond_3d
    const-string v4, "show_alarm_widget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 750
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_alarm_widget"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 753
    :cond_3e
    const-string v4, "masthead_weather_animation_interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 756
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_masthead_weather_animation_interval"

    .line 759
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0xea60

    mul-int/2addr v7, v8

    .line 758
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 762
    :cond_3f
    const-string v4, "scrolling_wallpaper"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 763
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_scrolling_wallpaper"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 765
    :cond_40
    const-string v4, "underlay_bounds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 768
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/prism;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_icon_underlay_scale"

    .line 771
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 770
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 783
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "rosie_menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    const-class v2, Lcom/m0narx/tweaks/fragments/prism_menu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/prism;->startFragmentActivity(Ljava/lang/String;)V

    .line 801
    :cond_0
    :goto_0
    return v4

    .line 786
    :cond_1
    const-string v2, "rosie_weather"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 787
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/prism;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    const-string v3, "tweaks_rosie_weather"

    invoke-virtual {v2, v3, v4}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->showSelector(Ljava/lang/String;Z)V

    goto :goto_0

    .line 788
    :cond_2
    const-string v2, "prism_folder_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/prism;->makeDialog(I)V

    goto :goto_0

    .line 790
    :cond_3
    const-string v2, "blinkfeed_ratio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    new-instance v1, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;-><init>(Landroid/content/Context;)V

    .line 792
    .local v1, dialog:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;
    new-instance v2, Lcom/m0narx/tweaks/fragments/prism$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/prism$7;-><init>(Lcom/m0narx/tweaks/fragments/prism;)V

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 798
    invoke-virtual {v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 390
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->refreshUnderlay()V

    .line 393
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 6
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1099
    const-string v1, "blinkfeed_max_feed_pages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    sget v1, Lcom/m0narx/tweaks/fragments/prism;->PAGES_MIN:I

    div-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1122
    .end local v0           #val:Ljava/lang/String;
    :goto_0
    return-void

    .line 1106
    :cond_0
    const-string v1, "icon_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    sget v1, Lcom/m0narx/tweaks/fragments/prism;->SIZE_MIN:I

    div-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1111
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

    .line 1113
    .end local v0           #val:Ljava/lang/String;
    :cond_1
    const-string v1, "hotseat_slide_timeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1115
    sget v1, Lcom/m0narx/tweaks/fragments/prism;->SLIDE_MIN:I

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1118
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

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1121
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
    .line 1128
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/prism;->initSeeksBars()V

    .line 1130
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 1131
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 405
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/prism;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 400
    return-void
.end method
