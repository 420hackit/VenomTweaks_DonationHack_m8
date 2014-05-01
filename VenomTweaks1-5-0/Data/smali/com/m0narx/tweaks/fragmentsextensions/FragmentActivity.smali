.class public Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v10, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "fragment"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, fragmenttostart:Ljava/lang/String;
    const-string v7, "m0narX_Tweaks"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Try to start: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, qh:Ljava/lang/String;
    const/4 v5, 0x1

    .line 43
    .local v5, rootId:I
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, viewRoot:Landroid/widget/FrameLayout;
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 48
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 49
    .local v2, ft:Landroid/app/FragmentTransaction;
    const/4 v3, 0x0

    .line 50
    .local v3, pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarClock_settings;-><init>()V

    .line 98
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 99
    const-string v7, "m0narX_Tweaks"

    const-string v8, "Not defined fragment to run!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;->finish()V

    .line 102
    :cond_1
    invoke-virtual {v2, v10, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 103
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 104
    return-void

    .line 52
    :cond_2
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 53
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarBattery_settings;-><init>()V

    .line 54
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_3
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStausbarTheme_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 55
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStausbarTheme_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStausbarTheme_settings;-><init>()V

    .line 56
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_4
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 57
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarHeader_settings;-><init>()V

    .line 58
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_5
    const-class v7, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 59
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;-><init>()V

    .line 60
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_6
    const-class v7, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 61
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;-><init>()V

    .line 62
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_7
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscMinfree_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 63
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabMiscMinfree_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabMiscMinfree_settings;-><init>()V

    .line 64
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto :goto_0

    :cond_8
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscAutobrightness_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 65
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabMiscAutobrightness_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabMiscAutobrightness_settings;-><init>()V

    .line 66
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 67
    :cond_9
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscVolume_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 68
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabMiscVolume_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabMiscVolume_settings;-><init>()V

    .line 69
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 70
    :cond_a
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStatusbarTraffic_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 71
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStatusbarTraffic_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarTraffic_settings;-><init>()V

    .line 72
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 73
    :cond_b
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 74
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;-><init>()V

    .line 75
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 76
    :cond_c
    const-class v7, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 77
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabPieColors_settings;-><init>()V

    .line 78
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 79
    :cond_d
    const-class v7, Lcom/m0narx/tweaks/fragments/TabPieInfoColors_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 80
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabPieInfoColors_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabPieInfoColors_settings;-><init>()V

    .line 81
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 82
    :cond_e
    const-class v7, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 83
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;-><init>()V

    .line 84
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 85
    :cond_f
    const-class v7, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 86
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;-><init>()V

    .line 87
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 88
    :cond_10
    const-class v7, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 89
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabStatusbarContacts_settings;-><init>()V

    .line 90
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 91
    :cond_11
    const-class v7, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 92
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;-><init>()V

    .line 93
    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0

    .line 94
    :cond_12
    const-class v7, Lcom/m0narx/tweaks/fragments/TabMiscNotification_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabMiscNotification_settings;

    .end local v3           #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    invoke-direct {v3}, Lcom/m0narx/tweaks/fragments/TabMiscNotification_settings;-><init>()V

    .restart local v3       #pref:Lcom/m0narx/tweaks/custompreferences/Prefs;
    goto/16 :goto_0
.end method
