.class public Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcasting:Z

.field private mEnableSlide:Z

.field private mOnPostCreateCalled:Z

.field private mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

.field private mViewAbove:Landroid/view/View;

.field private mViewBehind:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 26
    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 36
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 113
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 46
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 211
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->showContent()V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 54
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 61
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    iget-boolean v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mEnableSlide:Z

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v3, v4, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 65
    if-eqz p1, :cond_3

    .line 66
    const-string v2, "SlidingActivityHelper.open"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, open:Z
    const-string v2, "SlidingActivityHelper.secondary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .local v1, secondary:Z
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper$1;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 69
    .end local v0           #open:Z
    .end local v1           #secondary:Z
    :cond_3
    const/4 v0, 0x0

    .line 70
    .restart local v0       #open:Z
    const/4 v1, 0x0

    .restart local v1       #secondary:Z
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 124
    const-string v0, "SlidingActivityHelper.open"

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string v0, "SlidingActivityHelper.secondary"

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->isSecondaryMenuShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    return-void
.end method

.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    .line 137
    :cond_0
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 150
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 2
    .parameter "slidingActionBarEnabled"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enableSlidingActionBar must be called in onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 98
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent()V

    .line 186
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showMenu()V

    .line 193
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showSecondaryMenu()V

    .line 201
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->toggle()V

    .line 179
    return-void
.end method
