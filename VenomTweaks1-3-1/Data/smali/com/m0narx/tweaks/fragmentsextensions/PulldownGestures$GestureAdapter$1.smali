.class Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;
.super Ljava/lang/Object;
.source "PulldownGestures.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->val$position:I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 332
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$0()Landroid/gesture/GestureLibrary;

    move-result-object v1

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/gesture/GestureLibrary;->removeEntry(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$0()Landroid/gesture/GestureLibrary;

    move-result-object v0

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->save()Z

    .line 335
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->removeItem(I)V

    .line 336
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->notifyDataSetChanged()V

    .line 337
    return-void
.end method
