.class public Lcom/m0narx/tweaks/fragments/TabButtons;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabButtons.java"


# static fields
.field private static final ACTION_CUSTOM_APP:I = 0x4

.field private static final ACTION_CUSTOM_SHORTCUT:I = 0x17

.field public static final CAP_BRIGHTNESS:Ljava/lang/String; = "/sys/class/leds/button-backlight/lut_coefficient"

.field public static final L2M:Ljava/lang/String; = "/sys/android_touch/logo2menu"

.field private static final PICKER_GET_DPBACK:I = 0x4

.field private static final PICKER_GET_DPBACK_SHORTCUT:I = 0xcd

.field private static final PICKER_GET_DPHOME:I = 0x3

.field private static final PICKER_GET_DPHOME_SHORTCUT:I = 0xcc

.field private static final PICKER_GET_DPRECENT:I = 0x5

.field private static final PICKER_GET_LPBACK:I = 0x1

.field private static final PICKER_GET_LPBACK_SHORTCUT:I = 0xca

.field private static final PICKER_GET_LPHOME:I = 0x0

.field private static final PICKER_GET_LPHOME_SHORTCUT:I = 0xc9

.field private static final PICKER_GET_LPRECENT:I = 0x2

.field private static final PICKER_GET_SPHOME:I = 0x7

.field private static final PICKER_GET_SPHOMESWIPE:I = 0x8

.field private static final PICKER_GET_SPHOMESWIPE_SHORTCUT:I = 0xc8

.field private static final PICKER_GET_SPHOME_SHORTCUT:I = 0xcb

.field private static final PICKER_GET_SPRECENT:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private checkL2M()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 727
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/logo2menu"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, file:Ljava/io/File;
    const-string v3, "shortpress_menu"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 731
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 734
    const-string v3, "/sys/android_touch/logo2menu"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 736
    .local v2, value:I
    if-ne v2, v4, :cond_0

    .line 737
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 743
    .end local v2           #value:I
    :goto_0
    return-void

    .line 739
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 741
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getButtonActionById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 70
    sparse-switch p1, :sswitch_data_0

    .line 97
    const-string v0, ""

    :goto_0
    return-object v0

    .line 73
    :sswitch_0
    const-string v0, "longpress_home"

    goto :goto_0

    .line 76
    :sswitch_1
    const-string v0, "longpress_back"

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v0, "longpress_recent"

    goto :goto_0

    .line 81
    :sswitch_3
    const-string v0, "shortpress_homedouble"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "shortpress_backdouble"

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "shortpress_recentdouble"

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "shortpress_recent"

    goto :goto_0

    .line 91
    :sswitch_7
    const-string v0, "shortpress_home"

    goto :goto_0

    .line 94
    :sswitch_8
    const-string v0, "shortpress_home_swipe"

    goto :goto_0

    .line 70
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
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_7
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
    .end sparse-switch
.end method

.method private initSeekBars()V
    .locals 10

    .prologue
    .line 660
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, file:Ljava/io/File;
    const-string v7, "cap_brightness"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 664
    .local v2, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 665
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setEnabled(Z)V

    .line 667
    const-string v7, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-static {v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 669
    .local v4, value:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    const/16 v7, 0x64

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 671
    move v3, v4

    .line 672
    .local v3, progress:I
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 677
    .end local v3           #progress:I
    .end local v4           #value:I
    :goto_0
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_autohide_delay"

    const/16 v9, 0xbb8

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 679
    .restart local v4       #value:I
    const-string v7, "navbar_autohide_delay"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 682
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    const/16 v7, 0x3c

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 684
    div-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 687
    const-string v7, "navbar_touchdetector_width"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 689
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_touchdetector_width"

    const/16 v9, 0x438

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 691
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 693
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 694
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 695
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 697
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 699
    .local v5, width:I
    invoke-virtual {v2, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 700
    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 702
    const-string v7, "navbar_touchdetector_height"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 705
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_touchdetector_height"

    const/16 v9, 0x28

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 707
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 708
    const/16 v7, 0x32

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 709
    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 712
    const-string v7, "navbar_height"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 715
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_height"

    const/16 v9, 0x78

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 717
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 718
    const/16 v7, 0xc8

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 719
    move v3, v4

    .line 720
    .restart local v3       #progress:I
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 722
    return-void

    .line 675
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v3           #progress:I
    .end local v4           #value:I
    .end local v5           #width:I
    .end local v6           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private setM8Prefs()V
    .locals 3

    .prologue
    .line 626
    const-string v2, "buttons_settings"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 628
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    const-string v2, "buttons_misc_category"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 632
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "pref_capacitive_backlight"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 633
    const-string v2, "cap_brightness"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 635
    const-string v2, "home_swipe_cat"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 655
    :goto_0
    return-void

    .line 640
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    const-string v2, "navigationbar"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 642
    const-string v2, "longpress_durations"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 644
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "recent_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 646
    const-string v2, "button_longpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 647
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "longpress_recent"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 649
    const-string v2, "button_shortpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 650
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "shortpress_recent"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private setNavbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 748
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_navigationbar_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 750
    .local v0, type:I
    if-nez v0, :cond_0

    .line 752
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 753
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 755
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 756
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 757
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 758
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 759
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 760
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 761
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 762
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 763
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 764
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 801
    :goto_0
    return-void

    .line 766
    :cond_0
    if-ne v0, v4, :cond_1

    .line 768
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 769
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 771
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 772
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 773
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 774
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 775
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 776
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 777
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 778
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 779
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 780
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 784
    :cond_1
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 785
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 787
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 788
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 789
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 790
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 791
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 792
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 793
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 794
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 795
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 796
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 813
    const v0, 0x7f040003

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    const-string v0, "buttons"

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    const/16 v8, 0x96

    const/16 v7, 0xf

    const/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gestures"

    aput-object v1, v0, v4

    const-string v1, "pulldown_gestures_cust"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnClickListener([Ljava/lang/String;)V

    .line 529
    const-string v0, "haptic_override"

    .line 530
    const-string v1, "tweaks_capactive_feedback_override"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 529
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    const-string v0, "haptic_lockscreen"

    const-string v1, "tweaks_haptick_feedback_ls"

    .line 533
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 532
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 535
    const-string v0, "gestures_vibration"

    const-string v1, "tweaks_3finger_vibration"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 536
    const-string v0, "pref_capacitive_backlight"

    .line 537
    const-string v1, "tweaks_buttons_backlight"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v3, ""

    .line 536
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;)V

    .line 539
    const-string v0, "longpress_home"

    const-string v1, "tweaks_longpress_home"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 540
    const-string v0, "longpress_back"

    const-string v1, "tweaks_longpress_back"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 541
    const-string v0, "longpress_recent"

    const-string v1, "tweaks_longpress_recent"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 543
    const-string v0, "shortpress_homedouble"

    .line 544
    const-string v1, "tweaks_shortpress_homedouble"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 543
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 545
    const-string v0, "shortpress_backdouble"

    .line 546
    const-string v1, "tweaks_shortpress_backdouble"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 545
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 549
    const-string v0, "doublepress_home_interval"

    .line 550
    const-string v1, "tweaks_doublepressinterval_home"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 549
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 551
    const-string v0, "doublepress_back_interval"

    .line 552
    const-string v1, "tweaks_doublepressinterval_back"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 551
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 555
    const-string v0, "shortpress_recent"

    const-string v1, "tweaks_shortpress_recent"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 556
    const-string v0, "shortpress_home"

    const-string v1, "tweaks_shortpress_home"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 558
    const-string v0, "shortpress_home_swipe"

    .line 559
    const-string v1, "tweaks_shortpress_home_swipe"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 558
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 561
    const-string v0, "use_voldown_screenoff"

    .line 562
    const-string v1, "tweaks_use_voldown_screenoff"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 561
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 563
    const-string v0, "use_volume"

    const-string v1, "tweaks_use_volume"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    const-string v0, "navigationbar_type"

    const-string v1, "tweaks_navigationbar_type"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 568
    const-string v0, "system_duration"

    const-string v1, "long_press_timeout"

    .line 569
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 568
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListenerSecure(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 570
    const-string v0, "home_duration"

    const-string v1, "tweaks_longress_home_duration"

    .line 571
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 570
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 572
    const-string v0, "back_duration"

    const-string v1, "tweaks_longress_back_duration"

    .line 573
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 572
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 575
    const-string v0, "recent_duration"

    const-string v1, "tweaks_longress_recent_duration"

    .line 576
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 575
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 580
    const-string v0, "pulldown_gesture_mode"

    const-string v1, "tweaks_pulldown_gesture_mode"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 582
    const-string v0, "cap_brightness"

    const-string v1, ""

    .line 583
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 582
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 585
    const-string v0, "textinput_magnifier"

    const-string v1, "htc_magnifier_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 588
    const-string v0, "show_menu"

    const-string v1, "tweaks_navbar_always_show_menu"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    const-string v0, "show_search"

    const-string v1, "tweaks_navbar_always_show_search"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 591
    const-string v0, "navbar_height"

    const-string v1, ""

    .line 592
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 591
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 595
    const-string v0, "navbar_autohide"

    const-string v1, "tweaks_navbar_autohide"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 598
    const-string v0, "navbar_autohide_delay"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 601
    const-string v0, "navbar_touchdetector_color"

    const-string v1, "tweaks_navbar_activationarea_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const v3, -0x44aaaaab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 603
    const-string v0, "navbar_touchdetector_width"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x438

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 604
    const-string v0, "navbar_touchdetector_height"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 606
    const-string v0, "navbar_show_type"

    const-string v1, "tweaks_navbar_show_type"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 607
    const-string v0, "navbar_touchanywheretohide"

    const-string v1, "tweaks_navbar_touchanywheretohide"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 609
    const-string v0, "navbar_hideonpress"

    const-string v1, "tweaks_navbar_hideonpress"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 611
    const-string v0, "navbar_background_color"

    const-string v1, "tweaks_navbar_background_color"

    .line 612
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/high16 v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 611
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 614
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 615
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setNavbar()V

    .line 618
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->initSeekBars()V

    .line 620
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setM8Prefs()V

    .line 622
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x17

    const/4 v4, 0x4

    .line 101
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->getActivity()Landroid/app/Activity;

    .line 103
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragments/TabButtons;->getButtonActionById(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, buttonAction:Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 108
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 143
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateButtons()V

    goto :goto_0

    .line 118
    :sswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "package"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "activity"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 124
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :sswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 139
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0xcd -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x17

    const/4 v6, 0x1

    const/4 v9, 0x4

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    if-ne v7, v8, :cond_0

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 182
    :cond_0
    const-string v7, "pref_capacitive_backlight"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 183
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_buttons_backlight"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    move v5, v6

    .line 507
    :goto_1
    return v5

    .line 184
    :cond_2
    const-string v7, "longpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 190
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 193
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc9

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 199
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_home"

    .line 200
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 199
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 201
    :cond_5
    const-string v7, "longpress_back"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 203
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 206
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 207
    if-eqz v7, :cond_7

    .line 208
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xca

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 213
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_back"

    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 213
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 216
    :cond_8
    const-string v7, "longpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 218
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_recent"

    .line 219
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 218
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 221
    :cond_9
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v11}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 225
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    const-string v7, "shortpress_homedouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 226
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 227
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 230
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 231
    if-eqz v7, :cond_c

    .line 232
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcc

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 237
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_homedouble"

    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 237
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 239
    :cond_d
    const-string v7, "shortpress_recentdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 240
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 241
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_recentdouble"

    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 241
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 244
    :cond_e
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, 0x5

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 248
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    const-string v7, "shortpress_backdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 250
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v9}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 253
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 254
    if-eqz v7, :cond_11

    .line 255
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcd

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 260
    .end local v2           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_backdouble"

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 260
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 262
    :cond_12
    const-string v7, "shortpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 264
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_recent"

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 264
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 267
    :cond_13
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x6

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 272
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_14
    const-string v7, "shortpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 274
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x7

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 277
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 278
    if-eqz v7, :cond_16

    .line 279
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcb

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 284
    .end local v2           #intent:Landroid/content/Intent;
    :cond_16
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_home"

    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 284
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 287
    :cond_17
    const-string v7, "shortpress_home_swipe"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 289
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "htc_home_swipe"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 292
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/16 v6, 0x8

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 295
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 296
    if-eqz v7, :cond_19

    .line 297
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc8

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 301
    .end local v2           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_home_swipe"

    .line 302
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 301
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 304
    :cond_1a
    const-string v7, "doublepress_home_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 305
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_home"

    .line 306
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 305
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 307
    :cond_1b
    const-string v7, "doublepress_recent_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 308
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_recent"

    .line 309
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 308
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 310
    :cond_1c
    const-string v7, "doublepress_back_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 311
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_back"

    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 311
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 314
    :cond_1d
    const-string v7, "use_voldown_screenoff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 315
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_voldown_screenoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 316
    :cond_1e
    const-string v7, "use_volume"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 317
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 319
    const-string v7, " > /sys/keyboard/vol_wakeup;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 320
    :cond_1f
    const-string v7, "soft_menu_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 321
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_soft_menu_key"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 323
    :cond_20
    const-string v7, "cap_home_cam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 324
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_cap_camera"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 325
    :cond_21
    const-string v7, "gestures_vibration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 326
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_3finger_vibration"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 327
    :cond_22
    const-string v7, "navigationbar_type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 329
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_23

    .line 332
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_use_venomextension"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    :cond_23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_24

    .line 340
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_use_venomextension"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    :cond_24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_25

    .line 348
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_use_venomextension"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_25
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navigationbar_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setNavbar()V

    .line 357
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 358
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 359
    :cond_26
    const-string v5, "haptic_override"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 360
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_capactive_feedback_override"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 362
    :cond_27
    const-string v5, "haptic_lockscreen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 363
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_haptick_feedback_ls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 364
    :cond_28
    const-string v5, "system_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 365
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "long_press_timeout"

    .line 366
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 365
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 367
    :cond_29
    const-string v5, "home_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 368
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_home_duration"

    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 368
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 370
    :cond_2a
    const-string v5, "back_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 371
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_back_duration"

    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 371
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 375
    :cond_2b
    const-string v5, "recent_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 376
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_recent_duration"

    .line 377
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 376
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 380
    :cond_2c
    const-string v5, "vol_up_cam"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 381
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_camera_volup_down"

    .line 382
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 381
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 383
    :cond_2d
    const-string v5, "vol_down_cam"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 384
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_camera_voldown_down"

    .line 385
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 384
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 386
    :cond_2e
    const-string v5, "pulldown_gesture_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 387
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_pulldown_gesture_mode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 390
    :cond_2f
    const-string v5, "cap_brightness"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 391
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " > "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    const-string v5, "echo 0 > /sys/class/leds/button-backlight/currents"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const-string v5, "echo 20 > /sys/class/leds/button-backlight/currents"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_cap_brightness"

    .line 403
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 402
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 408
    .end local v4           #val:Ljava/lang/String;
    :cond_30
    const-string v5, "textinput_magnifier"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 409
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "htc_magnifier_setting"

    .line 410
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 409
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 412
    :cond_31
    const-string v5, "show_menu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 413
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_always_show_menu"

    .line 414
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 413
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 419
    :cond_32
    const-string v5, "show_search"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 420
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_always_show_search"

    .line 421
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 420
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 426
    :cond_33
    const-string v5, "navbar_height"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 429
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .restart local v4       #val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_height"

    .line 434
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 433
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 438
    .end local v4           #val:Ljava/lang/String;
    :cond_34
    const-string v5, "navbar_autohide"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 439
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_autohide"

    .line 440
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 439
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 445
    :cond_35
    const-string v5, "navbar_autohide_delay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 447
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_autohide_delay"

    .line 450
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 449
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 453
    :cond_36
    const-string v5, "navbar_touchdetector_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 455
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_activationarea_color"

    .line 456
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 455
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 462
    :cond_37
    const-string v5, "navbar_touchdetector_width"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 464
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchdetector_width"

    .line 467
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 466
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 473
    :cond_38
    const-string v5, "navbar_touchdetector_height"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 475
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchdetector_height"

    .line 478
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 477
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 483
    :cond_39
    const-string v5, "navbar_show_type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 484
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_show_type"

    .line 485
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 484
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 487
    :cond_3a
    const-string v5, "navbar_touchtoshow"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 488
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchtoshow"

    .line 489
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 488
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 491
    :cond_3b
    const-string v5, "navbar_touchanywheretohide"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 492
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchanywheretohide"

    .line 493
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 492
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 495
    :cond_3c
    const-string v5, "navbar_hideonpress"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 496
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_hideonpress"

    .line 497
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 496
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 498
    :cond_3d
    const-string v5, "navbar_background_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_background_color"

    .line 501
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 500
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "gestures"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const-class v1, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->startFragmentActivity(Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 515
    :cond_1
    const-string v1, "keyboardskin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 517
    :cond_2
    const-string v1, "pulldown_gestures_cust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateHeader()V

    .line 151
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 153
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 829
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 831
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 839
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 840
    return-void
.end method

.method public set3FingerService()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 804
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v3, "htc_gestures_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 807
    .local v0, enable:Z
    :goto_0
    const-string v1, "gestures_vibration"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 808
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 809
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v1

    .line 805
    goto :goto_0
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateHeader()V

    .line 169
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 162
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
