.class public Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabLockscreenShortcut_settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private getActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v3

    .line 37
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 41
    .local v2, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->getActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f04000c

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "lockscreen_shortcuts"

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    const-string v3, "custom_shortcuts"

    const-string v4, "tweaks_lockscreen_custom_shortcuts"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 117
    return-void

    .line 104
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shortcut_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 105
    .local v0, chk:Lcom/htc/preference/HtcSwitchPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shortcut_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string v3, "custom_shortcuts"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tweaks_lockscreen_shortcut_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, info:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 111
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "i"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 21
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 32
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, pkg:Ljava/lang/String;
    const-string v4, "activity"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, act:Ljava/lang/String;
    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 25
    .local v2, name:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shortcut_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 27
    .local v1, chk:Lcom/htc/preference/HtcSwitchPreference;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tweaks_lockscreen_shortcut_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->updateLockScreen(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    :cond_0
    const-string v6, "custom_shortcuts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_custom_shortcuts"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->updateLockScreen(Landroid/content/Context;)V

    :cond_1
    :goto_0
    move v4, v5

    .line 86
    :goto_1
    return v4

    .line 74
    :cond_2
    const-string v6, "shortcut_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    const-string v6, "shortcut_"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, i:I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3

    .line 77
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tweaks_lockscreen_shortcut_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->updateLockScreen(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_3
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->mContext:Landroid/content/Context;

    const-class v6, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v2}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 133
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabLockscreenShortcut_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 97
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
