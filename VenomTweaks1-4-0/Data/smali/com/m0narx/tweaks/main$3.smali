.class Lcom/m0narx/tweaks/main$3;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setSlidingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, tab:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 262
    :goto_0
    if-nez v1, :cond_0

    .line 263
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iput-boolean v5, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    .line 264
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v4, v4, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->refreshMenu()V

    .line 290
    :goto_1
    return-void

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->getItemByExtra(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 269
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    if-eqz v0, :cond_2

    .line 271
    :try_start_1
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 273
    .local v2, tabFragment:Landroid/app/Fragment;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v4

    .line 274
    instance-of v3, v4, Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 277
    .local v3, vis:Z
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iget-object v5, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    .line 278
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iput-boolean v3, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    .line 279
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mBugReportItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$3(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iput-boolean v3, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    .line 280
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mProfilesItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$4(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iput-boolean v3, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .end local v2           #tabFragment:Landroid/app/Fragment;
    .end local v3           #vis:Z
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iget-object v5, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    .line 289
    :goto_3
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v4, v4, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->refreshMenu()V

    goto :goto_1

    .line 287
    :cond_2
    iget-object v4, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v4

    iput-boolean v5, v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    goto :goto_3

    .line 282
    :catch_0
    move-exception v4

    goto :goto_2

    .line 259
    .end local v0           #item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method
