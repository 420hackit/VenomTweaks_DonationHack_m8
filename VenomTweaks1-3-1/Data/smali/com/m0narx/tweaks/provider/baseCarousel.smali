.class public abstract Lcom/m0narx/tweaks/provider/baseCarousel;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "baseCarousel.java"


# instance fields
.field private mCallback:Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;

.field private sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "Authority"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->requestCarouselFeature(I)Z

    .line 37
    return-void
.end method


# virtual methods
.method protected addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "tag"
    .parameter "title"
    .parameter "classQualifiedName"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->remove:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/fragment/widget/CarouselTabSpec;

    invoke-direct {v1, p2, p3, p4}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/htc/fragment/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enterCarouselEditMode()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->enterEditMode()V

    .line 104
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0a0014

    .line 56
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    new-instance v1, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {v1}, Lcom/m0narx/tweaks/widgets/Customization;-><init>()V

    .line 58
    .local v1, cust:Lcom/m0narx/tweaks/widgets/Customization;
    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Customization;->loadCustomization()Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    .line 63
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/provider/baseCarousel;->setHasOptionsMenu(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v2

    .line 68
    .local v2, host:Lcom/htc/fragment/widget/CarouselHost;
    const-string v5, "About"

    const-class v6, Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v8, v6}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    const-string v5, "Statusbar"

    const v6, 0x7f0a0015

    const-class v7, Lcom/m0narx/tweaks/fragments/systemui;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    const-string v5, "Prism"

    const v6, 0x7f0a0016

    const-class v7, Lcom/m0narx/tweaks/fragments/prism;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    const-string v5, "Colors"

    const v6, 0x7f0a01e4

    const-class v7, Lcom/m0narx/tweaks/fragments/colors_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    const-string v5, "Lockscreen"

    const v6, 0x7f0a0017

    const-class v7, Lcom/m0narx/tweaks/fragments/lockscreen;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    const-string v5, "Buttons"

    const v6, 0x7f0a0019

    const-class v7, Lcom/m0narx/tweaks/fragments/buttons;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    const-string v5, "Pie"

    const v6, 0x7f0a0232

    const-class v7, Lcom/m0narx/tweaks/fragments/pie;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    const-string v5, "Misc"

    const v6, 0x7f0a0018

    const-class v7, Lcom/m0narx/tweaks/fragments/misc;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    const-string v5, "Xposed"

    const v6, 0x7f0a0345

    const-class v7, Lcom/m0narx/tweaks/fragments/xposed;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const-string v5, "Advanced"

    const v6, 0x7f0a001b

    const-class v7, Lcom/m0narx/tweaks/fragments/advanced;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const-string v5, "CPU"

    const v6, 0x7f0a0190

    const-class v7, Lcom/m0narx/tweaks/fragments/cpu_settings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    const-string v5, "Kernel"

    const v6, 0x7f0a020a

    const-class v7, Lcom/m0narx/tweaks/fragments/kernel;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    iget-object v5, v5, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->add:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    iget-object v5, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;

    invoke-interface {v5}, Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;->onLoadedDone()V

    .line 98
    :cond_0
    return-void

    .line 83
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;

    .line 85
    .local v4, tab:Lcom/m0narx/tweaks/widgets/Customization$NewTab;
    new-instance v3, Lcom/htc/fragment/widget/CarouselTabSpec;

    iget-object v6, v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    const-class v7, Lcom/m0narx/tweaks/fragments/customFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v8, v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    .local v3, newTab:Lcom/htc/fragment/widget/CarouselTabSpec;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, args:Landroid/os/Bundle;
    const-string v6, "name"

    iget-object v7, v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v6, "title"

    iget-object v7, v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    .line 91
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 92
    iget-object v6, v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    iget-object v7, v4, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/htc/fragment/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCarouselLoadedCallback(Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;

    .line 41
    return-void
.end method
