.class public Lcom/m0narx/tweaks/fragments/quiethours_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "quiethours_settings.java"


# instance fields
.field final END:I

.field final START:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->START:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->END:I

    .line 22
    return-void
.end method

.method private SetQuietHoursSummary(Ljava/lang/String;I)V
    .locals 7
    .parameter "value"
    .parameter "type"

    .prologue
    const v4, 0x7f0a0227

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 37
    if-ne p2, v5, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 39
    const v3, 0x7f0a0224

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, sum1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, sum2:Ljava/lang/String;
    const-string v2, "quiet_hours_start"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    return-void

    .line 46
    .end local v0           #sum1:Ljava/lang/String;
    .end local v1           #sum2:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    const v3, 0x7f0a0226

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .restart local v0       #sum1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .restart local v1       #sum2:Ljava/lang/String;
    const-string v2, "quiet_hours_end"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/quiethours_settings;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->SetQuietHoursSummary(Ljava/lang/String;I)V

    return-void
.end method

.method private initQuietHoursSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    .line 257
    const-string v3, "tweaks_quiet_hours_start"

    .line 256
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, start:I
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->returnTime(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->SetQuietHoursSummary(Ljava/lang/String;I)V

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    .line 263
    const-string v3, "tweaks_quiet_hours_end"

    .line 262
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, end:I
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->returnTime(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->SetQuietHoursSummary(Ljava/lang/String;I)V

    .line 268
    :cond_1
    return-void
.end method

.method private setQuietHours()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_quiet_hours_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "quiet_hours_start"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 274
    const-string v0, "quiet_hours_end"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 275
    const-string v0, "quiet_hours_mute"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 276
    const-string v0, "quiet_hours_haptic"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 277
    const-string v0, "quiet_hours_still"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 278
    const-string v0, "quiet_hours_system"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 279
    const-string v0, "quiet_hours_white_list"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 280
    const-string v0, "quiet_hours_white_list_calls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 281
    const-string v0, "quiet_hours_dim"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 282
    const-string v0, "quiet_hours_ring"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 298
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "quiet_hours_start"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 286
    const-string v0, "quiet_hours_end"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 287
    const-string v0, "quiet_hours_mute"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 288
    const-string v0, "quiet_hours_haptic"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 289
    const-string v0, "quiet_hours_still"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 290
    const-string v0, "quiet_hours_system"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 291
    const-string v0, "quiet_hours_white_list"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 292
    const-string v0, "quiet_hours_white_list_calls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 293
    const-string v0, "quiet_hours_dim"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 294
    const-string v0, "quiet_hours_ring"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 302
    const v0, 0x7f040017

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "quiethours"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "quiet_hours_start"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "quiet_hours_end"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 236
    const-string v2, "quiet_hours_white_list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quiet_hours_white_list_calls"

    aput-object v2, v0, v1

    .line 235
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnClickListener([Ljava/lang/String;)V

    .line 238
    const-string v0, "quiet_hours_enabled"

    const-string v1, "tweaks_quiet_hours_enabled"

    .line 239
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 238
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v0, "quiet_hours_mute"

    const-string v1, "tweaks_quiet_hours_mute"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string v0, "quiet_hours_haptic"

    const-string v1, "tweaks_quiet_hours_haptic"

    .line 242
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 241
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 243
    const-string v0, "quiet_hours_still"

    const-string v1, "tweaks_quiet_hours_still"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 244
    const-string v0, "quiet_hours_system"

    const-string v1, "tweaks_quiet_hours_system"

    .line 245
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 244
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 246
    const-string v0, "quiet_hours_dim"

    const-string v1, "tweaks_quiet_hours_dim"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 247
    const-string v0, "quiet_hours_ring"

    const-string v1, "tweaks_quiet_hours_ring"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->setQuietHours()V

    .line 251
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->initQuietHoursSummary()V

    .line 253
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    :cond_0
    const-string v2, "quiet_hours_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->setQuietHours()V

    .line 82
    :cond_1
    :goto_0
    return v5

    .line 68
    :cond_2
    const-string v2, "quiet_hours_mute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_mute"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "quiet_hours_haptic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_haptic"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 72
    :cond_4
    const-string v2, "quiet_hours_still"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_still"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 74
    :cond_5
    const-string v2, "quiet_hours_system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_system"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 76
    :cond_6
    const-string v2, "quiet_hours_dim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_dim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 78
    :cond_7
    const-string v2, "quiet_hours_ring"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiet_hours_ring"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 19
    .parameter "preference"

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, PKey:Ljava/lang/String;
    const-string v3, "quiet_hours_white_list"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    const-string v3, "quiet_hours_white_list_calls"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->startActivity(Landroid/content/Intent;)V

    .line 229
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 95
    :cond_2
    const-string v3, "quiet_hours_start"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_quiet_hours_start"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 97
    .local v17, start:I
    const/4 v5, 0x0

    .line 98
    .local v5, hour:I
    const/4 v6, 0x0

    .line 100
    .local v6, min:I
    const/4 v9, 0x0

    .line 102
    .local v9, am:Z
    if-eqz v17, :cond_4

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->returnTime(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 105
    .local v18, values:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, minString:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 110
    const-string v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, content:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 114
    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "am"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    const/4 v9, 0x1

    .line 118
    .end local v10           #content:[Ljava/lang/String;
    :cond_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 121
    .end local v15           #minString:Ljava/lang/String;
    .end local v18           #values:[Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/htc/widget/HtcTimePickerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->mContext:Landroid/content/Context;

    .line 122
    new-instance v4, Lcom/m0narx/tweaks/fragments/quiethours_settings$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings$1;-><init>(Lcom/m0narx/tweaks/fragments/quiethours_settings;)V

    .line 137
    const/4 v7, 0x0

    .line 121
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 139
    .local v2, picker:Lcom/htc/widget/HtcTimePickerDialog;
    const/4 v13, 0x0

    .line 142
    .local v13, f:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mTimePicker"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 146
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    :try_start_1
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcTimePicker;

    .line 150
    .local v14, iWantThis:Lcom/htc/widget/HtcTimePicker;
    if-eqz v9, :cond_5

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 161
    .end local v14           #iWantThis:Lcom/htc/widget/HtcTimePicker;
    :goto_2
    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v11

    .line 144
    .local v11, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v11}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v11           #e:Ljava/lang/NoSuchFieldException;
    .restart local v14       #iWantThis:Lcom/htc/widget/HtcTimePicker;
    :cond_5
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 155
    .end local v14           #iWantThis:Lcom/htc/widget/HtcTimePicker;
    :catch_1
    move-exception v11

    .line 156
    .local v11, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v11

    .line 158
    .local v11, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 162
    .end local v2           #picker:Lcom/htc/widget/HtcTimePickerDialog;
    .end local v5           #hour:I
    .end local v6           #min:I
    .end local v9           #am:Z
    .end local v11           #e:Ljava/lang/IllegalAccessException;
    .end local v13           #f:Ljava/lang/reflect/Field;
    .end local v17           #start:I
    :cond_6
    const-string v3, "quiet_hours_end"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_quiet_hours_end"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 164
    .local v12, end:I
    const/4 v5, 0x0

    .line 165
    .restart local v5       #hour:I
    const/4 v6, 0x0

    .line 167
    .restart local v6       #min:I
    const/4 v9, 0x0

    .line 169
    .restart local v9       #am:Z
    if-eqz v12, :cond_8

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->returnTime(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 171
    .restart local v18       #values:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 173
    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 175
    .restart local v15       #minString:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_7

    .line 176
    const-string v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 178
    .restart local v10       #content:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 180
    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "am"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    const/4 v9, 0x1

    .line 184
    .end local v10           #content:[Ljava/lang/String;
    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 188
    .end local v15           #minString:Ljava/lang/String;
    .end local v18           #values:[Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/htc/widget/HtcTimePickerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/m0narx/tweaks/fragments/quiethours_settings;->mContext:Landroid/content/Context;

    .line 189
    new-instance v4, Lcom/m0narx/tweaks/fragments/quiethours_settings$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings$2;-><init>(Lcom/m0narx/tweaks/fragments/quiethours_settings;)V

    .line 203
    const/4 v7, 0x0

    .line 188
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 205
    .restart local v2       #picker:Lcom/htc/widget/HtcTimePickerDialog;
    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 207
    const/4 v13, 0x0

    .line 210
    .restart local v13       #f:Ljava/lang/reflect/Field;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mTimePicker"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v13

    .line 214
    :goto_3
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    :try_start_4
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcTimePicker;

    .line 218
    .local v16, rPicker:Lcom/htc/widget/HtcTimePicker;
    if-eqz v9, :cond_9

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 223
    .end local v16           #rPicker:Lcom/htc/widget/HtcTimePicker;
    :catch_3
    move-exception v11

    .line 224
    .local v11, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 211
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v11

    .line 212
    .local v11, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v11}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 221
    .end local v11           #e:Ljava/lang/NoSuchFieldException;
    .restart local v16       #rPicker:Lcom/htc/widget/HtcTimePicker;
    :cond_9
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 225
    .end local v16           #rPicker:Lcom/htc/widget/HtcTimePicker;
    :catch_5
    move-exception v11

    .line 226
    .local v11, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 319
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->setQuietHours()V

    .line 325
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->initQuietHoursSummary()V

    .line 326
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/quiethours_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 313
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
