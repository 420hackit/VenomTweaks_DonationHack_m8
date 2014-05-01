.class public Lcom/m0narx/tweaks/fragments/TabMisc;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabMisc.java"


# static fields
.field private static final CRITICAL_LVL_DEFAULT:I = 0x5

.field private static final CRITICAL_LVL_MAX:I = 0x63

.field private static final CRITICAL_LVL_MIN:I = 0x0

.field private static final CRITICAL_LVL_STEP:I = 0x1

.field private static final DIALOG_AIRPLANEMODE_ITEMS:I = 0xe

.field private static final DIALOG_APM_ITEMS:I = 0xb

.field private static final DIALOG_REBOOT_ITEMS:I = 0xd

.field private static final DIALOG_ROTATIONS:I = 0xc

.field private static final ITEM_AEROPLANE:I = 0x1

.field private static final ITEM_BOOTLOADER:I = 0x3

.field private static final ITEM_BT:I = 0x1

.field private static final ITEM_BT_VALUE:Ljava/lang/String; = "bluetooth"

.field private static final ITEM_CELL:I = 0x0

.field private static final ITEM_CELL_VALUE:Ljava/lang/String; = "cell"

.field private static final ITEM_DATA:I = 0x2

.field private static final ITEM_HOTREBOOT:I = 0x0

.field private static final ITEM_KIDS:I = 0x4

.field private static final ITEM_NFC:I = 0x2

.field private static final ITEM_NFC_VALUE:Ljava/lang/String; = "nfc"

.field private static final ITEM_RECOVERY:I = 0x2

.field private static final ITEM_SAFEMODE:I = 0x1

.field private static final ITEM_SCREENSHOT:I = 0x0

.field private static final ITEM_SOUND:I = 0x3

.field private static final ITEM_WIFI:I = 0x4

.field private static final ITEM_WIFI_VALUE:Ljava/lang/String; = "wifi"

.field private static final ITEM_WIMAX:I = 0x3

.field private static final ITEM_WIMAX_VALUE:Ljava/lang/String; = "wimax"

.field private static final PICKER_GET_CLOCK_APP:I = 0x1

.field private static final PICKER_GET_DATE_APP:I = 0x3

.field private static final PICKER_GET_WEATHER_APP:I = 0x2

.field private static final WARNING_LVL_DEFAULT:I = 0xf

.field private static final WARNING_LVL_MAX:I = 0x63

.field private static final WARNING_LVL_MIN:I = 0x0

.field private static final WARNING_LVL_STEP:I = 0x1


# instance fields
.field private conf:Lvenom/common/settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private SetQuietHoursSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 823
    const v7, 0x7f0a021d

    .line 822
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 825
    const v7, 0x7f0a0220

    .line 824
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, disabled:Ljava/lang/String;
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 828
    const-string v6, "quiet_hours"

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 844
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_start"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 832
    .local v4, start:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_end"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 834
    .local v1, end:I
    const-string v5, ""

    .line 835
    .local v5, startTime:Ljava/lang/String;
    const-string v2, ""

    .line 837
    .local v2, endTime:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/TabMisc;->returnTime(I)Ljava/lang/String;

    move-result-object v5

    .line 839
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabMisc;->returnTime(I)Ljava/lang/String;

    move-result-object v2

    .line 841
    const-string v6, "quiet_hours"

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 842
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 841
    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private SetScreenshot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_screenshot_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 796
    const-string v0, "album_screenshot"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    const-string v0, "album_screenshot"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setCrtOff()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 804
    const-string v3, "crt_off_animation"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 806
    .local v2, pref:Lcom/htc/preference/HtcListPreference;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_crtoff"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 807
    .local v0, crtOff:I
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_crt_style"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 809
    .local v1, crtStyle:I
    if-nez v0, :cond_0

    .line 810
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 818
    :goto_0
    return-void

    .line 812
    :cond_0
    if-nez v1, :cond_1

    .line 813
    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_1
    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 853
    const v0, 0x7f04000e

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    const-string v0, "misc"

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 701
    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->conf:Lvenom/common/settings;

    .line 703
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "autobacklight_brightness"

    aput-object v1, v0, v4

    .line 704
    const-string v1, "minfree"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "apm_items"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reboot_items"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fakeimei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 705
    const-string v2, "quiet_hours"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notification_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "airplanemode_radios"

    aput-object v2, v0, v1

    .line 703
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnClickListener([Ljava/lang/String;)V

    .line 708
    const-string v0, "fast_dormancy"

    const-string v1, "tweaks_dormancy"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 710
    const-string v0, "volume_sound_off"

    const-string v1, "tweaks_volume_sound_off"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 711
    const-string v0, "pctool_enable"

    const-string v1, "tweaks_pctool_enable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 713
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->conf:Lvenom/common/settings;

    iget-boolean v0, v0, Lvenom/common/settings;->HAS_NFC:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-string v1, "com.android.nfc"

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "nfc_mode"

    const-string v1, "tweaks_nfc_mode"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 720
    :goto_0
    const-string v0, "signal_icons"

    const-string v1, "tweaks_signal_icons"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 721
    const-string v0, "force_wifi_n"

    const-string v1, "tweaks_force_wifi_n"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListenerGlobal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 725
    const-string v0, "always_display_data"

    const-string v1, "tweaks_always_display_data"

    .line 726
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 725
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 729
    const-string v0, "flash_charging"

    const-string v1, "tweaks_flash_during_charging"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 730
    const-string v0, "flash_duration"

    const-string v1, "tweaks_led_flash_duration"

    const-string v2, "5"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "use_power_home_screenshot"

    .line 733
    const-string v1, "tweaks_home_power_screenshot"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 732
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 736
    const-string v0, "block_pulldown_during_calls"

    .line 737
    const-string v1, "tweaks_block_pulldown_during_calls"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 736
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 739
    const-string v0, "hide_powersaver"

    const-string v1, "tweaks_hide_powersaver"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 741
    const-string v0, "remove_contact_mask"

    const-string v1, "tweaks_remove_contact_mask"

    .line 742
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 741
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 744
    const-string v0, "use_jb_toast_style"

    const-string v1, "tweaks_use_jb_toast_style"

    .line 745
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 744
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 747
    const-string v0, "disable_noise_suppression"

    .line 748
    const-string v1, "tweaks_disable_noise_suppression"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 747
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 750
    const-string v0, "apm_lockscreen"

    const-string v1, "tweaks_apm_lockscreen"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 752
    const-string v0, "crt_off_animation"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 753
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->setCrtOff()V

    .line 755
    const-string v0, "signal_bar_count"

    const-string v1, "tweaks_signal_bar_count"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 757
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "hide_notifs"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnClickListener([Ljava/lang/String;)V

    .line 758
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "system_broadcasts"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnClickListener([Ljava/lang/String;)V

    .line 760
    const-string v0, "wifi_activity"

    const-string v1, "tweaks_wifi_activity"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 762
    const-string v0, "hide_volume_warning"

    const-string v1, "tweaks_hide_volume_warning"

    .line 763
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 762
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 765
    const-string v0, "phone_button_icons"

    const-string v1, "tweaks_phone_button_icons"

    .line 766
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 765
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 770
    const-string v0, "custom_clock"

    const-string v1, "tweaks_custom_clock_app"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 771
    const-string v0, "custom_weather"

    const-string v1, "tweaks_custom_weather_app"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 772
    const-string v0, "custom_calendar"

    const-string v1, "tweaks_custom_date_app"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 774
    const-string v0, "notify_screenshot"

    const-string v1, "tweaks_notify_screenshot"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 775
    const-string v0, "album_screenshot"

    const-string v1, "tweaks_album_screenshot"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 779
    const-string v0, "new_task"

    const-string v1, "tweaks_new_task"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    const-string v0, "apm_screenrecord"

    const-string v1, "tweaks_apm_screenrecord"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 782
    const-string v0, "screenrecord_record_audio"

    const-string v1, "tweaks_screenrecord_record_audio"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    const-string v0, "screenrecord_bitrate"

    const-string v1, "tweaks_screenrecord_bitrate"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, 0x3d0900

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 786
    const-string v0, "screenshot_action"

    const-string v1, "tweaks_screenshot_action"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 787
    const-string v0, "screenshot_quiet"

    const-string v1, "tweaks_screenshot_quiet"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 789
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetScreenshot()V

    .line 790
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetQuietHoursSummary()V

    .line 791
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    const-string v1, "system"

    const-string v2, "nfc_mode"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Customization;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public makeDialog(I)V
    .locals 13
    .parameter "id"

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const/4 v0, 0x0

    .line 82
    .local v0, APMItems:[Z
    const/4 v9, 0x5

    new-array v0, v9, [Z

    .line 84
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 85
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 86
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 87
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 88
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 90
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_screenshot"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 91
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 93
    :cond_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_aeroplane"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 94
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 96
    :cond_1
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_data"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    .line 97
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 99
    :cond_2
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_sound"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    .line 100
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 102
    :cond_3
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_kidmode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 103
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 106
    :cond_4
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    const v10, 0x7f0a0075

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 108
    const v10, 0x7f050025

    .line 109
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$1;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$1;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 108
    invoke-virtual {v9, v10, v0, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 135
    const v10, 0x7f0a0056

    .line 136
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$2;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$2;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 135
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 141
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 144
    .end local v0           #APMItems:[Z
    :pswitch_1
    const/4 v4, 0x0

    .line 145
    .local v4, RebootItems:[Z
    const/4 v9, 0x4

    new-array v4, v9, [Z

    .line 147
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 148
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 149
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 150
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 152
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_hotreboot"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    .line 153
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 155
    :cond_5
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_safemode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_6

    .line 156
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 158
    :cond_6
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_recovery"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_7

    .line 159
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 161
    :cond_7
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_bootloader"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_8

    .line 162
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 165
    :cond_8
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    const v10, 0x7f0a033d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 167
    const v10, 0x7f05006a

    .line 169
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$3;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$3;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 167
    invoke-virtual {v9, v10, v4, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 193
    const v10, 0x7f0a0056

    .line 194
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$4;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$4;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 193
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 199
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 203
    .end local v4           #RebootItems:[Z
    :pswitch_2
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 204
    const-string v10, "tweaks_allowed_rotations"

    const/16 v11, 0xb

    .line 203
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 205
    .local v6, allowed_rotations:I
    const/4 v9, 0x3

    new-array v3, v9, [Z

    .line 206
    .local v3, RTItems:[Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v9, v3

    if-lt v8, v9, :cond_9

    .line 210
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const v10, 0x7f0a01cd

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 212
    const v10, 0x7f05002e

    .line 214
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$5;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$5;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 212
    invoke-virtual {v9, v10, v3, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 232
    const v10, 0x7f0a0056

    .line 233
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$6;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/TabMisc$6;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V

    .line 232
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 238
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 207
    :cond_9
    const-wide/high16 v9, 0x4000

    add-int/lit8 v11, v8, 0x1

    int-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v7, v9

    .line 208
    .local v7, flag:I
    and-int v9, v6, v7

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_2
    aput-boolean v9, v3, v8

    .line 206
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 208
    :cond_a
    const/4 v9, 0x0

    goto :goto_2

    .line 243
    .end local v3           #RTItems:[Z
    .end local v6           #allowed_rotations:I
    .end local v7           #flag:I
    .end local v8           #i:I
    :pswitch_3
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 244
    const-string v10, "airplane_mode_radios"

    .line 243
    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, airplaneModeItems:Ljava/lang/String;
    const/4 v9, 0x5

    new-array v1, v9, [Z

    .line 250
    .local v1, AirplaneModeItems:[Z
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 251
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 252
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 253
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 254
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 256
    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/String;

    .line 258
    .local v2, AirplaneModeValues:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "cell"

    aput-object v10, v2, v9

    .line 259
    const/4 v9, 0x1

    const-string v10, "bluetooth"

    aput-object v10, v2, v9

    .line 260
    const/4 v9, 0x2

    const-string v10, "nfc"

    aput-object v10, v2, v9

    .line 261
    const/4 v9, 0x3

    const-string v10, "wimax"

    aput-object v10, v2, v9

    .line 262
    const/4 v9, 0x4

    const-string v10, "wifi"

    aput-object v10, v2, v9

    .line 264
    const-string v9, "cell"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 265
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 268
    :cond_b
    const-string v9, "bluetooth"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 269
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 272
    :cond_c
    const-string v9, "nfc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 273
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 276
    :cond_d
    const-string v9, "wimax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 277
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 280
    :cond_e
    const-string v9, "wifi"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 281
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 286
    :cond_f
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    const v10, 0x7f0a0466

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 288
    const v10, 0x7f05008d

    .line 290
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$7;

    invoke-direct {v11, p0, v1}, Lcom/m0narx/tweaks/fragments/TabMisc$7;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;[Z)V

    .line 288
    invoke-virtual {v9, v10, v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 298
    const v10, 0x7f0a0056

    .line 299
    new-instance v11, Lcom/m0narx/tweaks/fragments/TabMisc$8;

    invoke-direct {v11, p0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabMisc$8;-><init>(Lcom/m0narx/tweaks/fragments/TabMisc;[Z[Ljava/lang/String;)V

    .line 298
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 318
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x1

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 350
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 354
    const-string v1, "tweaks_custom_clock_package"

    .line 355
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 357
    const-string v1, "tweaks_custom_clock_activity"

    .line 358
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 359
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 360
    const-string v1, "tweaks_custom_clock_app"

    .line 359
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    const-string v0, "custom_clock"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 362
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 364
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 368
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 372
    const-string v1, "tweaks_custom_weather_package"

    .line 373
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 375
    const-string v1, "tweaks_custom_weather_activity"

    .line 376
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 378
    const-string v1, "tweaks_custom_weather_app"

    .line 377
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    const-string v0, "custom_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 380
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 382
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 385
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 389
    const-string v1, "tweaks_custom_date_package"

    .line 390
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 392
    const-string v1, "tweaks_custom_date_activity"

    .line 393
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 395
    const-string v1, "tweaks_custom_date_app"

    .line 394
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    const-string v0, "custom_calendar"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 397
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 405
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "true"

    if-ne v7, v10, :cond_2

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 408
    .local v1, bvar:Ljava/lang/Integer;
    const-string v7, "overscroll_color"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 409
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_overscroll_color"

    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 409
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    :cond_0
    :goto_1
    move v9, v8

    .line 648
    :cond_1
    :goto_2
    return v9

    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_2
    move v7, v9

    .line 406
    goto :goto_0

    .line 412
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_3
    const-string v7, "sms_screenon"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 413
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_sms_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 414
    :cond_4
    const-string v7, "sms_use_smiles_button"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 415
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_sms_use_smiles_button"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 416
    :cond_5
    const-string v7, "htc_animation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 417
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_htc_animation"

    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 417
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_1

    .line 420
    :cond_6
    const-string v7, "use_bravia"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 421
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 422
    const-string v7, "ro.service.swiqi.supported"

    const-string v9, "true"

    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_3
    const-string v7, "persist.service.swiqi.enable"

    .line 427
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 426
    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "setprop persist.service.swiqi.enable "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 428
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 424
    :cond_7
    const-string v7, "ro.service.swiqi.supported"

    const-string v9, "false"

    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 431
    :cond_8
    const-string v7, "fast_dormancy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 432
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_dormancy"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 434
    :cond_9
    const-string v7, "disable_smartsync"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 435
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_disable_smartsync"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "smartsync_turn_off_wifi"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_a

    move v9, v8

    :cond_a
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 437
    :cond_b
    const-string v7, "camera_use_volume"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 438
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_camera_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 439
    :cond_c
    const-string v7, "camera_hidebar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 440
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_camera_hidebar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 441
    :cond_d
    const-string v7, "volume_sound_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 442
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_volume_sound_off"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 443
    :cond_e
    const-string v7, "animations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 444
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_animations"

    .line 445
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 444
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 446
    :cond_f
    const-string v7, "pctool_enable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 447
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_pctool_enable"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 450
    :cond_10
    const-string v7, "nfc_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 451
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_nfc_mode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 452
    :cond_11
    const-string v7, "force_wifi_n"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 453
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_15

    .line 454
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    invoke-static {v7, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, currcode:Ljava/lang/String;
    if-eqz v2, :cond_12

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 456
    :cond_12
    const-string v2, "EU"

    .line 458
    :cond_13
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code_original"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    const-string v10, "EU"

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    :cond_14
    :goto_4
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_force_wifi_n"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 461
    .end local v2           #currcode:Ljava/lang/String;
    :cond_15
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 462
    const-string v9, "wifi_country_code_original"

    .line 461
    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2       #currcode:Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 464
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 468
    .end local v2           #currcode:Ljava/lang/String;
    :cond_16
    const-string v7, "phone_rotation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 469
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_phone_rotation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 470
    :cond_17
    const-string v7, "att_signalstrength"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 471
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_att_signalstrength"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 472
    :cond_18
    const-string v7, "always_display_data"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 473
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_always_display_data"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 474
    :cond_19
    const-string v7, "signal_icons"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 475
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_signal_icons"

    .line 476
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 475
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 477
    :cond_1a
    const-string v7, "crt_on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 478
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crton"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 479
    :cond_1b
    const-string v7, "crt_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 480
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crtoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 481
    :cond_1c
    const-string v7, "crt_style"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 482
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crt_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 483
    :cond_1d
    const-string v7, "flash_charging"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 484
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_flash_during_charging"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 485
    :cond_1e
    const-string v7, "flash_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 487
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabMisc;->isInteger(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 490
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_led_flash_duration"

    .line 491
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 490
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 495
    :cond_1f
    const-string v7, "use_power_home_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 496
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_home_power_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    const-string v7, "ro.htc.framework.screencapture"

    .line 499
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 498
    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "setprop ro.htc.framework.screencapture "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 503
    :cond_20
    const-string v7, "exchange_disable_minpasswordlength"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 504
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_exchange_disable_minpasswordlength"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 505
    :cond_21
    const-string v7, "exchange_disable_passwordquality"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 506
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_exchange_disable_passwordquality"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 507
    :cond_22
    const-string v7, "show_smileys"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 508
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_show_smileys"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 509
    :cond_23
    const-string v7, "flash_speed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 510
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_buttons_blink_timeout"

    .line 511
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 510
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 512
    :cond_24
    const-string v7, "block_pulldown_during_calls"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 513
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_block_pulldown_during_calls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 514
    :cond_25
    const-string v7, "hide_powersaver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 515
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_hide_powersaver"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 516
    :cond_26
    const-string v7, "bt_no_screenon"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 517
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_bt_disable_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 518
    :cond_27
    const-string v7, "remove_contact_mask"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 519
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_remove_contact_mask"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 520
    :cond_28
    const-string v7, "use_jb_toast_style"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 521
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_use_jb_toast_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 522
    :cond_29
    const-string v7, "disable_noise_suppression"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 523
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_disable_noise_suppression"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 524
    :cond_2a
    const-string v7, "apm_lockscreen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 525
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_apm_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 526
    :cond_2b
    const-string v7, "crt_off_animation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 528
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 530
    .local v6, value:I
    if-nez v6, :cond_2c

    .line 531
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crtoff"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    :cond_2c
    if-ne v6, v8, :cond_2d

    .line 534
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crtoff"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crt_style"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    :cond_2d
    if-ne v6, v11, :cond_0

    .line 539
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crtoff"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crt_style"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 543
    .end local v6           #value:I
    :cond_2e
    const-string v7, "signal_bar_count"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 544
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_signal_bar_count"

    .line 545
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 544
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 546
    :cond_2f
    const-string v7, "wifi_activity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 547
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_wifi_activity"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 548
    :cond_30
    const-string v7, "hide_volume_warning"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 549
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_hide_volume_warning"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 550
    :cond_31
    const-string v7, "lowbattery_warning"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 552
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v5, v7, 0x1

    .line 556
    .local v5, val:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_lowbattery_warning"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 562
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #val:I
    :cond_32
    const-string v7, "lowbattery_critical"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 564
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v5, v7, 0x1

    .line 568
    .restart local v5       #val:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4       #summary:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_lowbattery_critical"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 574
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #val:I
    :cond_33
    const-string v7, "flashlight_flash_speed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 575
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_flash_blink_timeout"

    .line 576
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 575
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 577
    :cond_34
    const-string v7, "phone_button_icons"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 578
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_phone_button_icons"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    const-string v7, "pkill com.android.phone;pkill com.htc.htcdialer;"

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 582
    :cond_35
    const-string v7, "custom_clock"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 583
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_36

    .line 584
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-class v10, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 589
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_36
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_clock_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 593
    :cond_37
    const-string v7, "custom_weather"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 594
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_38

    .line 595
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v11}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 600
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_38
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_weather_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 604
    :cond_39
    const-string v7, "custom_calendar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 605
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_3a

    .line 606
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v3, v7}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 611
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_3a
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_date_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 615
    :cond_3b
    const-string v7, "notify_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 616
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 618
    :cond_3c
    const-string v7, "album_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 619
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_album_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 621
    :cond_3d
    const-string v7, "disable_lowbatt_led"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 622
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_disable_lowbatt_led"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 624
    :cond_3e
    const-string v7, "new_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 625
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_new_task"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 627
    :cond_3f
    const-string v7, "apm_screenrecord"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 628
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_apm_screenrecord"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 630
    :cond_40
    const-string v7, "screenrecord_record_audio"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 631
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenrecord_record_audio"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 633
    :cond_41
    const-string v7, "screenrecord_bitrate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 634
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenrecord_bitrate"

    .line 635
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 634
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 637
    :cond_42
    const-string v7, "screenshot_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 638
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenshot_action"

    .line 639
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 638
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetScreenshot()V

    goto/16 :goto_1

    .line 643
    :cond_43
    const-string v7, "screenshot_quiet"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 644
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenshot_quiet"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 653
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "apm_items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V

    .line 692
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 656
    :cond_1
    const-string v2, "reboot_items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V

    goto :goto_0

    .line 658
    :cond_2
    const-string v2, "allowed_rotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V

    goto :goto_0

    .line 661
    :cond_3
    const-string v2, "airplanemode_radios"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 662
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V

    goto :goto_0

    .line 663
    :cond_4
    const-string v2, "autobacklight_brightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 664
    const-class v2, Lcom/m0narx/tweaks/fragments/TabMiscAutobrightness_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_5
    const-string v2, "minfree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 666
    const-class v2, Lcom/m0narx/tweaks/fragments/TabMiscMinfree_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_6
    const-string v2, "fakeimei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 668
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 669
    :cond_7
    const-string v2, "volumesteps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 670
    const-class v2, Lcom/m0narx/tweaks/fragments/TabMiscVolume_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_8
    const-string v2, "quiet_hours"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 672
    const-class v2, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startFragmentActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_9
    const-string v2, "notification_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 675
    const-class v2, Lcom/m0narx/tweaks/fragments/TabMiscNotification_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabMisc;->startFragmentActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    :cond_a
    const-string v2, "hide_notifs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 678
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v1, config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_hide_notifs_packages"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v2, "title"

    const v3, 0x7f0a0302

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 683
    .end local v1           #config:Landroid/content/Intent;
    :cond_b
    const-string v2, "system_broadcasts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMisc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .restart local v1       #config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_system_broadcast_packages"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v2, "title"

    const v3, 0x7f0a0304

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabMisc;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 847
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 848
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetQuietHoursSummary()V

    .line 849
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 864
    const-string v1, "lowbattery_warning"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    add-int/lit8 v1, p3, 0x0

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 871
    .end local v0           #val:Ljava/lang/String;
    :cond_0
    const-string v1, "lowbattery_critical"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    add-int/lit8 v1, p3, 0x0

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    .restart local v0       #val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 878
    .end local v0           #val:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetQuietHoursSummary()V

    .line 886
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 887
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabMisc;->updateHeader()V

    .line 343
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 332
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 335
    :cond_2
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabMisc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
