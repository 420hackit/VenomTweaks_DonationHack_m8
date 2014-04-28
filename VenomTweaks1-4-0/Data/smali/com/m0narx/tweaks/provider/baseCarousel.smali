.class public abstract Lcom/m0narx/tweaks/provider/baseCarousel;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "baseCarousel.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;
.implements Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;


# instance fields
.field private mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "Authority"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mTabs:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->requestCarouselFeature(I)Z

    .line 47
    return-void
.end method


# virtual methods
.method protected addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "tag"
    .parameter "title"
    .parameter "classQualifiedName"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->remove:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 58
    const/16 v2, 0x69

    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 59
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    iput-object p2, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->extra:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/fragment/widget/CarouselTabSpec;

    .line 63
    invoke-direct {v2, p2, p3, p4}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 70
    .end local v0           #item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/htc/fragment/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enterCarouselEditMode()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->enterEditMode()V

    .line 135
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f0a0014

    .line 74
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    new-instance v7, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {v7}, Lcom/m0narx/tweaks/widgets/Customization;-><init>()V

    .line 76
    .local v7, cust:Lcom/m0narx/tweaks/widgets/Customization;
    invoke-virtual {v7}, Lcom/m0narx/tweaks/widgets/Customization;->loadCustomization()Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/provider/baseCarousel;->setHasOptionsMenu(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v8

    .line 82
    .local v8, host:Lcom/htc/fragment/widget/CarouselHost;
    const-string v1, "About"

    const-class v2, Lcom/m0narx/tweaks/fragments/TabAbout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v12, v2}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    const-string v1, "Statusbar"

    const v2, 0x7f0a0015

    .line 84
    const-class v3, Lcom/m0narx/tweaks/fragments/TabStatusbar;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    const-string v1, "Prism"

    const v2, 0x7f0a0016

    const-class v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    const-string v1, "Colors"

    const v2, 0x7f0a01e4

    .line 87
    const-class v3, Lcom/m0narx/tweaks/fragments/TabColors;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    const-string v1, "Lockscreen"

    const v2, 0x7f0a0017

    .line 89
    const-class v3, Lcom/m0narx/tweaks/fragments/TabLockscreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    const-string v1, "Buttons"

    const v2, 0x7f0a0019

    const-class v3, Lcom/m0narx/tweaks/fragments/TabButtons;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    const-string v1, "Pie"

    const v2, 0x7f0a0232

    const-class v3, Lcom/m0narx/tweaks/fragments/TabPie;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    const-string v1, "Misc"

    const v2, 0x7f0a0018

    const-class v3, Lcom/m0narx/tweaks/fragments/TabMisc;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    const-string v1, "Xposed"

    const v2, 0x7f0a0345

    const-class v3, Lcom/m0narx/tweaks/fragments/TabXposed;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    const-string v1, "Advanced"

    const v2, 0x7f0a001b

    const-class v3, Lcom/m0narx/tweaks/fragments/TabAdvanced;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    const-string v1, "CPU"

    const v2, 0x7f0a0190

    const-class v3, Lcom/m0narx/tweaks/fragments/TabCpu;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    const-string v1, "Kernel"

    const v2, 0x7f0a020a

    const-class v3, Lcom/m0narx/tweaks/fragments/TabKernel;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v1, v2, v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->addTab(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->sreensParams:Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->add:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    iget-object v2, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mTabs:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/m0narx/tweaks/provider/CarouselCallback;->onCarouselLoaded(Ljava/util/ArrayList;)V

    .line 121
    :cond_0
    invoke-virtual {p0, p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->setEditModeListener(Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;)V

    .line 122
    invoke-virtual {p0, p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 123
    return-void

    .line 99
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;

    .line 101
    .local v10, tab:Lcom/m0narx/tweaks/widgets/Customization$NewTab;
    new-instance v9, Lcom/htc/fragment/widget/CarouselTabSpec;

    iget-object v1, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    .line 102
    const-class v2, Lcom/m0narx/tweaks/fragments/Tab_CustomFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-direct {v9, v1, v12, v2}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .local v9, newTab:Lcom/htc/fragment/widget/CarouselTabSpec;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v6, args:Landroid/os/Bundle;
    const-string v1, "name"

    iget-object v2, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "title"

    iget-object v2, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9, v6}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    .line 108
    invoke-virtual {p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 109
    iget-object v1, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    iget-object v2, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 112
    const/16 v2, 0x69

    iget-object v3, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Title:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    iget-object v1, v10, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->extra:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    invoke-interface {v0}, Lcom/m0narx/tweaks/provider/CarouselCallback;->onExitEditMode()V

    .line 147
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    invoke-interface {v0, p1}, Lcom/m0narx/tweaks/provider/CarouselCallback;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/m0narx/tweaks/provider/CarouselCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/m0narx/tweaks/provider/baseCarousel;->mCallback:Lcom/m0narx/tweaks/provider/CarouselCallback;

    .line 51
    return-void
.end method
