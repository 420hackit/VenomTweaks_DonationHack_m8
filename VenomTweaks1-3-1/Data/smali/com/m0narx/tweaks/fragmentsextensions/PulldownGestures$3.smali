.class Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;
.super Ljava/lang/Object;
.source "PulldownGestures.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->saveGestureFile(Landroid/content/Context;)V

    .line 180
    const-string v0, "pkill com.android.systemui;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->finish()V

    .line 182
    return-void
.end method
