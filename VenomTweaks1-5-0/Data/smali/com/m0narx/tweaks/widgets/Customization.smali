.class public Lcom/m0narx/tweaks/widgets/Customization;
.super Ljava/lang/Object;
.source "Customization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/Customization$NewTab;,
        Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "m0narX_Cutomization"


# instance fields
.field private localization:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

.field private mThemingOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->localization:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mThemingOptions:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 54
    iput-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization;->screenName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Ljava/lang/String;)V
    .locals 1
    .parameter "prefs"
    .parameter "name"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->localization:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mThemingOptions:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Customization;->screenName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/Customization;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/Customization;->setReboot(Ljava/lang/String;)V

    return-void
.end method

.method private addCPUSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 7
    .parameter "prefCat"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "restart"
    .parameter "max"
    .parameter "showvalue"

    .prologue
    .line 557
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v5, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarCPU:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v5, p2, v6, p2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 559
    .local v2, current_value:I
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p7}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    .line 560
    .local v0, bar:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    if-eqz p8, :cond_0

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    new-instance v1, Lcom/m0narx/tweaks/widgets/Customization$7;

    invoke-direct {v1, p0, p4}, Lcom/m0narx/tweaks/widgets/Customization$7;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 569
    .local v1, callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    .line 573
    .end local v1           #callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    :goto_0
    invoke-virtual {v0, p7}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 575
    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 576
    new-instance v4, Lcom/m0narx/tweaks/widgets/Customization$8;

    invoke-direct {v4, p0, p2, p6}, Lcom/m0narx/tweaks/widgets/Customization$8;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 586
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_1
    return-void

    .line 571
    :cond_0
    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :catch_0
    move-exception v3

    .line 588
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addCheckBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "prefCat"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "restart"

    .prologue
    const/4 v3, 0x1

    .line 462
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v5, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v5, p2, v6, p2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 464
    .local v1, current_value:I
    new-instance v0, Lcom/htc/preference/HtcSwitchPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 465
    .local v0, checkbox:Lcom/htc/preference/HtcSwitchPreference;
    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {v0, p4}, Lcom/htc/preference/HtcSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 468
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 469
    new-instance v3, Lcom/m0narx/tweaks/widgets/Customization$2;

    invoke-direct {v3, p0, p2, p6}, Lcom/m0narx/tweaks/widgets/Customization$2;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 479
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_1
    return-void

    .line 467
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addColorBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "category"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "StrValue"
    .parameter "hasAlpha"
    .parameter "restart"

    .prologue
    .line 620
    invoke-static {p5}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    .line 621
    .local v3, value:I
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v5, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v5, p2, v6, p2, v3}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 626
    .local v1, current_value:I
    new-instance v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, color:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;
    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setKey(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setCurrentColor(I)V

    .line 631
    const-string v4, "true"

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    .line 632
    new-instance v4, Lcom/m0narx/tweaks/widgets/Customization$10;

    invoke-direct {v4, p0, p2, p7}, Lcom/m0narx/tweaks/widgets/Customization$10;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 641
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_1
    return-void

    .line 631
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addInputBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "category"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "restart"

    .prologue
    .line 592
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v4, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v5, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v4, p2, v5, p2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, current_value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 595
    move-object v0, p5

    .line 597
    :cond_0
    new-instance v2, Lcom/htc/preference/HtcEditTextPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 598
    .local v2, txt:Lcom/htc/preference/HtcEditTextPreference;
    invoke-virtual {v2, p3}, Lcom/htc/preference/HtcEditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 599
    invoke-virtual {v2, p4}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2, p3}, Lcom/htc/preference/HtcEditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {v2, p2}, Lcom/htc/preference/HtcEditTextPreference;->setKey(Ljava/lang/String;)V

    .line 603
    new-instance v3, Lcom/m0narx/tweaks/widgets/Customization$9;

    invoke-direct {v3, p0, p2, p6}, Lcom/m0narx/tweaks/widgets/Customization$9;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 612
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addList(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 16
    .parameter "category"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "item"
    .parameter "restart"

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v14, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v15, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v14, v0, v15, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, current_value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 397
    move-object/from16 v3, p5

    .line 399
    :cond_0
    new-instance v10, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v10, v13}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 400
    .local v10, list:Lcom/htc/preference/HtcListPreference;
    invoke-interface/range {p6 .. p6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 402
    .local v7, entrysNode:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 403
    .local v11, numEntrys:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v8, v13, :cond_1

    .line 410
    new-array v6, v11, [Ljava/lang/String;

    .line 411
    .local v6, entrys:[Ljava/lang/String;
    new-array v12, v11, [Ljava/lang/String;

    .line 412
    .local v12, values:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 413
    .local v9, j:I
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v8, v13, :cond_3

    .line 422
    invoke-virtual {v10, v6}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v10, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 425
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 426
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setKey(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v10, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 430
    new-instance v13, Lcom/m0narx/tweaks/widgets/Customization$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-direct {v13, v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Customization$1;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 439
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_2
    return-void

    .line 404
    .end local v6           #entrys:[Ljava/lang/String;
    .end local v9           #j:I
    .end local v12           #values:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 405
    .local v5, entry:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "entry"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 406
    add-int/lit8 v11, v11, 0x1

    .line 403
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 414
    .end local v5           #entry:Lorg/w3c/dom/Node;
    .restart local v6       #entrys:[Ljava/lang/String;
    .restart local v9       #j:I
    .restart local v12       #values:[Ljava/lang/String;
    :cond_3
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 415
    .restart local v5       #entry:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "entry"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 416
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "name"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    .line 417
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 418
    add-int/lit8 v9, v9, 0x1

    .line 413
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 440
    .end local v5           #entry:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v4

    .line 441
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addRevertableSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 7
    .parameter "prefCat"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "restart"
    .parameter "max"
    .parameter "showvalue"

    .prologue
    .line 521
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v5, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v5, p2, v6, p2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 523
    .local v2, current_value:I
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;-><init>(Landroid/content/Context;I)V

    .line 524
    .local v0, bar:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v0, p5}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setRevertToValue(I)V

    .line 526
    if-eqz p8, :cond_0

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    new-instance v1, Lcom/m0narx/tweaks/widgets/Customization$5;

    invoke-direct {v1, p0, p4}, Lcom/m0narx/tweaks/widgets/Customization$5;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 534
    .local v1, callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    .line 538
    .end local v1           #callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    :goto_0
    invoke-virtual {v0, p7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 539
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setDefaultValue(Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setKey(Ljava/lang/String;)V

    .line 541
    new-instance v4, Lcom/m0narx/tweaks/widgets/Customization$6;

    invoke-direct {v4, p0, p2, p6}, Lcom/m0narx/tweaks/widgets/Customization$6;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 551
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_1
    return-void

    .line 536
    :cond_0
    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :catch_0
    move-exception v3

    .line 553
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 7
    .parameter "prefCat"
    .parameter "tweak"
    .parameter "title"
    .parameter "summary"
    .parameter "value"
    .parameter "restart"
    .parameter "max"
    .parameter "showvalue"

    .prologue
    .line 485
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    new-instance v5, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v6, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v5, p2, v6, p2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 487
    .local v2, current_value:I
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, bar:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    if-eqz p8, :cond_0

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    new-instance v1, Lcom/m0narx/tweaks/widgets/Customization$3;

    invoke-direct {v1, p0, p4}, Lcom/m0narx/tweaks/widgets/Customization$3;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 497
    .local v1, callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    .line 501
    .end local v1           #callback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;
    :goto_0
    invoke-virtual {v0, p7}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setMax(I)V

    .line 502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setKey(Ljava/lang/String;)V

    .line 504
    new-instance v4, Lcom/m0narx/tweaks/widgets/Customization$4;

    invoke-direct {v4, p0, p2, p6}, Lcom/m0narx/tweaks/widgets/Customization$4;-><init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 514
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_1
    return-void

    .line 499
    :cond_0
    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 515
    :catch_0
    move-exception v3

    .line 516
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addTweaks(Lorg/w3c/dom/Node;)V
    .locals 30
    .parameter "category"

    .prologue
    .line 286
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "name"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    .line 287
    .local v24, catName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 288
    .local v3, prefCat:Lcom/htc/preference/HtcPreferenceCategory;
    if-nez v3, :cond_1

    .line 289
    move-object/from16 v25, v24

    .line 290
    .local v25, catTitle:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "title"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "title"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    .line 293
    :cond_0
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v3           #prefCat:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 294
    .restart local v3       #prefCat:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v25           #catTitle:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 303
    .local v28, items:Lorg/w3c/dom/NodeList;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v27

    if-lt v0, v2, :cond_2

    .line 356
    return-void

    .line 298
    .end local v27           #i:I
    .end local v28           #items:Lorg/w3c/dom/NodeList;
    .restart local v25       #catTitle:Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 299
    .local v26, e:Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v25           #catTitle:Ljava/lang/String;
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v27       #i:I
    .restart local v28       #items:Lorg/w3c/dom/NodeList;
    :cond_2
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 305
    .local v22, item:Lorg/w3c/dom/Node;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    .line 306
    .local v29, type:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, tweak:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, title:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, summary:Ljava/lang/String;
    const/4 v8, 0x0

    .line 307
    .local v8, restart:Ljava/lang/String;
    const-string v2, "checkbox"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 308
    const-string v2, "inputbox"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 309
    const-string v2, "color"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 310
    const-string v2, "list"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    const-string v2, "seekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 312
    const-string v2, "cpuseekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    :cond_3
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "tweak"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "title"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "summary"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 318
    :try_start_1
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "restart"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 324
    :cond_4
    :goto_2
    const-string v2, "checkbox"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "default"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, value:I
    move-object/from16 v2, p0

    .line 326
    invoke-direct/range {v2 .. v8}, Lcom/m0narx/tweaks/widgets/Customization;->addCheckBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    .end local v7           #value:I
    :cond_5
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 319
    :catch_1
    move-exception v26

    .line 320
    .restart local v26       #e:Ljava/lang/Exception;
    const-string v8, "false"

    goto :goto_2

    .line 327
    .end local v26           #e:Ljava/lang/Exception;
    :cond_6
    const-string v2, "inputbox"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 328
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "default"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .local v7, value:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 329
    invoke-direct/range {v2 .. v8}, Lcom/m0narx/tweaks/widgets/Customization;->addInputBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 330
    .end local v7           #value:Ljava/lang/String;
    :cond_7
    const-string v2, "color"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 331
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "default"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 332
    .restart local v7       #value:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "hasalpha"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .local v15, alpha:Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v16, v8

    .line 333
    invoke-direct/range {v9 .. v16}, Lcom/m0narx/tweaks/widgets/Customization;->addColorBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 334
    .end local v7           #value:Ljava/lang/String;
    .end local v15           #alpha:Ljava/lang/String;
    :cond_8
    const-string v2, "list"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 335
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "default"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #value:Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    .line 336
    invoke-direct/range {v16 .. v23}, Lcom/m0narx/tweaks/widgets/Customization;->addList(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 337
    .end local v7           #value:Ljava/lang/String;
    :cond_9
    const-string v2, "seekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 338
    const-string v2, "cpuseekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 339
    const-string v2, "reverseseekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    :cond_a
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "default"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 341
    .local v7, value:I
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "max"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 342
    .local v9, max:I
    const/4 v10, 0x0

    .line 343
    .local v10, showvalue:Z
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "showvalue"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 344
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "showvalue"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v11, "1"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 345
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v11, "showvalue"

    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v11, "true"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 344
    const/4 v10, 0x0

    .line 347
    :cond_b
    :goto_4
    const-string v2, "seekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v2, p0

    .line 348
    invoke-direct/range {v2 .. v10}, Lcom/m0narx/tweaks/widgets/Customization;->addSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_3

    .line 344
    :cond_c
    const/4 v10, 0x1

    goto :goto_4

    .line 349
    :cond_d
    const-string v2, "cpuseekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v2, p0

    .line 350
    invoke-direct/range {v2 .. v10}, Lcom/m0narx/tweaks/widgets/Customization;->addCPUSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_3

    .line 351
    :cond_e
    const-string v2, "revertseekbar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, p0

    .line 352
    invoke-direct/range {v2 .. v10}, Lcom/m0narx/tweaks/widgets/Customization;->addRevertableSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_3
.end method

.method private getTweaksFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/customize/tweaks.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, customizationFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    .end local v0           #customizationFile:Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private performActionsForCategory(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "action"
    .parameter "node"

    .prologue
    .line 371
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 372
    .local v5, screens:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 390
    return-void

    .line 373
    :cond_0
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 374
    .local v4, screen:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 375
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/Customization;->screenName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 376
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 377
    .local v1, categories:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 372
    .end local v1           #categories:Lorg/w3c/dom/NodeList;
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .restart local v1       #categories:Lorg/w3c/dom/NodeList;
    .restart local v3       #j:I
    :cond_2
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 379
    .local v0, cat:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 380
    const-string v6, "remove"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 381
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/widgets/Customization;->removeTweaks(Lorg/w3c/dom/Node;)V

    .line 377
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :cond_4
    const-string v6, "add"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/widgets/Customization;->addTweaks(Lorg/w3c/dom/Node;)V

    goto :goto_2
.end method

.method private performAddScreens(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 12
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/Customization$NewTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 230
    .local v5, screens:Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, add:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/Customization$NewTab;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v1, v9, :cond_0

    .line 257
    return-object v0

    .line 232
    :cond_0
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 233
    .local v3, screen:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "screen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 234
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, screenName:Ljava/lang/String;
    const-string v2, "false"

    .line 237
    .local v2, isNew:Ljava/lang/String;
    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "new"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 239
    :goto_1
    const-string v9, "1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "true"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 241
    :cond_1
    :try_start_1
    const-string v9, "m0narX_Cutomization"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "NewTab: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "title"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, title:Ljava/lang/String;
    new-instance v6, Lcom/m0narx/tweaks/widgets/Customization$NewTab;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/widgets/Customization$NewTab;-><init>(Lcom/m0narx/tweaks/widgets/Customization;)V

    .line 244
    .local v6, tab:Lcom/m0narx/tweaks/widgets/Customization$NewTab;
    iput-object v4, v6, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    .line 245
    iput-object v7, v6, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    .line 246
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "theming"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 247
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "theming"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, val:Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->HasTheming:Z

    .line 252
    .end local v8           #val:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .end local v2           #isNew:Ljava/lang/String;
    .end local v4           #screenName:Ljava/lang/String;
    .end local v6           #tab:Lcom/m0narx/tweaks/widgets/Customization$NewTab;
    .end local v7           #title:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 253
    .restart local v2       #isNew:Ljava/lang/String;
    .restart local v4       #screenName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 238
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private performRemoveScreens(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, screensToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 266
    .local v4, screens:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 282
    return-object v5

    .line 267
    :cond_0
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 268
    .local v2, screen:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, screenName:Ljava/lang/String;
    const-string v1, "false"

    .line 272
    .local v1, remove:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "remove"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 274
    :goto_1
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    :cond_1
    :try_start_1
    const-string v6, "m0narX_Cutomization"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MarkForRemove: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    .end local v1           #remove:Ljava/lang/String;
    .end local v3           #screenName:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .restart local v1       #remove:Ljava/lang/String;
    .restart local v3       #screenName:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 273
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private removeTweaks(Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "category"

    .prologue
    .line 359
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, catName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 361
    .local v3, items:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 368
    return-void

    .line 362
    :cond_0
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 363
    .local v2, item:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/m0narx/tweaks/widgets/Customization;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setReboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reboot"

    .prologue
    .line 446
    const-string v0, "sense"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 448
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v0, "systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 451
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    goto :goto_0

    .line 452
    :cond_2
    const-string v0, "quick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 454
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    goto :goto_0

    .line 455
    :cond_3
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 457
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    goto :goto_0
.end method


# virtual methods
.method public getDefaults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization;->mDefaults:Ljava/util/List;

    return-object v0
.end method

.method public getDonationApp(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 20
    .parameter "element"
    .parameter "visiable"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/Customization;->getTweaksFile()Ljava/io/File;

    move-result-object v9

    .line 127
    .local v9, file:Ljava/io/File;
    if-nez v9, :cond_0

    const/16 v17, 0x0

    .line 155
    :goto_0
    return-object v17

    .line 128
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 130
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 131
    .local v5, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 132
    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 134
    .local v14, root:Lorg/w3c/dom/Element;
    const-string v17, "action"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 135
    .local v12, items:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_1

    .line 155
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v10           #i:I
    .end local v12           #items:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :goto_2
    const/16 v17, 0x0

    goto :goto_0

    .line 136
    .restart local v5       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v10       #i:I
    .restart local v12       #items:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 137
    .local v11, item:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 138
    .local v4, attrs:Lorg/w3c/dom/NamedNodeMap;
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, action:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v17, "setup"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 140
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 142
    .local v16, settings:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 135
    .end local v13           #j:I
    .end local v16           #settings:Lorg/w3c/dom/NodeList;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 143
    .restart local v13       #j:I
    .restart local v16       #settings:Lorg/w3c/dom/NodeList;
    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 144
    .local v15, setting:Lorg/w3c/dom/Node;
    const-string v17, "m0narX_Cutomization"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Checking "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "donation"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/m0narx/tweaks/widgets/Customization;->getDonationAppsInfo(Lorg/w3c/dom/Node;Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 142
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 152
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v10           #i:I
    .end local v11           #item:Lorg/w3c/dom/Node;
    .end local v12           #items:Lorg/w3c/dom/NodeList;
    .end local v13           #j:I
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v15           #setting:Lorg/w3c/dom/Node;
    .end local v16           #settings:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v7

    .line 153
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getDonationAppsInfo(Lorg/w3c/dom/Node;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11
    .parameter "item"
    .parameter "element"
    .parameter "visiable"

    .prologue
    .line 67
    const-string v8, "m0narX_Cutomization"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Loading donation apps list - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 69
    .local v1, entrysNode:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 71
    .local v6, numApps:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 92
    if-nez v6, :cond_6

    const/4 v7, 0x0

    .line 122
    :cond_0
    return-object v7

    .line 72
    :cond_1
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 73
    .local v0, entry:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 74
    const-string v4, ""

    .line 76
    .local v4, isVisiableStr:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "visiable"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 79
    :goto_1
    const/4 v3, 0x1

    .line 80
    .local v3, isVisiable:Z
    const-string v8, "false"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    :cond_2
    const/4 v3, 0x0

    .line 83
    :cond_3
    if-eqz p3, :cond_5

    .line 84
    if-eqz v3, :cond_4

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 71
    .end local v3           #isVisiable:Z
    .end local v4           #isVisiableStr:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .restart local v3       #isVisiable:Z
    .restart local v4       #isVisiableStr:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 94
    .end local v0           #entry:Lorg/w3c/dom/Node;
    .end local v3           #isVisiable:Z
    .end local v4           #isVisiableStr:Ljava/lang/String;
    :cond_6
    new-array v7, v6, [Ljava/lang/String;

    .line 95
    .local v7, result:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 96
    .local v5, j:I
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 97
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 98
    .restart local v0       #entry:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 99
    const-string v4, ""

    .line 101
    .restart local v4       #isVisiableStr:Ljava/lang/String;
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "visiable"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 104
    :goto_4
    const/4 v3, 0x1

    .line 105
    .restart local v3       #isVisiable:Z
    const-string v8, "false"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 106
    :cond_7
    const/4 v3, 0x0

    .line 109
    :cond_8
    if-eqz p3, :cond_a

    .line 110
    if-eqz v3, :cond_9

    .line 111
    const-string v8, "m0narX_Cutomization"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "VISIABLE App info: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 96
    .end local v3           #isVisiable:Z
    .end local v4           #isVisiableStr:Ljava/lang/String;
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 116
    .restart local v3       #isVisiable:Z
    .restart local v4       #isVisiableStr:Ljava/lang/String;
    :cond_a
    const-string v8, "m0narX_Cutomization"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "App info: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 102
    .end local v3           #isVisiable:Z
    :catch_0
    move-exception v8

    goto :goto_4

    .line 77
    .end local v5           #j:I
    .end local v7           #result:[Ljava/lang/String;
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method

.method public getDonationSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "settingname"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/Customization;->getTweaksFile()Ljava/io/File;

    move-result-object v6

    .line 161
    .local v6, file:Ljava/io/File;
    if-nez v6, :cond_0

    const/4 v14, 0x0

    .line 184
    :goto_0
    return-object v14

    .line 162
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 164
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 165
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 166
    .local v4, dom:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 168
    .local v11, root:Lorg/w3c/dom/Element;
    const-string v14, "action"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 169
    .local v9, items:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v7, v14, :cond_1

    .line 184
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dom:Lorg/w3c/dom/Document;
    .end local v7           #i:I
    .end local v9           #items:Lorg/w3c/dom/NodeList;
    .end local v11           #root:Lorg/w3c/dom/Element;
    :goto_2
    const/4 v14, 0x0

    goto :goto_0

    .line 170
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #dom:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #items:Lorg/w3c/dom/NodeList;
    .restart local v11       #root:Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 171
    .local v8, item:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 172
    .local v2, attrs:Lorg/w3c/dom/NamedNodeMap;
    const-string v14, "name"

    invoke-interface {v2, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, action:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v14, "setup"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 174
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 175
    .local v13, settings:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v10, v14, :cond_3

    .line 169
    .end local v10           #j:I
    .end local v13           #settings:Lorg/w3c/dom/NodeList;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 176
    .restart local v10       #j:I
    .restart local v13       #settings:Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 177
    .local v12, setting:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "donation"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 178
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_0

    .line 175
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 183
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dom:Lorg/w3c/dom/Document;
    .end local v7           #i:I
    .end local v8           #item:Lorg/w3c/dom/Node;
    .end local v9           #items:Lorg/w3c/dom/NodeList;
    .end local v10           #j:I
    .end local v11           #root:Lorg/w3c/dom/Element;
    .end local v12           #setting:Lorg/w3c/dom/Node;
    .end local v13           #settings:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method public loadCustomization()Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;
    .locals 13

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/Customization;->getTweaksFile()Ljava/io/File;

    move-result-object v6

    .line 193
    .local v6, file:Ljava/io/File;
    new-instance v11, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;-><init>(Lcom/m0narx/tweaks/widgets/Customization;)V

    .line 195
    .local v11, screenParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;
    if-nez v6, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v11

    .line 198
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 200
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 201
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 202
    .local v3, dom:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 204
    .local v10, root:Lorg/w3c/dom/Element;
    const-string v12, "action"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 205
    .local v9, items:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v7, v12, :cond_0

    .line 206
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 207
    .local v8, item:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 208
    .local v1, attrs:Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "name"

    invoke-interface {v1, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    iget-object v12, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    if-eqz v12, :cond_3

    const-string v12, "setup"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 210
    invoke-direct {p0, v0, v8}, Lcom/m0narx/tweaks/widgets/Customization;->performActionsForCategory(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    .line 205
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 211
    :cond_3
    const-string v12, "remove"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 212
    invoke-direct {p0, v8}, Lcom/m0narx/tweaks/widgets/Customization;->performRemoveScreens(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v11, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->remove:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 218
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dom:Lorg/w3c/dom/Document;
    .end local v7           #i:I
    .end local v8           #item:Lorg/w3c/dom/Node;
    .end local v9           #items:Lorg/w3c/dom/NodeList;
    .end local v10           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v4

    .line 219
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #attrs:Lorg/w3c/dom/NamedNodeMap;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dom:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v8       #item:Lorg/w3c/dom/Node;
    .restart local v9       #items:Lorg/w3c/dom/NodeList;
    .restart local v10       #root:Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    const-string v12, "add"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 214
    invoke-direct {p0, v8}, Lcom/m0narx/tweaks/widgets/Customization;->performAddScreens(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v11, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->add:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public removeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "screen"
    .parameter "name"

    .prologue
    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 670
    .local v0, cat:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v1, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "category"
    .parameter "name"

    .prologue
    .line 649
    const-string v3, "m0narX_Cutomization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/Customization;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v3, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 652
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    if-nez v0, :cond_0

    .line 653
    const-string v3, "m0narX_Cutomization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not found category: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    :goto_0
    return-void

    .line 656
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization;->mPrefs:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v3, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 657
    .local v2, pref:Lcom/htc/preference/HtcPreference;
    if-nez v2, :cond_1

    .line 658
    const-string v3, "m0narX_Cutomization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not found preference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v0           #cat:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v2           #pref:Lcom/htc/preference/HtcPreference;
    :catch_0
    move-exception v1

    .line 663
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 661
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cat:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v2       #pref:Lcom/htc/preference/HtcPreference;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
