.class public Lcom/m0narx/tweaks/fragments/buttons;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "buttons.java"


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
    .line 36
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private checkL2M()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 577
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/logo2menu"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, file:Ljava/io/File;
    const-string v3, "shortpress_menu"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 581
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 584
    const-string v3, "/sys/android_touch/logo2menu"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/buttons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 586
    .local v2, value:I
    if-ne v2, v4, :cond_0

    .line 587
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 593
    .end local v2           #value:I
    :goto_0
    return-void

    .line 589
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 591
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getButtonActionById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 68
    sparse-switch p1, :sswitch_data_0

    .line 95
    const-string v0, ""

    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    const-string v0, "longpress_home"

    goto :goto_0

    .line 74
    :sswitch_1
    const-string v0, "longpress_back"

    goto :goto_0

    .line 76
    :sswitch_2
    const-string v0, "longpress_recent"

    goto :goto_0

    .line 79
    :sswitch_3
    const-string v0, "shortpress_homedouble"

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v0, "shortpress_backdouble"

    goto :goto_0

    .line 84
    :sswitch_5
    const-string v0, "shortpress_recentdouble"

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v0, "shortpress_recent"

    goto :goto_0

    .line 89
    :sswitch_7
    const-string v0, "shortpress_home"

    goto :goto_0

    .line 92
    :sswitch_8
    const-string v0, "shortpress_home_swipe"

    goto :goto_0

    .line 68
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
    .locals 5

    .prologue
    .line 545
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, file:Ljava/io/File;
    const-string v4, "cap_brightness"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 549
    .local v1, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setEnabled(Z)V

    .line 552
    const-string v4, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/buttons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 554
    .local v3, value:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 555
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 556
    move v2, v3

    .line 557
    .local v2, progress:I
    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 572
    .end local v2           #progress:I
    .end local v3           #value:I
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setM8Prefs()V
    .locals 3

    .prologue
    .line 511
    const-string v2, "buttons_settings"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 513
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/m0narx/tweaks/main;->IsM8()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    const-string v2, "buttons_misc_category"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 517
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "pref_capacitive_backlight"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 518
    const-string v2, "cap_brightness"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 520
    const-string v2, "home_swipe_cat"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 540
    :goto_0
    return-void

    .line 525
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    const-string v2, "navigationbar"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 527
    const-string v2, "longpress_durations"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 529
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "recent_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 531
    const-string v2, "button_longpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 532
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "longpress_recent"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 534
    const-string v2, "button_shortpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 535
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "shortpress_recent"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private setNavbar()V
    .locals 3

    .prologue
    .line 597
    const-string v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    const-string v1, "hide_navbar"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 602
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 616
    :goto_0
    return-void

    .line 608
    :cond_0
    const-string v1, "hide_navbar"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 609
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 628
    const v0, 0x7f040003

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    const-string v0, "buttons"

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/16 v7, 0x96

    const/4 v3, 0x1

    const/16 v6, 0xf

    const/16 v5, 0x1f4

    const/4 v4, 0x0

    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gestures"

    aput-object v1, v0, v4

    const-string v1, "pulldown_gestures_cust"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->OnClickListener([Ljava/lang/String;)V

    .line 435
    const-string v0, "haptic_override"

    .line 436
    const-string v1, "tweaks_capactive_feedback_override"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 435
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 438
    const-string v0, "haptic_lockscreen"

    const-string v1, "tweaks_haptick_feedback_ls"

    .line 439
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 438
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    const-string v0, "gestures_vibration"

    const-string v1, "tweaks_3finger_vibration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    const-string v0, "pref_capacitive_backlight"

    .line 443
    const-string v1, "tweaks_buttons_backlight"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v3, ""

    .line 442
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;)V

    .line 445
    const-string v0, "longpress_home"

    const-string v1, "tweaks_longpress_home"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v0, "longpress_back"

    const-string v1, "tweaks_longpress_back"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v0, "longpress_recent"

    const-string v1, "tweaks_longpress_recent"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v0, "shortpress_homedouble"

    .line 450
    const-string v1, "tweaks_shortpress_homedouble"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 449
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v0, "shortpress_backdouble"

    .line 452
    const-string v1, "tweaks_shortpress_backdouble"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 451
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v0, "doublepress_home_interval"

    .line 456
    const-string v1, "tweaks_doublepressinterval_home"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 455
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v0, "doublepress_back_interval"

    .line 458
    const-string v1, "tweaks_doublepressinterval_back"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v0, "shortpress_recent"

    const-string v1, "tweaks_shortpress_recent"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v0, "shortpress_home"

    const-string v1, "tweaks_shortpress_home"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v0, "shortpress_home_swipe"

    .line 465
    const-string v1, "tweaks_shortpress_home_swipe"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 464
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v0, "use_voldown_screenoff"

    .line 468
    const-string v1, "tweaks_use_voldown_screenoff"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 467
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 469
    const-string v0, "use_volume"

    const-string v1, "tweaks_use_volume"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 472
    const-string v0, "hide_navbar"

    const-string v1, "HIDE_NAV_BAR"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 473
    const-string v0, "system_duration"

    const-string v1, "long_press_timeout"

    .line 474
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 473
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListenerSecure(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 475
    const-string v0, "home_duration"

    const-string v1, "tweaks_longress_home_duration"

    .line 476
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 475
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 477
    const-string v0, "back_duration"

    const-string v1, "tweaks_longress_back_duration"

    .line 478
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 477
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 480
    const-string v0, "recent_duration"

    const-string v1, "tweaks_longress_recent_duration"

    .line 481
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 480
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 485
    const-string v0, "pulldown_gesture_mode"

    const-string v1, "tweaks_pulldown_gesture_mode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v0, "cap_brightness"

    const-string v1, ""

    .line 488
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 487
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 490
    const-string v0, "textinput_magnifier"

    const-string v1, "htc_magnifier_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 499
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->set3FingerService()V

    .line 500
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/buttons;->setNavbar()V

    .line 503
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/buttons;->initSeekBars()V

    .line 505
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/buttons;->setM8Prefs()V

    .line 507
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

    .line 99
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->getActivity()Landroid/app/Activity;

    .line 101
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragments/buttons;->getButtonActionById(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, buttonAction:Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 106
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->updateButtons()V

    goto :goto_0

    .line 116
    :sswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

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

    .line 118
    const-string v3, "package"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

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

    .line 120
    const-string v3, "activity"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 122
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :sswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

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

    .line 134
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 137
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
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
    .locals 11
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    const/16 v10, 0x17

    const/4 v9, 0x4

    const/4 v5, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 176
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    if-ne v7, v8, :cond_0

    .line 177
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 180
    :cond_0
    const-string v7, "pref_capacitive_backlight"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_buttons_backlight"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    :cond_1
    :goto_0
    const-string v7, ""

    const-string v8, ""

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v7, v8, v5}, Lcom/m0narx/tweaks/fragments/buttons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    move v5, v6

    .line 413
    :goto_1
    return v5

    .line 182
    :cond_2
    const-string v7, "longpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 184
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 188
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 191
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc9

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 197
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longpress_home"

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 197
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 199
    :cond_5
    const-string v7, "longpress_back"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 200
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 201
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 204
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 205
    if-eqz v7, :cond_7

    .line 206
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xca

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 211
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longpress_back"

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 211
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 214
    :cond_8
    const-string v7, "longpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 215
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 216
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longpress_recent"

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 216
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 219
    :cond_9
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, 0x2

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 223
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    const-string v7, "shortpress_homedouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 225
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 228
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 229
    if-eqz v7, :cond_c

    .line 230
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcc

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 235
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_homedouble"

    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 235
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 237
    :cond_d
    const-string v7, "shortpress_recentdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 239
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_recentdouble"

    .line 240
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 239
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 242
    :cond_e
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, 0x5

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 246
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    const-string v7, "shortpress_backdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 247
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 248
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v9}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 251
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 252
    if-eqz v7, :cond_11

    .line 253
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcd

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 258
    .end local v2           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_backdouble"

    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 258
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 260
    :cond_12
    const-string v7, "shortpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 262
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_recent"

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 262
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 265
    :cond_13
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x6

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 270
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_14
    const-string v7, "shortpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 271
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 272
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x7

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 275
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 276
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 276
    if-eqz v7, :cond_16

    .line 277
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcb

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 282
    .end local v2           #intent:Landroid/content/Intent;
    :cond_16
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_home"

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 282
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 285
    :cond_17
    const-string v7, "shortpress_home_swipe"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 287
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "htc_home_swipe"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 290
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/16 v6, 0x8

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 293
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 294
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 294
    if-eqz v7, :cond_19

    .line 295
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc8

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 299
    .end local v2           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_shortpress_home_swipe"

    .line 300
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 299
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 302
    :cond_1a
    const-string v7, "doublepress_home_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 303
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_doublepressinterval_home"

    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 303
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 305
    :cond_1b
    const-string v7, "doublepress_recent_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 306
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_doublepressinterval_recent"

    .line 307
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 306
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 308
    :cond_1c
    const-string v7, "doublepress_back_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 309
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_doublepressinterval_back"

    .line 310
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 309
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 312
    :cond_1d
    const-string v7, "use_voldown_screenoff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 313
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_use_voldown_screenoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 314
    :cond_1e
    const-string v7, "use_volume"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 315
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 317
    const-string v8, " > /sys/keyboard/vol_wakeup;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 316
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    :cond_1f
    const-string v7, "soft_menu_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 319
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_soft_menu_key"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 321
    :cond_20
    const-string v7, "cap_home_cam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 322
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_use_cap_camera"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 323
    :cond_21
    const-string v7, "gestures_vibration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 324
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_3finger_vibration"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 325
    :cond_22
    const-string v7, "hide_navbar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 326
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_23

    .line 328
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_2
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 330
    :cond_23
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    :cond_24
    const-string v7, "haptic_override"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 334
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_capactive_feedback_override"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 336
    :cond_25
    const-string v7, "haptic_lockscreen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 337
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_haptick_feedback_ls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 338
    :cond_26
    const-string v7, "system_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 339
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "long_press_timeout"

    .line 340
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 339
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 341
    :cond_27
    const-string v7, "home_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 342
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longress_home_duration"

    .line 343
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 342
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 344
    :cond_28
    const-string v7, "back_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 345
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longress_back_duration"

    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 345
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 349
    :cond_29
    const-string v7, "recent_duration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 350
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_longress_recent_duration"

    .line 351
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 350
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 354
    :cond_2a
    const-string v7, "vol_up_cam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 355
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_camera_volup_down"

    .line 356
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 355
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 357
    :cond_2b
    const-string v7, "vol_down_cam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 358
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_camera_voldown_down"

    .line 359
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 358
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 360
    :cond_2c
    const-string v7, "pulldown_gesture_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 361
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_pulldown_gesture_mode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 364
    :cond_2d
    const-string v7, "cap_brightness"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    const-string v7, "echo 0 > /sys/class/leds/button-backlight/currents"

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    const-string v7, "echo 20 > /sys/class/leds/button-backlight/currents"

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_cap_brightness"

    .line 377
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 376
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 382
    .end local v4           #val:Ljava/lang/String;
    :cond_2e
    const-string v7, "textinput_magnifier"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 383
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "htc_magnifier_setting"

    .line 384
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 383
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 386
    :cond_2f
    const-string v7, "show_menu"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 387
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_always_show_menu"

    .line 388
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 387
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 392
    :cond_30
    const-string v7, "show_search"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 393
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_always_show_search"

    .line 394
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 393
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 398
    :cond_31
    const-string v7, "navbar_height"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .restart local v4       #val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_height"

    .line 406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 405
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "gestures"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const-class v1, Lcom/m0narx/tweaks/fragments/gestures;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->startFragmentActivity(Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 421
    :cond_1
    const-string v1, "keyboardskin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 423
    :cond_2
    const-string v1, "pulldown_gestures_cust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/buttons;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->updateHeader()V

    .line 149
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->set3FingerService()V

    .line 151
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 644
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->set3FingerService()V

    .line 654
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 655
    return-void
.end method

.method public set3FingerService()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/buttons;->Cr:Landroid/content/ContentResolver;

    const-string v3, "htc_gestures_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 622
    .local v0, enable:Z
    :goto_0
    const-string v1, "gestures_vibration"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/buttons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 623
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 624
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v1

    .line 620
    goto :goto_0
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/buttons;->updateHeader()V

    .line 167
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/buttons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
