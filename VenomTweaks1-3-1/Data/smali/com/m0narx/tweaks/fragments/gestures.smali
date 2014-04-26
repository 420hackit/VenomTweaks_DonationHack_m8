.class public Lcom/m0narx/tweaks/fragments/gestures;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "gestures.java"


# instance fields
.field private final GESTURE_DOWN:I

.field private final GESTURE_LEFT:I

.field private final GESTURE_RIGHT:I

.field private final GESTURE_UP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->GESTURE_UP:I

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->GESTURE_RIGHT:I

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->GESTURE_DOWN:I

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->GESTURE_LEFT:I

    .line 14
    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 23
    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 24
    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 25
    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f040009

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "gestures"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v0, "enable_gestures"

    const-string v1, "htc_gestures_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/gestures;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    const-string v0, "gesture_up"

    const-string v1, "tweaks_gesture_up"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/gestures;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "gesture_down"

    const-string v1, "tweaks_gesture_down"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/gestures;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "gesture_left"

    const-string v1, "tweaks_gesture_left"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/gestures;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "gesture_right"

    const-string v1, "tweaks_gesture_right"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/gestures;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/gestures;->CheckPreferences()V

    .line 134
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 28
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 29
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
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

    .line 70
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 72
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    :cond_0
    const-string v5, "gesture_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_up"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v3, v4

    .line 110
    :goto_1
    return v3

    .line 78
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/gestures;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v2, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 82
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_3
    const-string v5, "gesture_down"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 84
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_down"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 86
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/gestures;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 90
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_5
    const-string v5, "gesture_left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 92
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_left"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 94
    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/gestures;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 98
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_7
    const-string v5, "gesture_right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 100
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_gesture_right"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 102
    :cond_8
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/gestures;->mContext:Landroid/content/Context;

    const-class v5, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v2       #myIntent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/fragments/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 106
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_9
    const-string v3, "enable_gestures"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/gestures;->Cr:Landroid/content/ContentResolver;

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
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 149
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/gestures;->CheckPreferences()V

    .line 153
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 124
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/gestures;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 60
    return-void
.end method
