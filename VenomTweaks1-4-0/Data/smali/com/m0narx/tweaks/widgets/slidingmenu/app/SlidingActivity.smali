.class public Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;
.super Landroid/app/Activity;
.source "SlidingActivity.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 48
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->getSlidingMenu()Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    .line 22
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 154
    .local v0, b:Z
    if-eqz v0, :cond_0

    .line 155
    .end local v0           #b:Z
    :goto_0
    return v0

    .restart local v0       #b:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->setBehindContentView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 96
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->setContentView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 146
    return-void
.end method

.method public setSlidingMenuLayout(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->setBehindContentView(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->showContent()V

    .line 125
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->showMenu()V

    .line 132
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 139
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->mHelper:Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivityHelper;->toggle()V

    .line 118
    return-void
.end method
