.class public Lcom/m0narx/tweaks/fragments/TabButtons;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabButtons.java"


# static fields
.field private static final ACTION_CUSTOM_APP:I = 0x4

.field private static final ACTION_CUSTOM_SHORTCUT:I = 0x17

.field public static final CAP_BRIGHTNESS:Ljava/lang/String; = "/sys/class/leds/button-backlight/lut_coefficient"

.field private static final ITEM_BACK:I = 0x1

.field private static final ITEM_BACK_VALUE:Ljava/lang/String; = "4"

.field private static final ITEM_HOME:I = 0x2

.field private static final ITEM_HOME_VALUE:Ljava/lang/String; = "3"

.field private static final ITEM_MENU:I = 0x4

.field private static final ITEM_MENU_VALUE:Ljava/lang/String; = "82"

.field private static final ITEM_RECENTS:I = 0x3

.field private static final ITEM_RECENTS_VALUE:Ljava/lang/String; = "187"

.field private static final ITEM_SEARCH:I = 0x0

.field private static final ITEM_SEARCH_VALUE:Ljava/lang/String; = "84"

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
    .line 42
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 600
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 605
    :goto_1
    return v1

    .line 600
    :cond_0
    aget-object v0, p1, v2

    .line 601
    .local v0, value:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    const/4 v1, 0x1

    goto :goto_1

    .line 600
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkL2M()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 824
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/android_touch/logo2menu"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, file:Ljava/io/File;
    const-string v3, "shortpress_menu"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 828
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 831
    const-string v3, "/sys/android_touch/logo2menu"

    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 833
    .local v2, value:I
    if-ne v2, v4, :cond_0

    .line 834
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 840
    .end local v2           #value:I
    :goto_0
    return-void

    .line 836
    .restart local v2       #value:I
    :cond_0
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 838
    .end local v2           #value:I
    :cond_1
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getButtonActionById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 111
    const-string v0, ""

    :goto_0
    return-object v0

    .line 87
    :sswitch_0
    const-string v0, "longpress_home"

    goto :goto_0

    .line 90
    :sswitch_1
    const-string v0, "longpress_back"

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v0, "longpress_recent"

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v0, "shortpress_homedouble"

    goto :goto_0

    .line 98
    :sswitch_4
    const-string v0, "shortpress_backdouble"

    goto :goto_0

    .line 100
    :sswitch_5
    const-string v0, "shortpress_recentdouble"

    goto :goto_0

    .line 102
    :sswitch_6
    const-string v0, "shortpress_recent"

    goto :goto_0

    .line 105
    :sswitch_7
    const-string v0, "shortpress_home"

    goto :goto_0

    .line 108
    :sswitch_8
    const-string v0, "shortpress_home_swipe"

    goto :goto_0

    .line 84
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
    .locals 11

    .prologue
    const/16 v10, 0xc8

    .line 753
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v1, file:Ljava/io/File;
    const-string v7, "cap_brightness"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 757
    .local v2, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 758
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setEnabled(Z)V

    .line 760
    const-string v7, "/sys/class/leds/button-backlight/lut_coefficient"

    invoke-static {v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 762
    .local v4, value:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 763
    const/16 v7, 0x64

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 764
    move v3, v4

    .line 765
    .local v3, progress:I
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 770
    .end local v3           #progress:I
    .end local v4           #value:I
    :goto_0
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_autohide_delay"

    const/16 v9, 0xbb8

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 772
    .restart local v4       #value:I
    const-string v7, "navbar_autohide_delay"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 774
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 775
    const/16 v7, 0x3c

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 776
    div-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 778
    const-string v7, "navbar_touchdetector_width"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 780
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_touchdetector_width"

    const/16 v9, 0x438

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 782
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 784
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 785
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 786
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 788
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 790
    .local v5, width:I
    invoke-virtual {v2, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 791
    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 793
    const-string v7, "navbar_touchdetector_height"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 795
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_touchdetector_height"

    const/16 v9, 0x28

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 797
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    const/16 v7, 0x32

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 799
    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 801
    const-string v7, "navbar_height"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 803
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_height"

    const/16 v9, 0x78

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 805
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 806
    invoke-virtual {v2, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 807
    move v3, v4

    .line 808
    .restart local v3       #progress:I
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 811
    const-string v7, "navbar_swipe_sensitivy"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 813
    .restart local v2       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_swipe_sensitivy"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 815
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    const/16 v7, 0x3e8

    invoke-virtual {v2, v7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 817
    move v3, v4

    .line 818
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 821
    return-void

    .line 768
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

.method private setHideOnPress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 844
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_navbar_hideonpress"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 845
    const-string v0, "navbar_hide_items"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_0
    const-string v0, "navbar_hide_items"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setM8Prefs()V
    .locals 3

    .prologue
    .line 724
    const-string v2, "buttons_settings"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 726
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    const-string v2, "buttons_misc_category"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 729
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "pref_capacitive_backlight"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 730
    const-string v2, "cap_brightness"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 732
    const-string v2, "home_swipe_cat"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 749
    :goto_0
    return-void

    .line 735
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    const-string v2, "navigationbar"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 737
    const-string v2, "longpress_durations"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 739
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "recent_duration"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 741
    const-string v2, "button_longpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 742
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "longpress_recent"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 744
    const-string v2, "button_shortpress"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 745
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

    .line 853
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_navigationbar_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 855
    .local v0, type:I
    if-nez v0, :cond_0

    .line 856
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 857
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 859
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 860
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 861
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 862
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 863
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 864
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 865
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 866
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 867
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 868
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 869
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 870
    const-string v1, "navbar_hide_items"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 871
    const-string v1, "navbar_swipe_sensitivy"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 908
    :goto_0
    return-void

    .line 873
    :cond_0
    if-ne v0, v4, :cond_1

    .line 874
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 875
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 877
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 878
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 879
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 880
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 881
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 882
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 883
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 884
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 885
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 886
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 887
    const-string v1, "navbar_hide_items"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 888
    const-string v1, "navbar_swipe_sensitivy"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 889
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setHideOnPress()V

    goto/16 :goto_0

    .line 891
    :cond_1
    const-string v1, "show_menu"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 892
    const-string v1, "show_search"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 894
    const-string v1, "navbar_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 895
    const-string v1, "navbar_autohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 896
    const-string v1, "navbar_autohide_delay"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 897
    const-string v1, "navbar_touchdetector_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 898
    const-string v1, "navbar_touchdetector_width"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 899
    const-string v1, "navbar_touchdetector_height"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 900
    const-string v1, "navbar_show_type"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 901
    const-string v1, "navbar_touchanywheretohide"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 902
    const-string v1, "navbar_hideonpress"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 903
    const-string v1, "navbar_background_color"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 904
    const-string v1, "navbar_hide_items"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 905
    const-string v1, "navbar_swipe_sensitivy"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 920
    const v0, 0x7f040003

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    const-string v0, "buttons"

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0xf

    const/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 611
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "gestures"

    aput-object v1, v0, v4

    .line 612
    const-string v1, "pulldown_gestures_cust"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "navbar_hide_items"

    aput-object v2, v0, v1

    .line 611
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnClickListener([Ljava/lang/String;)V

    .line 614
    const-string v0, "haptic_override"

    .line 615
    const-string v1, "tweaks_capactive_feedback_override"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 614
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 617
    const-string v0, "haptic_lockscreen"

    const-string v1, "tweaks_haptick_feedback_ls"

    .line 618
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 617
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    const-string v0, "gestures_vibration"

    const-string v1, "tweaks_3finger_vibration"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 621
    const-string v0, "pref_capacitive_backlight"

    .line 622
    const-string v1, "tweaks_buttons_backlight"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v3, ""

    .line 621
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;)V

    .line 624
    const-string v0, "longpress_home"

    const-string v1, "tweaks_longpress_home"

    .line 625
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 624
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 626
    const-string v0, "longpress_back"

    const-string v1, "tweaks_longpress_back"

    .line 627
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 626
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 628
    const-string v0, "longpress_recent"

    const-string v1, "tweaks_longpress_recent"

    .line 629
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 628
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 631
    const-string v0, "shortpress_homedouble"

    .line 632
    const-string v1, "tweaks_shortpress_homedouble"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 631
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 633
    const-string v0, "shortpress_backdouble"

    .line 634
    const-string v1, "tweaks_shortpress_backdouble"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 633
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 636
    const-string v0, "doublepress_home_interval"

    .line 637
    const-string v1, "tweaks_doublepressinterval_home"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 636
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 638
    const-string v0, "doublepress_back_interval"

    .line 639
    const-string v1, "tweaks_doublepressinterval_back"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 638
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 641
    const-string v0, "shortpress_recent"

    const-string v1, "tweaks_shortpress_recent"

    .line 642
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 641
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 643
    const-string v0, "shortpress_home"

    const-string v1, "tweaks_shortpress_home"

    .line 644
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 643
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 646
    const-string v0, "shortpress_home_swipe"

    .line 647
    const-string v1, "tweaks_shortpress_home_swipe"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 646
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 649
    const-string v0, "use_voldown_screenoff"

    .line 650
    const-string v1, "tweaks_use_voldown_screenoff"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 649
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 651
    const-string v0, "use_volume"

    const-string v1, "tweaks_use_volume"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 654
    const-string v0, "navigationbar_type"

    const-string v1, "tweaks_navigationbar_type"

    .line 655
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 654
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 657
    const-string v0, "system_duration"

    const-string v1, "long_press_timeout"

    .line 658
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 657
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListenerSecure(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 659
    const-string v0, "home_duration"

    const-string v1, "tweaks_longress_home_duration"

    .line 660
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 659
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 661
    const-string v0, "back_duration"

    const-string v1, "tweaks_longress_back_duration"

    .line 662
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 661
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 664
    const-string v0, "recent_duration"

    const-string v1, "tweaks_longress_recent_duration"

    .line 665
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 664
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 669
    const-string v0, "pulldown_gesture_mode"

    .line 670
    const-string v1, "tweaks_pulldown_gesture_mode"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 669
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 672
    const-string v0, "cap_brightness"

    const-string v1, ""

    .line 673
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 672
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 675
    const-string v0, "textinput_magnifier"

    const-string v1, "htc_magnifier_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 677
    const-string v0, "show_menu"

    const-string v1, "tweaks_navbar_always_show_menu"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 678
    const-string v0, "show_search"

    const-string v1, "tweaks_navbar_always_show_search"

    .line 679
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 678
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 681
    const-string v0, "navbar_height"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 682
    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 681
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 684
    const-string v0, "navbar_autohide"

    const-string v1, "tweaks_navbar_autohide"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 686
    const-string v0, "navbar_autohide_delay"

    const-string v1, ""

    .line 687
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 686
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 689
    const-string v0, "navbar_touchdetector_color"

    .line 690
    const-string v1, "tweaks_navbar_activationarea_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 691
    const v3, -0x44aaaaab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 689
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 693
    const-string v0, "navbar_touchdetector_width"

    const-string v1, ""

    .line 694
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x438

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 693
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 695
    const-string v0, "navbar_touchdetector_height"

    const-string v1, ""

    .line 696
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 695
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 698
    const-string v0, "navbar_show_type"

    const-string v1, "tweaks_navbar_show_type"

    .line 699
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 698
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 700
    const-string v0, "navbar_touchanywheretohide"

    .line 701
    const-string v1, "tweaks_navbar_touchanywheretohide"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 700
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 703
    const-string v0, "navbar_hideonpress"

    const-string v1, "tweaks_navbar_hideonpress"

    .line 704
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 703
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 706
    const-string v0, "navbar_background_color"

    .line 707
    const-string v1, "tweaks_navbar_background_color"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 708
    const/high16 v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 706
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 710
    const-string v0, "navbar_swipe_sensitivy"

    const-string v1, ""

    .line 711
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 710
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtons;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 713
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 714
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setNavbar()V

    .line 717
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->initSeekBars()V

    .line 719
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setM8Prefs()V

    .line 721
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

    .line 115
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->getActivity()Landroid/app/Activity;

    .line 117
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragments/TabButtons;->getButtonActionById(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, buttonAction:Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 122
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateButtons()V

    goto :goto_0

    .line 132
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

    .line 133
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

    .line 134
    const-string v3, "package"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
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

    .line 136
    const-string v3, "activity"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 138
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 147
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

    .line 149
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

    .line 150
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 153
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
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

    .line 185
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 190
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    if-ne v7, v8, :cond_0

    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    :cond_0
    const-string v7, "pref_capacitive_backlight"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_buttons_backlight"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    move v5, v6

    .line 497
    :goto_1
    return v5

    .line 196
    :cond_2
    const-string v7, "longpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 202
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 203
    if-eqz v7, :cond_4

    .line 205
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc9

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 210
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_home"

    .line 211
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 210
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 212
    :cond_5
    const-string v7, "longpress_back"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 213
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 214
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v8, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 217
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 218
    if-eqz v7, :cond_7

    .line 219
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xca

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 224
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_back"

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 224
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 227
    :cond_8
    const-string v7, "longpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 229
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longpress_recent"

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 229
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 232
    :cond_9
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v11}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 236
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    const-string v7, "shortpress_homedouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 238
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 241
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 242
    if-eqz v7, :cond_c

    .line 243
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcc

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 248
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_homedouble"

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 248
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 250
    :cond_d
    const-string v7, "shortpress_recentdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 251
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 252
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_recentdouble"

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 252
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 255
    :cond_e
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, 0x5

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 259
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    const-string v7, "shortpress_backdouble"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 260
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 261
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .restart local v3       #myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v9}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 264
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 265
    if-eqz v7, :cond_11

    .line 266
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcd

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 271
    .end local v2           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_backdouble"

    .line 272
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 271
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 273
    :cond_12
    const-string v7, "shortpress_recent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 274
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 275
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_recent"

    .line 276
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 275
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 278
    :cond_13
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x6

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 283
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_14
    const-string v7, "shortpress_home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 285
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/4 v6, 0x7

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 288
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 289
    if-eqz v7, :cond_16

    .line 290
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xcb

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 295
    .end local v2           #intent:Landroid/content/Intent;
    :cond_16
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_home"

    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 295
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 298
    :cond_17
    const-string v7, "shortpress_home_swipe"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 300
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "htc_home_swipe"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 303
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .restart local v3       #myIntent:Landroid/content/Intent;
    const/16 v6, 0x8

    invoke-virtual {p0, v3, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 306
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 307
    if-eqz v7, :cond_19

    .line 308
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .restart local v2       #intent:Landroid/content/Intent;
    const/16 v6, 0xc8

    invoke-virtual {p0, v2, v6}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 312
    .end local v2           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_shortpress_home_swipe"

    .line 313
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 312
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 315
    :cond_1a
    const-string v7, "doublepress_home_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 316
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_home"

    .line 317
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 316
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 318
    :cond_1b
    const-string v7, "doublepress_recent_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 319
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_recent"

    .line 320
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 319
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 321
    :cond_1c
    const-string v7, "doublepress_back_interval"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 322
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_doublepressinterval_back"

    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 322
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 325
    :cond_1d
    const-string v7, "use_voldown_screenoff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 326
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_voldown_screenoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 327
    :cond_1e
    const-string v7, "use_volume"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 328
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 330
    const-string v7, " > /sys/keyboard/vol_wakeup;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 331
    :cond_1f
    const-string v7, "soft_menu_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 332
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_soft_menu_key"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 334
    :cond_20
    const-string v7, "cap_home_cam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 335
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_use_cap_camera"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 336
    :cond_21
    const-string v7, "gestures_vibration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 337
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_3finger_vibration"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 338
    :cond_22
    const-string v7, "navigationbar_type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 340
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_23

    .line 342
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_use_venomextension"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    :cond_23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_24

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

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_25

    .line 354
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "HIDE_NAV_BAR"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    const-string v7, "qemu.hw.mainkeys"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_navbar_use_venomextension"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    :cond_25
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navigationbar_type"

    .line 360
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 359
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setNavbar()V

    .line 364
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 365
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 366
    :cond_26
    const-string v5, "haptic_override"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 367
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_capactive_feedback_override"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 369
    :cond_27
    const-string v5, "haptic_lockscreen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 370
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_haptick_feedback_ls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 371
    :cond_28
    const-string v5, "system_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 372
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "long_press_timeout"

    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 372
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 374
    :cond_29
    const-string v5, "home_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 375
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_home_duration"

    .line 376
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 375
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 377
    :cond_2a
    const-string v5, "back_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 378
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_back_duration"

    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 378
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 381
    :cond_2b
    const-string v5, "recent_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 382
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_longress_recent_duration"

    .line 383
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 382
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 385
    :cond_2c
    const-string v5, "vol_up_cam"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 386
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_camera_volup_down"

    .line 387
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 386
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 388
    :cond_2d
    const-string v5, "vol_down_cam"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 389
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_camera_voldown_down"

    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 389
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 391
    :cond_2e
    const-string v5, "pulldown_gesture_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 392
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_pulldown_gesture_mode"

    .line 393
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 392
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 395
    :cond_2f
    const-string v5, "cap_brightness"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
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

    .line 403
    const-string v5, "echo 0 > /sys/class/leds/button-backlight/currents"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    const-string v5, "echo 20 > /sys/class/leds/button-backlight/currents"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_cap_brightness"

    .line 408
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 407
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    sget-object v5, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 412
    .end local v4           #val:Ljava/lang/String;
    :cond_30
    const-string v5, "textinput_magnifier"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 413
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "htc_magnifier_setting"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 414
    :cond_31
    const-string v5, "show_menu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 415
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_always_show_menu"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
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

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 424
    :cond_33
    const-string v5, "navbar_height"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 426
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 428
    .restart local v4       #val:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 433
    .end local v4           #val:Ljava/lang/String;
    :cond_34
    const-string v5, "navbar_autohide"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 434
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_autohide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 438
    :cond_35
    const-string v5, "navbar_autohide_delay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 440
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_autohide_delay"

    .line 443
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 442
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 445
    :cond_36
    const-string v5, "navbar_touchdetector_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 447
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_activationarea_color"

    .line 448
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 447
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 452
    :cond_37
    const-string v5, "navbar_touchdetector_width"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 454
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchdetector_width"

    .line 457
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 456
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 461
    :cond_38
    const-string v5, "navbar_touchdetector_height"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 463
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchdetector_height"

    .line 466
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 465
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 470
    :cond_39
    const-string v5, "navbar_show_type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 471
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_show_type"

    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 471
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 473
    :cond_3a
    const-string v5, "navbar_touchtoshow"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 474
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchtoshow"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 475
    :cond_3b
    const-string v5, "navbar_touchanywheretohide"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 476
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_touchanywheretohide"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 477
    :cond_3c
    const-string v5, "navbar_hideonpress"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 478
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_hideonpress"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->setHideOnPress()V

    goto/16 :goto_0

    .line 480
    :cond_3d
    const-string v5, "navbar_background_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 482
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_background_color"

    .line 483
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 482
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 488
    :cond_3e
    const-string v5, "navbar_swipe_sensitivy"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 490
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_swipe_sensitivy"

    .line 491
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 490
    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 502
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, PKey:Ljava/lang/String;
    const-string v5, "gestures"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    const-class v5, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->startFragmentActivity(Ljava/lang/String;)V

    .line 596
    :cond_0
    :goto_0
    return v8

    .line 505
    :cond_1
    const-string v5, "keyboardskin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 507
    :cond_2
    const-string v5, "pulldown_gestures_cust"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 509
    :cond_3
    const-string v5, "navbar_hide_items"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 510
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    .line 511
    const-string v6, "tweaks_hide_navbaronpress"

    .line 510
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, airplaneModeItems:Ljava/lang/String;
    const/4 v5, 0x5

    new-array v0, v5, [Z

    .line 515
    .local v0, AirplaneModeItems:[Z
    aput-boolean v8, v0, v7

    .line 516
    aput-boolean v8, v0, v8

    .line 517
    aput-boolean v8, v0, v9

    .line 518
    aput-boolean v8, v0, v10

    .line 519
    aput-boolean v8, v0, v11

    .line 521
    const/4 v5, 0x5

    new-array v1, v5, [Ljava/lang/String;

    .line 523
    .local v1, AirplaneModeValues:[Ljava/lang/String;
    const-string v5, "84"

    aput-object v5, v1, v7

    .line 524
    const-string v5, "4"

    aput-object v5, v1, v8

    .line 525
    const-string v5, "3"

    aput-object v5, v1, v9

    .line 526
    const-string v5, "187"

    aput-object v5, v1, v10

    .line 527
    const-string v5, "82"

    aput-object v5, v1, v11

    .line 529
    if-eqz v3, :cond_8

    .line 530
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, items:[Ljava/lang/String;
    const-string v5, "84"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 533
    aput-boolean v7, v0, v7

    .line 536
    :cond_4
    const-string v5, "4"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 537
    aput-boolean v7, v0, v8

    .line 540
    :cond_5
    const-string v5, "3"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 541
    aput-boolean v7, v0, v9

    .line 544
    :cond_6
    const-string v5, "187"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 545
    aput-boolean v7, v0, v10

    .line 548
    :cond_7
    const-string v5, "82"

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabButtons;->CheckKeyExist([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 549
    aput-boolean v7, v0, v11

    .line 554
    .end local v4           #items:[Ljava/lang/String;
    :cond_8
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 555
    const v6, 0x7f0a0514

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 556
    const v6, 0x7f0500a3

    .line 558
    new-instance v7, Lcom/m0narx/tweaks/fragments/TabButtons$1;

    invoke-direct {v7, p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons$1;-><init>(Lcom/m0narx/tweaks/fragments/TabButtons;[Z)V

    .line 556
    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 566
    const v6, 0x7f0a0056

    .line 567
    new-instance v7, Lcom/m0narx/tweaks/fragments/TabButtons$2;

    invoke-direct {v7, p0, v0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons$2;-><init>(Lcom/m0narx/tweaks/fragments/TabButtons;[Z[Ljava/lang/String;)V

    .line 566
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 592
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateHeader()V

    .line 163
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 165
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 936
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 938
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->set3FingerService()V

    .line 946
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 947
    return-void
.end method

.method public set3FingerService()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 911
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    const-string v3, "htc_gestures_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 914
    .local v0, enable:Z
    :goto_0
    const-string v1, "gestures_vibration"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabButtons;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 915
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 916
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabButtons;->updateHeader()V

    .line 181
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtons;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
