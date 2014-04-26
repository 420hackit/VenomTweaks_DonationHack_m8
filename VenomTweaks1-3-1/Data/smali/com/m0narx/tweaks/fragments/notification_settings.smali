.class public Lcom/m0narx/tweaks/fragments/notification_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "notification_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private setRepeatValues()V
    .locals 8

    .prologue
    const/16 v7, 0xbb8

    const-wide v5, 0x408f400000000000L

    .line 175
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_notify_button_repeat_time"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 177
    .local v2, val:I
    const-string v3, "notify_buttons_repeat_time"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/notification_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 180
    .local v1, pref:Lcom/htc/preference/HtcEditTextPreference;
    int-to-double v3, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 181
    .local v0, dVal:Ljava/lang/Double;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_notify_flash_repeat_time"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 185
    const-string v3, "notify_flash_repeat_time"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/notification_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #pref:Lcom/htc/preference/HtcEditTextPreference;
    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 187
    .restart local v1       #pref:Lcom/htc/preference/HtcEditTextPreference;
    int-to-double v3, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 203
    const v0, 0x7f04000f

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "notification_settings"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notify_screenon"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 152
    const-string v2, "notify_flash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notify_buttons"

    aput-object v2, v0, v1

    .line 151
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnClickListener([Ljava/lang/String;)V

    .line 155
    const-string v0, "notify_buttons_repeat_time"

    const-string v1, "tweaks_notify_button_repeat_time"

    const-string v2, "3000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "notify_flash_repeat_time"

    const-string v1, "tweaks_notify_flash_repeat_time"

    const-string v2, "3000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "flash_speed"

    const-string v1, "tweaks_notify_buttons_blink_timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "flashlight_flash_speed"

    const-string v1, "tweaks_notify_flash_blink_timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "notify_buttons_timeout"

    const-string v1, "tweaks_notify_buttons_timeout"

    const-string v2, "20"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "notify_flash_timeout"

    const-string v1, "tweaks_notify_flash_timeout"

    const-string v2, "20"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "notify_interception"

    const-string v1, "tweaks_notify_use_flip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v0, "notify_face_down"

    const-string v1, "tweaks_notify_face_down"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/notification_settings;->setRepeatValues()V

    .line 170
    return-void
.end method

.method public isDouble(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 193
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const-wide v8, 0x408f400000000000L

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 38
    :cond_0
    const-string v6, "notify_buttons_repeat_time"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isDouble(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    :cond_1
    :goto_0
    return v4

    .line 43
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 45
    .local v3, val:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 47
    .local v2, parsed:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_button_repeat_time"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/notification_settings;->setRepeatValues()V

    .line 117
    .end local v2           #parsed:I
    .end local v3           #val:Ljava/lang/Double;
    :cond_3
    :goto_1
    const-string v6, ""

    const-string v7, ""

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v6, v7, v4}, Lcom/m0narx/tweaks/fragments/notification_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    move v4, v5

    .line 118
    goto :goto_0

    .line 52
    :cond_4
    const-string v6, "notify_flash_repeat_time"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isDouble(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 59
    .restart local v3       #val:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 61
    .restart local v2       #parsed:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_flash_repeat_time"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/notification_settings;->setRepeatValues()V

    goto :goto_1

    .line 66
    .end local v2           #parsed:I
    .end local v3           #val:Ljava/lang/Double;
    :cond_5
    const-string v6, "notify_buttons_count"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_buttons_count"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 73
    :cond_6
    const-string v6, "notify_flash_count"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_flash_count"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 80
    :cond_7
    const-string v6, "flash_speed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 81
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_buttons_blink_timeout"

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 81
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 84
    :cond_8
    const-string v6, "flashlight_flash_speed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 85
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_flash_blink_timeout"

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 85
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 88
    :cond_9
    const-string v6, "notify_buttons_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_buttons_timeout"

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 94
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 97
    :cond_a
    const-string v6, "notify_flash_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/notification_settings;->isInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_flash_timeout"

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 102
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 105
    :cond_b
    const-string v6, "notify_interception"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 106
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_use_flip"

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 106
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1

    .line 111
    :cond_c
    const-string v6, "notify_face_down"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_notify_face_down"

    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 112
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, PKey:Ljava/lang/String;
    const-string v2, "notify_buttons"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v1, config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_notify_buttons_pkg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "title"

    const v3, 0x7f0a02c2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/notification_settings;->startActivity(Landroid/content/Intent;)V

    .line 144
    .end local v1           #config:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 130
    :cond_1
    const-string v2, "notify_flash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v1       #config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_notify_flash_pkg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "title"

    const v3, 0x7f0a02c4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/notification_settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    .end local v1           #config:Landroid/content/Intent;
    :cond_2
    const-string v2, "notify_screenon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/notification_settings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v1       #config:Landroid/content/Intent;
    const-string v2, "tweak"

    const-string v3, "tweaks_notif_screenon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "title"

    const v3, 0x7f0a0323

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/notification_settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 220
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/notification_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/notification_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 214
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/notification_settings;->updateHeader()V

    .line 31
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/notification_settings;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 26
    :cond_0
    return-void
.end method
