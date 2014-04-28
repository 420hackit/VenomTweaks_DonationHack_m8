.class public Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "Tab_CustomFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f040008

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 19
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->updateHeader()V

    .line 38
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0
.end method
