.class public Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;
.super Landroid/app/Activity;
.source "PulldownGesturesAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;
    }
.end annotation


# static fields
.field private static final LENGTH_THRESHOLD:F = 120.0f


# instance fields
.field private action:I

.field private activity:Ljava/lang/String;

.field private mDoneButton:Landroid/view/View;

.field private mGesture:Landroid/gesture/Gesture;

.field private pckg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->pckg:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->activity:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mDoneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Landroid/gesture/Gesture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/gesture/Gesture;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    return-object v0
.end method


# virtual methods
.method public addGesture(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 73
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    if-eqz v3, :cond_2

    .line 74
    const v3, 0x7f05002e

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, input:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    .local v1, name:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const v3, 0x7f0a02fc

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0           #input:Landroid/widget/TextView;
    .end local v1           #name:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 81
    .restart local v0       #input:Landroid/widget/TextView;
    .restart local v1       #name:Ljava/lang/CharSequence;
    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getStore()Landroid/gesture/GestureLibrary;

    move-result-object v2

    .line 83
    .local v2, store:Landroid/gesture/GestureLibrary;
    iget v3, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->action:I

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->pckg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->activity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2, v3, v4}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 88
    :goto_1
    invoke-virtual {v2}, Landroid/gesture/GestureLibrary;->save()Z

    .line 90
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->setResult(I)V

    .line 97
    .end local v0           #input:Landroid/widget/TextView;
    .end local v1           #name:Ljava/lang/CharSequence;
    .end local v2           #store:Landroid/gesture/GestureLibrary;
    :goto_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->finish()V

    goto :goto_0

    .line 86
    .restart local v0       #input:Landroid/widget/TextView;
    .restart local v1       #name:Ljava/lang/CharSequence;
    .restart local v2       #store:Landroid/gesture/GestureLibrary;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2, v3, v4}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    goto :goto_1

    .line 94
    .end local v0           #input:Landroid/widget/TextView;
    .end local v1           #name:Ljava/lang/CharSequence;
    .end local v2           #store:Landroid/gesture/GestureLibrary;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->setResult(I)V

    goto :goto_2
.end method

.method public cancelGesture(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->finish()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->setContentView(I)V

    .line 31
    const v1, 0x7f050030

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mDoneButton:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->action:I

    .line 35
    iget v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->action:I

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->pckg:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->activity:Ljava/lang/String;

    .line 40
    :cond_0
    const v1, 0x7f05002f

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 41
    .local v0, overlay:Landroid/gesture/GestureOverlayView;
    new-instance v1, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;-><init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;)V

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 42
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 57
    const-string v1, "gesture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    .line 58
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_0

    .line 60
    const v1, 0x7f05002f

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 61
    .local v0, overlay:Landroid/gesture/GestureOverlayView;
    new-instance v1, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;

    invoke-direct {v1, p0, v0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;-><init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Landroid/gesture/GestureOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mDoneButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    .end local v0           #overlay:Landroid/gesture/GestureOverlayView;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    :cond_0
    return-void
.end method
