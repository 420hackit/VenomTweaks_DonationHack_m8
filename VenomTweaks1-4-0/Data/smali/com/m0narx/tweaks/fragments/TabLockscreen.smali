.class public Lcom/m0narx/tweaks/fragments/TabLockscreen;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabLockscreen.java"


# static fields
.field private static final ACTION_CUSTOM_APP:I = 0x4

.field private static final ACTION_CUSTOM_APP_LS:I = 0x1

.field private static final ACTION_CUSTOM_SHORTCUT_LS:I = 0xb

.field private static final PICKER_CUSTOM_APP_LS_DD:I = 0x64

.field private static final PICKER_CUSTOM_APP_LS_DOWN:I = 0x66

.field private static final PICKER_CUSTOM_APP_LS_LEFT:I = 0x67

.field private static final PICKER_CUSTOM_APP_LS_RIGHT:I = 0x68

.field private static final PICKER_CUSTOM_APP_LS_UP:I = 0x65

.field private static final PICKER_CUSTOM_LOCKBG:I = 0x8

.field private static final PICKER_CUSTOM_LOCKICON:I = 0x7

.field private static final PICKER_CUSTOM_SHORTCUT_LS_DD:I = 0x69

.field private static final PICKER_CUSTOM_SHORTCUT_LS_DOWN:I = 0x6b

.field private static final PICKER_CUSTOM_SHORTCUT_LS_LEFT:I = 0x6c

.field private static final PICKER_CUSTOM_SHORTCUT_LS_RIGHT:I = 0x6d

.field private static final PICKER_CUSTOM_SHORTCUT_LS_UP:I = 0x6a

.field private static final PICKER_GET_LPBACK:I = 0x2

.field private static final PICKER_GET_LPHOME:I = 0x0

.field private static final PICKER_GET_LPRECENT:I = 0x1

.field private static final PICKER_GET_SPBACK:I = 0x5

.field private static final PICKER_GET_SPHOME:I = 0x3

.field private static final PICKER_GET_SPHOMESWIPE:I = 0x6

.field private static final PICKER_GET_SPRECENT:I = 0x4

.field private static final REQUEST_CROP:I = 0x9

.field private static final REQUEST_CROP_ICON:I = 0xa

.field public static final S2WFiles:[Ljava/lang/String;


# instance fields
.field final DIALOG_DATE_COMPONENTS:I

.field final DIALOG_UNLOCK_BUTTONS:I

.field final DIALOG_UNLOCK_BUTTONS4:I

.field final HIDE_AMPM:I

.field final HIDE_DATE:I

.field final HIDE_TIME:I

.field final UNLOCK_BACK:I

.field final UNLOCK_HOME:I

.field final UNLOCK_MENU:I

.field private conf:Lvenom/common/settings;

.field private mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    const-string v2, "/sys/android_touch/sweep2wake/s2w_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 86
    const-string v2, "/sys/android_touch/sweep2wake"

    aput-object v2, v0, v1

    .line 84
    sput-object v0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->S2WFiles:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 42
    const/16 v0, 0x65

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->DIALOG_DATE_COMPONENTS:I

    .line 43
    const/16 v0, 0x66

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->DIALOG_UNLOCK_BUTTONS:I

    .line 44
    const/16 v0, 0x67

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->DIALOG_UNLOCK_BUTTONS4:I

    .line 45
    iput v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->HIDE_DATE:I

    .line 46
    iput v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->HIDE_TIME:I

    .line 47
    iput v3, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->HIDE_AMPM:I

    .line 49
    iput v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->UNLOCK_BACK:I

    .line 50
    iput v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->UNLOCK_HOME:I

    .line 51
    iput v3, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->UNLOCK_MENU:I

    .line 39
    return-void
.end method

.method private SetShortPressOnLockscreen()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_back_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 211
    const-string v0, "shortpress_back_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 216
    const-string v1, "tweaks_shortpress_home_ls"

    .line 215
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 217
    const-string v0, "shortpress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_home_swipe_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    const-string v0, "home_swipe"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    const-string v0, "home_swipe"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 229
    :goto_1
    return-void

    .line 213
    :cond_0
    const-string v0, "shortpress_back_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "shortpress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 226
    const-string v0, "home_swipe"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->SetShortPressOnLockscreen()V

    return-void
.end method

.method private checkLockscreenStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_aosp_lockscreen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 837
    const-string v0, "notifications"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 838
    const-string v0, "shortcuts"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 841
    const-string v0, "lockscreen_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 846
    const-string v0, "aosp_call_unlock"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 847
    const-string v0, "aosp_hide_widgets"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 848
    const-string v0, "aosp_hide_camera_widgets"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 849
    const-string v0, "aosp_maximize"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 868
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v0, "notifications"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 853
    const-string v0, "shortcuts"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 856
    const-string v0, "lockscreen_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 861
    const-string v0, "aosp_call_unlock"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 862
    const-string v0, "aosp_hide_widgets"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 863
    const-string v0, "aosp_hide_camera_widgets"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 864
    const-string v0, "aosp_maximize"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkSlide2Unlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_slide_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 277
    const-string v0, "unlock_buttons"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 279
    const-string v0, "lockscreen_capacitives_short"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_home_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_menu_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_shortpress_back_ls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "unlock_buttons"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 286
    const-string v0, "lockscreen_capacitives_short"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkStrokeFile()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 254
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/android_touch/s2w_allow_stroke"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, stroke:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_slide_unlock"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 259
    .local v0, state:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    const-string v3, " > /sys/android_touch/s2w_allow_stroke"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .end local v0           #state:I
    :cond_1
    return-void
.end method

.method private checkSweep2Wake()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_sweep_wake"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "shortpress_back_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 238
    const-string v0, "shortpress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 240
    const-string v0, "shortpress_back_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    .line 241
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    const-string v0, "shortpress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    .line 243
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    const-string v0, "shortpress_back_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 248
    const-string v0, "shortpress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static getS2WFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/m0narx/tweaks/fragments/TabLockscreen;->S2WFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 271
    const-string v2, ""

    :goto_1
    return-object v2

    .line 266
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/m0narx/tweaks/fragments/TabLockscreen;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, s2w:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    sget-object v2, Lcom/m0narx/tweaks/fragments/TabLockscreen;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStringValueByMotionDirection(I)Ljava/lang/String;
    .locals 1
    .parameter "motion"

    .prologue
    .line 458
    const-string v0, ""

    .line 460
    .local v0, direction:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return-object v0

    .line 465
    :pswitch_1
    const-string v0, "motion_up"

    .line 466
    goto :goto_0

    .line 470
    :pswitch_2
    const-string v0, "motion_down"

    .line 471
    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "motion_left"

    .line 476
    goto :goto_0

    .line 480
    :pswitch_4
    const-string v0, "motion_right"

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setM8Prefs()V
    .locals 3

    .prologue
    .line 1002
    const-string v2, "lockscreen_settings"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 1004
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1006
    const-string v2, "home_swipe_cat"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1008
    const-string v2, "longpress_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1009
    const-string v2, "lockscreen_capacitives_long"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1010
    const-string v2, "lockscreen_capacitives_short"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1026
    :goto_0
    return-void

    .line 1015
    :cond_0
    const-string v2, "motion_launch"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1017
    const-string v2, "longpress_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1018
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "recent_ls_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1020
    const-string v2, "lockscreen_capacitives_long"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1021
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "longpress_recent_ls"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1023
    const-string v2, "lockscreen_capacitives_short"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1024
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "shortpress_recent_ls"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private setWeatherClock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 993
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_hide_lockscreen_clock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 994
    const-string v0, "lockscreen_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 997
    :goto_0
    return-void

    .line 996
    :cond_0
    const-string v0, "lockscreen_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 1032
    const v0, 0x7f04000b

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    const-string v0, "lockscreen"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/16 v5, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 898
    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->conf:Lvenom/common/settings;

    .line 899
    new-instance v0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 901
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "notifications"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnClickListener([Ljava/lang/String;)V

    .line 902
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "shortcuts"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnClickListener([Ljava/lang/String;)V

    .line 903
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "lockscreen_weather"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnClickListener([Ljava/lang/String;)V

    .line 905
    const-string v0, "disable_volkeys_on_ls"

    .line 906
    const-string v1, "tweaks_disable_volkeys_on_ls"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 905
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 907
    const-string v0, "aosp_lockscreen"

    const-string v1, "tweaks_aosp_lockscreen"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 909
    const-string v0, "aosp_hide_camera_widgets"

    .line 910
    const-string v1, "tweaks_aosp_hide_camera_widgets"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 909
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 911
    const-string v0, "aosp_hide_widgets"

    const-string v1, "tweaks_aosp_hide_widgets"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    const-string v0, "lockscreen_caption"

    const-string v1, "tweaks_lockscreen_caption"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v0, "use_media"

    const-string v1, "tweaks_use_media"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 917
    const-string v0, "longpress_home_ls"

    const-string v1, "tweaks_longpress_home_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 918
    const-string v0, "longpress_recent_ls"

    const-string v1, "tweaks_longpress_recent_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 919
    const-string v0, "longpress_back_ls"

    const-string v1, "tweaks_longpress_back_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 920
    const-string v0, "shortpress_home_ls"

    const-string v1, "tweaks_shortpress_home_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 921
    const-string v0, "shortpress_recent_ls"

    const-string v1, "tweaks_shortpress_recent_ls"

    .line 922
    const/4 v2, 0x0

    .line 921
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 923
    const-string v0, "shortpress_back_ls"

    const-string v1, "tweaks_shortpress_back_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 925
    const-string v0, "aosp_call_unlock"

    const-string v1, "tweaks_aosp_call_unlock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 927
    const-string v0, "volup_toggle_flash"

    const-string v1, "tweaks_flash_volume_up"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 928
    const-string v0, "block_pulldown"

    const-string v1, "tweaks_block_pulldown"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 929
    const-string v0, "quickflash"

    const-string v1, "tweaks_quick_flash"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 931
    const-string v0, "screenoff_flashlight"

    const-string v1, "tweaks_screenoff_flashlight"

    .line 932
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 931
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 934
    const-string v0, "home_ls_duration"

    .line 935
    const-string v1, "tweaks_longress_home_ls_duration"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 934
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 936
    const-string v0, "back_ls_duration"

    .line 937
    const-string v1, "tweaks_longress_back_ls_duration"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 936
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 939
    const-string v0, "recent_ls_duration"

    .line 940
    const-string v1, "tweaks_longress_recent_ls_duration"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 939
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 942
    const-string v0, "home_swipe"

    const-string v1, "tweaks_shortpress_home_swipe_ls"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 946
    const-string v0, "aosp_maximize"

    const-string v1, "tweaks_aosp_maximize_widgets"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 968
    const-string v0, "motion_doubletap"

    const-string v1, "tweaks_motion_doubletap"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 969
    const-string v0, "motion_down"

    const-string v1, "tweaks_motion_down"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 970
    const-string v0, "motion_up"

    const-string v1, "tweaks_motion_up"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 971
    const-string v0, "motion_left"

    const-string v1, "tweaks_motion_left"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 972
    const-string v0, "motion_right"

    const-string v1, "tweaks_motion_right"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 974
    const-string v0, "pattern_lockscreen_text_below_pattern"

    const-string v1, "tweaks_pattern_lockscreen_text_below_pattern"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 975
    const-string v0, "hide_pattern_lockscreen_hints"

    const-string v1, "tweaks_hide_pattern_lockscreen_hints"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 976
    const-string v0, "pattern_lockscreen_cm_dots"

    const-string v1, "tweaks_pattern_lockscreen_cm_dots"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 978
    const-string v0, "pattern_lockscreen_trace_width"

    const-string v1, "tweaks_pattern_lockscreen_trace_width"

    const v2, 0x3e1db22d

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 985
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkSweep2Wake()V

    .line 986
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkLockscreenStyle()V

    .line 987
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->setWeatherClock()V

    .line 989
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->setM8Prefs()V

    .line 991
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 291
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    .line 296
    .local v8, cacheDir:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v11, destTmp:Ljava/io/File;
    sparse-switch p1, :sswitch_data_0

    .line 453
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->updateButtons()V

    goto :goto_0

    .line 300
    :sswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_home_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_home_ls_package"

    .line 302
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_home_ls_activity"

    .line 304
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    const-string v1, "longpress_home_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 306
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :sswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_recent_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_recent_ls_package"

    .line 311
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_recent_ls_activity"

    .line 313
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    const-string v1, "longpress_recent_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 315
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :sswitch_2
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_back_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_back_ls_package"

    .line 320
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_longpress_back_ls_activity"

    .line 322
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    const-string v1, "longpress_back_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 324
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    :sswitch_3
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_ls_package"

    .line 329
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_ls_activity"

    .line 331
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    const-string v1, "shortpress_home_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 333
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 336
    :sswitch_4
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_recent_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_recent_ls_package"

    .line 338
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_recent_ls_activity"

    .line 340
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    const-string v1, "shortpress_menu_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 342
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 345
    :sswitch_5
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_back_ls"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_back_ls_package"

    .line 347
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_back_ls_activity"

    .line 349
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 350
    const-string v1, "shortpress_back_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 351
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 354
    :sswitch_6
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_swipe_ls"

    .line 355
    const/4 v3, 0x4

    .line 354
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_swipe_ls_package"

    .line 357
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_shortpress_home_swipe_ls_activity"

    .line 359
    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    const-string v1, "shortpress_back_ls"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 361
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
    :sswitch_7
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 369
    const-string v3, "/data/system/custom_lockicon.png"

    .line 368
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 369
    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_custom_lockicon"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    const-string v1, "custom_lockicon"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 372
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 378
    :sswitch_8
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x438

    const/16 v5, 0x780

    .line 383
    const/16 v6, 0x9

    move-object v1, p0

    .line 382
    invoke-static/range {v1 .. v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBgCrop(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Landroid/net/Uri;III)V

    goto/16 :goto_1

    .line 387
    :sswitch_9
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 392
    .local v7, bg:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    .line 393
    const-string v2, "/data/system/background_lockscreen.png"

    .line 392
    invoke-static {v7, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->CopyImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_lockscreen_background"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    const-string v1, "lockscreen_background"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 408
    .end local v7           #bg:Landroid/graphics/Bitmap;
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->getStringValueByMotionDirection(I)Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, motionCustomApp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tweaks_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, customAppKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 424
    .end local v9           #customAppKey:Ljava/lang/String;
    .end local v12           #motionCustomApp:Ljava/lang/String;
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->getStringValueByMotionDirection(I)Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, motionShortcut:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tweaks_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, customShortcutKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const/16 v2, 0xb

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    const-string v3, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    invoke-virtual {p0, v13}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 433
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_a
        0x67 -> :sswitch_a
        0x68 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_b
        0x6c -> :sswitch_b
        0x6d -> :sswitch_b
    .end sparse-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "o"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 499
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 501
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    .line 502
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 504
    :cond_0
    const-string v6, "aosp_lockscreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 515
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkLockscreenStyle()V

    .line 518
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    :cond_1
    :goto_0
    move v4, v5

    .line 830
    :goto_1
    return v4

    .line 519
    :cond_2
    const-string v6, "lockscreen_caption"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 520
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_caption"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 521
    :cond_3
    const-string v6, "lockscreen_hide_opname"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 522
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_hide_opname"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 524
    :cond_4
    const-string v6, "lockscreen_hide_navbar"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 525
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_hide_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 526
    :cond_5
    const-string v6, "use_media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 527
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_use_media"

    .line 528
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 527
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 529
    :cond_6
    const-string v6, "longpress_home_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 530
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 531
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longpress_home_ls"

    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 531
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 534
    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v4}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 538
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_8
    const-string v6, "longpress_recent_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 539
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 540
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longpress_recent_ls"

    .line 541
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 540
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 543
    :cond_9
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 547
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_a
    const-string v6, "longpress_back_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 548
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 549
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longpress_back_ls"

    .line 550
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 549
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 552
    :cond_b
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 556
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_c
    const-string v6, "shortpress_home_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 557
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 558
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_shortpress_home_ls"

    .line 559
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 558
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 561
    :cond_d
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 565
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_e
    const-string v6, "shortpress_recent_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 566
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 567
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_shortpress_recent_ls"

    .line 568
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 567
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 570
    :cond_f
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 574
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_10
    const-string v6, "shortpress_back_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 575
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 576
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_shortpress_back_ls"

    .line 577
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 576
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 579
    :cond_11
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v5, 0x5

    invoke-virtual {p0, v3, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 583
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_12
    const-string v6, "unlock_slide"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 584
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_slide_unlock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_home_ls"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_menu_ls"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_back_ls"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkSlide2Unlock()V

    goto/16 :goto_0

    .line 592
    :cond_13
    const-string v6, "lockscreen_hide_labels"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 593
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_hide_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    const-string v4, "pkill com.htc.lockscreen"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 595
    :cond_14
    const-string v6, "lockscreen_orientation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 596
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_orientation"

    .line 597
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 596
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 599
    :cond_15
    const-string v6, "sweep_wake_pref"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 600
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_sweep_wake"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "echo "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->getS2WFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 602
    :cond_16
    const-string v6, "aosp_call_unlock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 603
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_call_unlock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 605
    :cond_17
    const-string v6, "disable_volkeys_on_ls"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 606
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_disable_volkeys_on_ls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 607
    :cond_18
    const-string v6, "lockscreen_clock_style"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 608
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_clock_style"

    .line 609
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 608
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    const-string v4, "pkill com.htc.lockscreen"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 611
    :cond_19
    const-string v6, "volup_toggle_flash"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 612
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_flash_volume_up"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 613
    :cond_1a
    const-string v6, "block_pulldown"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 614
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_block_pulldown"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 615
    :cond_1b
    const-string v6, "quickflash"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 616
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_quick_flash"

    .line 617
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 616
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 618
    :cond_1c
    const-string v6, "screenoff_flashlight"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 619
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_screenoff_flashlight"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 620
    :cond_1d
    const-string v6, "aosp_hide_camera_widgets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 621
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_hide_camera_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 622
    :cond_1e
    const-string v6, "aosp_hide_widgets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 623
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_hide_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 624
    :cond_1f
    const-string v6, "home_ls_duration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 625
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longress_home_ls_duration"

    .line 626
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 625
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 627
    :cond_20
    const-string v6, "back_ls_duration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 628
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longress_back_ls_duration"

    .line 629
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 628
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 630
    :cond_21
    const-string v6, "recent_ls_duration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 631
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_longress_recent_ls_duration"

    .line 632
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 631
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 633
    :cond_22
    const-string v6, "home_swipe"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 635
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v7, "htc_home_swipe"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 638
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_shortpress_home_swipe_ls"

    .line 639
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 638
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 641
    :cond_23
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v5, 0x6

    invoke-virtual {p0, v3, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 646
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_24
    const-string v6, "hide_lockscreen_weatherclock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 647
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_lockscreen_clock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    const-string v4, "pkill com.htc.lockscreen"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 649
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->setWeatherClock()V

    goto/16 :goto_0

    .line 650
    :cond_25
    const-string v6, "aosp_hide_page_hints"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 651
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_hide_hints"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 653
    :cond_26
    const-string v6, "quick_unlock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 654
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_quick_unlock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 655
    :cond_27
    const-string v6, "aosp_maximize"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 656
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_maximize_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 657
    :cond_28
    const-string v6, "aosp_all_widgets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 658
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_aosp_all_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 659
    :cond_29
    const-string v6, "sense_maximize"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 660
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_sense_maximize_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 661
    :cond_2a
    const-string v6, "sense_all_widgets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 662
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_sense_all_widgets"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 663
    :cond_2b
    const-string v6, "hide_navbar_lockscreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 664
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_navbar_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 665
    :cond_2c
    const-string v6, "hide_unlock_hint"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 666
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_unlock_hint"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 667
    :cond_2d
    const-string v6, "always_show_widget"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 668
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_always_show_widget_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 669
    :cond_2e
    const-string v6, "custom_lockicon"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 670
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2f

    .line 671
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_custom_lockicon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 674
    :cond_2f
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 679
    :cond_30
    const-string v6, "bypass_lockscreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 680
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_bypass_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 681
    :cond_31
    const-string v6, "gotowidget"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 682
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_gotowidget"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 683
    :cond_32
    const-string v6, "lockscreen_background"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 684
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_33

    .line 685
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_background"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 687
    :cond_33
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 691
    :cond_34
    const-string v6, "show_alarm_lockscreen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 692
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_alarm_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 694
    :cond_35
    const-string v6, "lockscreen_background_overlay_color"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 695
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_background_overlay_color"

    .line 696
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 695
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 698
    :cond_36
    const-string v6, "motion_down"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 702
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 703
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    .local v2, intent:Landroid/content/Intent;
    const/16 v5, 0x66

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 707
    .end local v2           #intent:Landroid/content/Intent;
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 709
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 710
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x6b

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 714
    .end local v2           #intent:Landroid/content/Intent;
    :cond_38
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_motion_down"

    .line 715
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 714
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 717
    :cond_39
    const-string v6, "motion_up"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 722
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    const v6, 0x7f0a04a5

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 724
    const v6, 0x7f0a04a7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 725
    const v6, 0x7f0a0056

    new-instance v7, Lcom/m0narx/tweaks/fragments/TabLockscreen$5;

    invoke-direct {v7, p0, p2, p1}, Lcom/m0narx/tweaks/fragments/TabLockscreen$5;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;Ljava/lang/Object;Lcom/htc/preference/HtcPreference;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 749
    const v6, 0x7f0a001d

    .line 750
    new-instance v7, Lcom/m0narx/tweaks/fragments/TabLockscreen$6;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen$6;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 749
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 755
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 761
    :cond_3a
    const-string v6, "motion_left"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 765
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 766
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 767
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x67

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 770
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 772
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 773
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x6c

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 776
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3c
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_motion_left"

    .line 777
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 776
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 779
    :cond_3d
    const-string v6, "motion_right"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 783
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 784
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x68

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 788
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 790
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x6d

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 794
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3f
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_motion_right"

    .line 795
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 794
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 797
    :cond_40
    const-string v6, "motion_doubletap"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 801
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 802
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x64

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 806
    .end local v2           #intent:Landroid/content/Intent;
    :cond_41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 808
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v5, 0x69

    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 812
    .end local v2           #intent:Landroid/content/Intent;
    :cond_42
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_motion_doubletap"

    .line 813
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 812
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 815
    :cond_43
    const-string v4, "pattern_lockscreen_text_below_pattern"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 816
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_pattern_lockscreen_text_below_pattern"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 818
    :cond_44
    const-string v4, "hide_pattern_lockscreen_hints"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 819
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_hide_pattern_lockscreen_hints"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 821
    :cond_45
    const-string v4, "pattern_lockscreen_cm_dots"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 822
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_pattern_lockscreen_cm_dots"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 824
    :cond_46
    const-string v4, "pattern_lockscreen_trace_width"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 825
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_pattern_lockscreen_trace_width"

    .line 826
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 825
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 872
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "unlock_buttons"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->showDialog(I)V

    .line 889
    :cond_0
    :goto_0
    return v4

    .line 875
    :cond_1
    const-string v2, "lockscreen_hide_datetime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 876
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->showDialog(I)V

    goto :goto_0

    .line 877
    :cond_2
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 880
    .local v1, config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_lockscreen_notifications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v2, "title"

    const v3, 0x7f0a01ad

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 884
    .end local v1           #config:Landroid/content/Intent;
    :cond_3
    const-string v2, "shortcuts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 885
    const-class v2, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_4
    const-string v2, "lockscreen_weather"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    const-string v3, "tweaks_lockscreen_weather"

    invoke-virtual {v2, v3, v4}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->showSelector(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 205
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkSweep2Wake()V

    .line 207
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1044
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->checkSweep2Wake()V

    .line 1050
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 1052
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public showDialog(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, SWIcons:[Z
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 94
    :pswitch_0
    new-array v0, v1, [Z

    .line 95
    aput-boolean v3, v0, v3

    .line 96
    aput-boolean v3, v0, v4

    .line 97
    aput-boolean v3, v0, v5

    .line 98
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 99
    const-string v2, "tweaks_lockscreen_hide_date"

    .line 98
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 100
    aput-boolean v4, v0, v3

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 103
    const-string v2, "tweaks_lockscreen_hide_time"

    .line 102
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 104
    aput-boolean v4, v0, v4

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 107
    const-string v2, "tweaks_lockscreen_hide_ampm"

    .line 106
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 108
    aput-boolean v4, v0, v5

    .line 111
    :cond_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 113
    const v2, 0x7f05001f

    .line 115
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabLockscreen$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen$1;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 113
    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 139
    const v2, 0x7f0a0056

    .line 140
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabLockscreen$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen$2;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 148
    :pswitch_1
    new-array v0, v1, [Z

    .line 149
    aput-boolean v3, v0, v4

    .line 150
    aput-boolean v3, v0, v3

    .line 151
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 152
    const-string v2, "tweaks_shortpress_back_ls"

    .line 151
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 153
    aput-boolean v4, v0, v3

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 156
    const-string v2, "tweaks_shortpress_home_ls"

    .line 155
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 157
    aput-boolean v4, v0, v4

    .line 160
    :cond_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 162
    const v2, 0x7f050012

    .line 164
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabLockscreen$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen$3;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 162
    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 190
    const v2, 0x7f0a0056

    .line 191
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabLockscreen$4;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabLockscreen$4;-><init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 495
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 490
    return-void
.end method
