.class Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 104
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const v2, 0x7f0a02fd

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 107
    const v2, 0x7f050059

    const/4 v3, -0x1

    .line 108
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)V

    .line 106
    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 103
    #setter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;Lcom/htc/widget/HtcAlertDialog;)V

    .line 145
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 146
    return-void
.end method
