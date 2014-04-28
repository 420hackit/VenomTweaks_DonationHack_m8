.class public Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabButtonsGestures_settings.java"


# instance fields
.field private final GESTURE_DOWN:I

.field private final GESTURE_LEFT:I

.field private final GESTURE_RIGHT:I

.field private final GESTURE_UP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->GESTURE_UP:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->GESTURE_RIGHT:I

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->GESTURE_DOWN:I

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->GESTURE_LEFT:I

    .line 15
    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 24
    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 25
    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 26
    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f040009

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "gestures"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    const-string v0, "enable_gestures"

    const-string v1, "htc_gestures_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    const-string v0, "gesture_up"

    const-string v1, "tweaks_gesture_up"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "gesture_down"

    const-string v1, "tweaks_gesture_down"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "gesture_left"

    const-string v1, "tweaks_gesture_left"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "gesture_right"

    const-string v1, "tweaks_gesture_right"

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 134
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->CheckPreferences()V

    .line 135
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 29
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 30
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 75
    :cond_0
    const-string v5, "gesture_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_up"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v3, v4

    .line 111
    :goto_1
    return v3

    .line 79
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v2, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 83
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_3
    const-string v5, "gesture_down"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 85
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_down"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 87
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 91
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_5
    const-string v5, "gesture_left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_left"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 95
    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 99
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_7
    const-string v5, "gesture_right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_right"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 103
    :cond_8
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 107
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_9
    const-string v3, "enable_gestures"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->Cr:Landroid/content/ContentResolver;

    const-string v5, "htc_gestures_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 150
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->CheckPreferences()V

    .line 154
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 125
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabButtonsGestures_settings;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 61
    return-void
.end method
