.class Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

.field private final synthetic val$open:Z

.field private final synthetic val$secondary:Z


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    iput-boolean p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->val$open:Z

    iput-boolean p3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->val$secondary:Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->val$open:Z

    if-eqz v0, :cond_1

    .line 75
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->val$secondary:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showSecondaryMenu(Z)V

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showMenu(Z)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent(Z)V

    goto :goto_0
.end method
