.class Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;
.super Ljava/lang/Object;
.source "PulldownGesturesAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

.field private final synthetic val$overlay:Landroid/gesture/GestureOverlayView;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    iput-object p2, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;->val$overlay:Landroid/gesture/GestureOverlayView;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;->val$overlay:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd$1;->this$0:Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    #getter for: Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v1}, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;->access$2(Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;)Landroid/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setGesture(Landroid/gesture/Gesture;)V

    .line 64
    return-void
.end method
