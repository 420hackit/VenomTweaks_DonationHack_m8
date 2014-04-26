.class public Lcom/m0narx/tweaks/fragments/misc;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "misc.java"


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
    .line 31
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private SetQuietHoursSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/misc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 813
    const v7, 0x7f0a021d

    .line 812
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/misc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 815
    const v7, 0x7f0a0220

    .line 814
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, disabled:Ljava/lang/String;
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 818
    const-string v6, "quiet_hours"

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 834
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_start"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 822
    .local v4, start:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiet_hours_end"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 824
    .local v1, end:I
    const-string v5, ""

    .line 825
    .local v5, startTime:Ljava/lang/String;
    const-string v2, ""

    .line 827
    .local v2, endTime:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/misc;->returnTime(I)Ljava/lang/String;

    move-result-object v5

    .line 829
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/misc;->returnTime(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    const-string v6, "quiet_hours"

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 832
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 831
    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private SetScreenshot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 785
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_crop_screenshot"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 786
    const-string v0, "album_screenshot"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    const-string v0, "album_screenshot"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setCrtOff()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 794
    const-string v3, "crt_off_animation"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 796
    .local v2, pref:Lcom/htc/preference/HtcListPreference;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_crtoff"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 797
    .local v0, crtOff:I
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_crt_style"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 799
    .local v1, crtStyle:I
    if-nez v0, :cond_0

    .line 800
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 808
    :goto_0
    return-void

    .line 802
    :cond_0
    if-nez v1, :cond_1

    .line 803
    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_1
    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 843
    const v0, 0x7f04000e

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    const-string v0, "misc"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 693
    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->conf:Lvenom/common/settings;

    .line 695
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "autobacklight_brightness"

    aput-object v1, v0, v3

    .line 696
    const-string v1, "minfree"

    aput-object v1, v0, v4

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

    .line 697
    const-string v2, "quiet_hours"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notification_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "airplanemode_radios"

    aput-object v2, v0, v1

    .line 695
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->OnClickListener([Ljava/lang/String;)V

    .line 700
    const-string v0, "fast_dormancy"

    const-string v1, "tweaks_dormancy"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 702
    const-string v0, "volume_sound_off"

    const-string v1, "tweaks_volume_sound_off"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 703
    const-string v0, "pctool_enable"

    const-string v1, "tweaks_pctool_enable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 705
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->conf:Lvenom/common/settings;

    iget-boolean v0, v0, Lvenom/common/settings;->HAS_NFC:Z

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-string v1, "com.android.nfc"

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "nfc_mode"

    const-string v1, "tweaks_nfc_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    :goto_0
    const-string v0, "signal_icons"

    const-string v1, "tweaks_signal_icons"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    const-string v0, "force_wifi_n"

    const-string v1, "tweaks_force_wifi_n"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListenerGlobal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 717
    const-string v0, "always_display_data"

    const-string v1, "tweaks_always_display_data"

    .line 718
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 717
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 721
    const-string v0, "flash_charging"

    const-string v1, "tweaks_flash_during_charging"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    const-string v0, "flash_duration"

    const-string v1, "tweaks_led_flash_duration"

    const-string v2, "5"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "use_power_home_screenshot"

    .line 725
    const-string v1, "tweaks_home_power_screenshot"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 724
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 728
    const-string v0, "block_pulldown_during_calls"

    .line 729
    const-string v1, "tweaks_block_pulldown_during_calls"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 728
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 731
    const-string v0, "hide_powersaver"

    const-string v1, "tweaks_hide_powersaver"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 733
    const-string v0, "remove_contact_mask"

    const-string v1, "tweaks_remove_contact_mask"

    .line 734
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 733
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 736
    const-string v0, "use_jb_toast_style"

    const-string v1, "tweaks_use_jb_toast_style"

    .line 737
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 736
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 739
    const-string v0, "disable_noise_suppression"

    .line 740
    const-string v1, "tweaks_disable_noise_suppression"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 739
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 742
    const-string v0, "apm_lockscreen"

    const-string v1, "tweaks_apm_lockscreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 744
    const-string v0, "crt_off_animation"

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->setCrtOff()V

    .line 747
    const-string v0, "signal_bar_count"

    const-string v1, "tweaks_signal_bar_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "hide_notifs"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->OnClickListener([Ljava/lang/String;)V

    .line 750
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "system_broadcasts"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->OnClickListener([Ljava/lang/String;)V

    .line 752
    const-string v0, "wifi_activity"

    const-string v1, "tweaks_wifi_activity"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 754
    const-string v0, "hide_volume_warning"

    const-string v1, "tweaks_hide_volume_warning"

    .line 755
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 754
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 757
    const-string v0, "phone_button_icons"

    const-string v1, "tweaks_phone_button_icons"

    .line 758
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 757
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 762
    const-string v0, "custom_clock"

    const-string v1, "tweaks_custom_clock_app"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 763
    const-string v0, "custom_weather"

    const-string v1, "tweaks_custom_weather_app"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 764
    const-string v0, "custom_calendar"

    const-string v1, "tweaks_custom_date_app"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 766
    const-string v0, "notify_screenshot"

    const-string v1, "tweaks_notify_screenshot"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 767
    const-string v0, "crop_screenshot"

    const-string v1, "tweaks_crop_screenshot"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 768
    const-string v0, "album_screenshot"

    const-string v1, "tweaks_album_screenshot"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 772
    const-string v0, "new_task"

    const-string v1, "tweaks_new_task"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 774
    const-string v0, "apm_screenrecord"

    const-string v1, "tweaks_apm_screenrecord"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 775
    const-string v0, "screenrecord_record_audio"

    const-string v1, "tweaks_screenrecord_record_audio"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 777
    const-string v0, "screenrecord_bitrate"

    const-string v1, "tweaks_screenrecord_bitrate"

    const v2, 0x3d0900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->SetScreenshot()V

    .line 780
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->SetQuietHoursSummary()V

    .line 781
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    const-string v1, "system"

    const-string v2, "nfc_mode"

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Customization;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public makeDialog(I)V
    .locals 13
    .parameter "id"

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    .line 81
    .local v0, APMItems:[Z
    const/4 v9, 0x5

    new-array v0, v9, [Z

    .line 83
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 84
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 85
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 86
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 87
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v0, v9

    .line 89
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_screenshot"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 90
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 92
    :cond_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_aeroplane"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 93
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 95
    :cond_1
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_data"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    .line 96
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 98
    :cond_2
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_sound"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    .line 99
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 101
    :cond_3
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_kidmode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 102
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-boolean v10, v0, v9

    .line 105
    :cond_4
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const v10, 0x7f0a0075

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 107
    const v10, 0x7f060025

    .line 108
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$1;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$1;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 107
    invoke-virtual {v9, v10, v0, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 134
    const v10, 0x7f0a0056

    .line 135
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$2;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$2;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 134
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 140
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 143
    .end local v0           #APMItems:[Z
    :pswitch_1
    const/4 v4, 0x0

    .line 144
    .local v4, RebootItems:[Z
    const/4 v9, 0x4

    new-array v4, v9, [Z

    .line 146
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 147
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 148
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 149
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 151
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_hotreboot"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    .line 152
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 154
    :cond_5
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_safemode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_6

    .line 155
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 157
    :cond_6
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_recovery"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_7

    .line 158
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 160
    :cond_7
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_apm_bootloader"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_8

    .line 161
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v4, v9

    .line 164
    :cond_8
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const v10, 0x7f0a033d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 166
    const v10, 0x7f06006a

    .line 168
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$3;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$3;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 166
    invoke-virtual {v9, v10, v4, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 192
    const v10, 0x7f0a0056

    .line 193
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$4;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$4;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 192
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 198
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 202
    .end local v4           #RebootItems:[Z
    :pswitch_2
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 203
    const-string v10, "tweaks_allowed_rotations"

    const/16 v11, 0xb

    .line 202
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 204
    .local v6, allowed_rotations:I
    const/4 v9, 0x3

    new-array v3, v9, [Z

    .line 205
    .local v3, RTItems:[Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v9, v3

    if-lt v8, v9, :cond_9

    .line 209
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    const v10, 0x7f0a01cd

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 211
    const v10, 0x7f06002e

    .line 213
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$5;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$5;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 211
    invoke-virtual {v9, v10, v3, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 231
    const v10, 0x7f0a0056

    .line 232
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$6;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/fragments/misc$6;-><init>(Lcom/m0narx/tweaks/fragments/misc;)V

    .line 231
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 237
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 206
    :cond_9
    const-wide/high16 v9, 0x4000

    add-int/lit8 v11, v8, 0x1

    int-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v7, v9

    .line 207
    .local v7, flag:I
    and-int v9, v6, v7

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_2
    aput-boolean v9, v3, v8

    .line 205
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 207
    :cond_a
    const/4 v9, 0x0

    goto :goto_2

    .line 242
    .end local v3           #RTItems:[Z
    .end local v6           #allowed_rotations:I
    .end local v7           #flag:I
    .end local v8           #i:I
    :pswitch_3
    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 243
    const-string v10, "airplane_mode_radios"

    .line 242
    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, airplaneModeItems:Ljava/lang/String;
    const/4 v9, 0x5

    new-array v1, v9, [Z

    .line 249
    .local v1, AirplaneModeItems:[Z
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 250
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 251
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 252
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 253
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 255
    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/String;

    .line 257
    .local v2, AirplaneModeValues:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "cell"

    aput-object v10, v2, v9

    .line 258
    const/4 v9, 0x1

    const-string v10, "bluetooth"

    aput-object v10, v2, v9

    .line 259
    const/4 v9, 0x2

    const-string v10, "nfc"

    aput-object v10, v2, v9

    .line 260
    const/4 v9, 0x3

    const-string v10, "wimax"

    aput-object v10, v2, v9

    .line 261
    const/4 v9, 0x4

    const-string v10, "wifi"

    aput-object v10, v2, v9

    .line 263
    const-string v9, "cell"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 264
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 267
    :cond_b
    const-string v9, "bluetooth"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 268
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 271
    :cond_c
    const-string v9, "nfc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 272
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 275
    :cond_d
    const-string v9, "wimax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 276
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 279
    :cond_e
    const-string v9, "wifi"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 280
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-boolean v10, v1, v9

    .line 285
    :cond_f
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    const v10, 0x7f0a0466

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 287
    const v10, 0x7f06008d

    .line 289
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$7;

    invoke-direct {v11, p0, v1}, Lcom/m0narx/tweaks/fragments/misc$7;-><init>(Lcom/m0narx/tweaks/fragments/misc;[Z)V

    .line 287
    invoke-virtual {v9, v10, v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 297
    const v10, 0x7f0a0056

    .line 298
    new-instance v11, Lcom/m0narx/tweaks/fragments/misc$8;

    invoke-direct {v11, p0, v1, v2}, Lcom/m0narx/tweaks/fragments/misc$8;-><init>(Lcom/m0narx/tweaks/fragments/misc;[Z[Ljava/lang/String;)V

    .line 297
    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 315
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 78
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

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 351
    const-string v1, "tweaks_custom_clock_package"

    .line 352
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 354
    const-string v1, "tweaks_custom_clock_activity"

    .line 355
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 357
    const-string v1, "tweaks_custom_clock_app"

    .line 356
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    const-string v0, "custom_clock"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 359
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 361
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 365
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 369
    const-string v1, "tweaks_custom_weather_package"

    .line 370
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 372
    const-string v1, "tweaks_custom_weather_activity"

    .line 373
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 375
    const-string v1, "tweaks_custom_weather_app"

    .line 374
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    const-string v0, "custom_weather"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 377
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 379
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 382
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 386
    const-string v1, "tweaks_custom_date_package"

    .line 387
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 389
    const-string v1, "tweaks_custom_date_activity"

    .line 390
    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 392
    const-string v1, "tweaks_custom_date_app"

    .line 391
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    const-string v0, "custom_calendar"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 394
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 345
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

    .line 402
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "true"

    if-ne v7, v10, :cond_2

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 405
    .local v1, bvar:Ljava/lang/Integer;
    const-string v7, "overscroll_color"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_overscroll_color"

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 406
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    :cond_0
    :goto_1
    move v9, v8

    .line 640
    :cond_1
    :goto_2
    return v9

    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_2
    move v7, v9

    .line 403
    goto :goto_0

    .line 409
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_3
    const-string v7, "sms_screenon"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_sms_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 411
    :cond_4
    const-string v7, "sms_use_smiles_button"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 412
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_sms_use_smiles_button"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 413
    :cond_5
    const-string v7, "htc_animation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 414
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_htc_animation"

    .line 415
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 414
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_1

    .line 417
    :cond_6
    const-string v7, "use_bravia"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 418
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 419
    const-string v7, "ro.service.swiqi.supported"

    const-string v9, "true"

    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_3
    const-string v7, "persist.service.swiqi.enable"

    .line 424
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "setprop persist.service.swiqi.enable "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 425
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 421
    :cond_7
    const-string v7, "ro.service.swiqi.supported"

    const-string v9, "false"

    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 428
    :cond_8
    const-string v7, "fast_dormancy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 429
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_dormancy"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 431
    :cond_9
    const-string v7, "disable_smartsync"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 432
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_disable_smartsync"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "smartsync_turn_off_wifi"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_a

    move v9, v8

    :cond_a
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 434
    :cond_b
    const-string v7, "camera_use_volume"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 435
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_camera_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 436
    :cond_c
    const-string v7, "camera_hidebar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 437
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_camera_hidebar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 438
    :cond_d
    const-string v7, "volume_sound_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 439
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_volume_sound_off"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 440
    :cond_e
    const-string v7, "animations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 441
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_animations"

    .line 442
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 441
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 443
    :cond_f
    const-string v7, "pctool_enable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 444
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_pctool_enable"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 447
    :cond_10
    const-string v7, "nfc_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 448
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_nfc_mode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 449
    :cond_11
    const-string v7, "force_wifi_n"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 450
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_15

    .line 451
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    invoke-static {v7, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, currcode:Ljava/lang/String;
    if-eqz v2, :cond_12

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 453
    :cond_12
    const-string v2, "EU"

    .line 455
    :cond_13
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code_original"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    const-string v10, "EU"

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    :cond_14
    :goto_4
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_force_wifi_n"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 458
    .end local v2           #currcode:Ljava/lang/String;
    :cond_15
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    .line 459
    const-string v9, "wifi_country_code_original"

    .line 458
    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2       #currcode:Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 461
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "wifi_country_code"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 465
    .end local v2           #currcode:Ljava/lang/String;
    :cond_16
    const-string v7, "phone_rotation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 466
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_phone_rotation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 467
    :cond_17
    const-string v7, "att_signalstrength"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 468
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_att_signalstrength"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 469
    :cond_18
    const-string v7, "always_display_data"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 470
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_always_display_data"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 471
    :cond_19
    const-string v7, "signal_icons"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 472
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_signal_icons"

    .line 473
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 472
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 474
    :cond_1a
    const-string v7, "crt_on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 475
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crton"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 476
    :cond_1b
    const-string v7, "crt_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 477
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crtoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 478
    :cond_1c
    const-string v7, "crt_style"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 479
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crt_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 480
    :cond_1d
    const-string v7, "flash_charging"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 481
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_flash_during_charging"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 482
    :cond_1e
    const-string v7, "flash_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 484
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/misc;->isInteger(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 487
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_led_flash_duration"

    .line 488
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 487
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 492
    :cond_1f
    const-string v7, "use_power_home_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 493
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_home_power_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    const-string v7, "ro.htc.framework.screencapture"

    .line 496
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 495
    invoke-static {v7, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "setprop ro.htc.framework.screencapture "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 497
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 500
    :cond_20
    const-string v7, "exchange_disable_minpasswordlength"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 501
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_exchange_disable_minpasswordlength"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 502
    :cond_21
    const-string v7, "exchange_disable_passwordquality"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 503
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_exchange_disable_passwordquality"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 504
    :cond_22
    const-string v7, "show_smileys"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 505
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_show_smileys"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 506
    :cond_23
    const-string v7, "flash_speed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 507
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_buttons_blink_timeout"

    .line 508
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 507
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 509
    :cond_24
    const-string v7, "block_pulldown_during_calls"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 510
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_block_pulldown_during_calls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 511
    :cond_25
    const-string v7, "hide_powersaver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 512
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_hide_powersaver"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 513
    :cond_26
    const-string v7, "bt_no_screenon"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 514
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_bt_disable_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 515
    :cond_27
    const-string v7, "remove_contact_mask"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 516
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_remove_contact_mask"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 517
    :cond_28
    const-string v7, "use_jb_toast_style"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 518
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_use_jb_toast_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 519
    :cond_29
    const-string v7, "disable_noise_suppression"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 520
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_disable_noise_suppression"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 521
    :cond_2a
    const-string v7, "apm_lockscreen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 522
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_apm_lockscreen"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 523
    :cond_2b
    const-string v7, "crt_off_animation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 525
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 527
    .local v6, value:I
    if-nez v6, :cond_2c

    .line 528
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crtoff"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    :cond_2c
    if-ne v6, v8, :cond_2d

    .line 531
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crtoff"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_crt_style"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    :cond_2d
    if-ne v6, v11, :cond_0

    .line 536
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crtoff"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crt_style"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 540
    .end local v6           #value:I
    :cond_2e
    const-string v7, "signal_bar_count"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 541
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_signal_bar_count"

    .line 542
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 541
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 543
    :cond_2f
    const-string v7, "wifi_activity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 544
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_wifi_activity"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 545
    :cond_30
    const-string v7, "hide_volume_warning"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 546
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_hide_volume_warning"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 547
    :cond_31
    const-string v7, "lowbattery_warning"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 549
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v5, v7, 0x1

    .line 553
    .local v5, val:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_lowbattery_warning"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 559
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #val:I
    :cond_32
    const-string v7, "lowbattery_critical"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 561
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v5, v7, 0x1

    .line 565
    .restart local v5       #val:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    .restart local v4       #summary:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_lowbattery_critical"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 571
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #val:I
    :cond_33
    const-string v7, "flashlight_flash_speed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 572
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_flash_blink_timeout"

    .line 573
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 572
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 574
    :cond_34
    const-string v7, "phone_button_icons"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 575
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_phone_button_icons"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    const-string v7, "pkill com.android.phone;pkill com.htc.htcdialer;"

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 579
    :cond_35
    const-string v7, "custom_clock"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 580
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_36

    .line 581
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-class v10, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/m0narx/tweaks/fragments/misc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 586
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_36
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_clock_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 590
    :cond_37
    const-string v7, "custom_weather"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 591
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_38

    .line 592
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v11}, Lcom/m0narx/tweaks/fragments/misc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 597
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_38
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_weather_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 601
    :cond_39
    const-string v7, "custom_calendar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 602
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_3a

    .line 603
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v3, v7}, Lcom/m0narx/tweaks/fragments/misc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 608
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_3a
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_custom_date_app"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 612
    :cond_3b
    const-string v7, "notify_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 613
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_notify_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 615
    :cond_3c
    const-string v7, "crop_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 616
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_crop_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->SetScreenshot()V

    goto/16 :goto_1

    .line 619
    :cond_3d
    const-string v7, "album_screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 620
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_album_screenshot"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 622
    :cond_3e
    const-string v7, "disable_lowbatt_led"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 623
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_disable_lowbatt_led"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 625
    :cond_3f
    const-string v7, "new_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 626
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_new_task"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 628
    :cond_40
    const-string v7, "apm_screenrecord"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 629
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_apm_screenrecord"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 631
    :cond_41
    const-string v7, "screenrecord_record_audio"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 632
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenrecord_record_audio"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 634
    :cond_42
    const-string v7, "screenrecord_bitrate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 635
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/misc;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_screenrecord_bitrate"

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 635
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 645
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "apm_items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->makeDialog(I)V

    .line 684
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 648
    :cond_1
    const-string v2, "reboot_items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->makeDialog(I)V

    goto :goto_0

    .line 650
    :cond_2
    const-string v2, "allowed_rotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->makeDialog(I)V

    goto :goto_0

    .line 653
    :cond_3
    const-string v2, "airplanemode_radios"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 654
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->makeDialog(I)V

    goto :goto_0

    .line 655
    :cond_4
    const-string v2, "autobacklight_brightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 656
    const-class v2, Lcom/m0narx/tweaks/fragments/autobrightness_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_5
    const-string v2, "minfree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 658
    const-class v2, Lcom/m0narx/tweaks/fragments/minfree_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_6
    const-string v2, "fakeimei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 660
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 661
    :cond_7
    const-string v2, "volumesteps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    const-class v2, Lcom/m0narx/tweaks/fragments/volume_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_8
    const-string v2, "quiet_hours"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 664
    const-class v2, Lcom/m0narx/tweaks/fragments/quiethours_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startFragmentActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    const-string v2, "notification_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 667
    const-class v2, Lcom/m0narx/tweaks/fragments/notification_settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/misc;->startFragmentActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 668
    :cond_a
    const-string v2, "hide_notifs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 670
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .local v1, config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_hide_notifs_packages"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v2, "title"

    const v3, 0x7f0a0302

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/misc;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 675
    .end local v1           #config:Landroid/content/Intent;
    :cond_b
    const-string v2, "system_broadcasts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/misc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .restart local v1       #config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_system_broadcast_packages"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v2, "title"

    const v3, 0x7f0a0304

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/misc;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 837
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 838
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->SetQuietHoursSummary()V

    .line 839
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 854
    const-string v1, "lowbattery_warning"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    add-int/lit8 v1, p3, 0x0

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 861
    .end local v0           #val:Ljava/lang/String;
    :cond_0
    const-string v1, "lowbattery_critical"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    add-int/lit8 v1, p3, 0x0

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .restart local v0       #val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    .end local v0           #val:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/misc;->SetQuietHoursSummary()V

    .line 876
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 877
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/misc;->updateHeader()V

    .line 340
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 329
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 332
    :cond_2
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/misc;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
