.class Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;
.super Ljava/lang/Object;
.source "PulldownGesturesAdd.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;-><init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)V

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 114
    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 125
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    invoke-virtual {p1}, Landroid/gesture/GestureOverlayView;->getGesture()Landroid/gesture/Gesture;

    move-result-object v1

    #setter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$1(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Landroid/gesture/Gesture;)V

    .line 118
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    #getter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$2(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/gesture/Gesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getLength()F

    move-result v0

    const/high16 v1, 0x42f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    #getter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$0(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    #getter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$0(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$GesturesProcessor;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    const/4 v1, 0x0

    #setter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$1(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Landroid/gesture/Gesture;)V

    .line 111
    return-void
.end method
