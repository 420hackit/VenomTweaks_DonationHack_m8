.class Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;
.super Ljava/lang/Object;
.source "PulldownGestures.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 113
    new-instance v2, Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    .line 115
    const-class v4, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    .line 113
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 119
    .local v0, action:I
    packed-switch p2, :pswitch_data_0

    .line 138
    :goto_0
    const-string v3, "action"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    .line 140
    const/4 v4, 0x1

    .line 139
    invoke-virtual {v3, v2, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 143
    :goto_1
    return-void

    .line 123
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/m0narx/tweaks/picker/AppPicker;

    .line 123
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v1, appIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    .line 127
    const/4 v4, 0x2

    .line 126
    invoke-virtual {v3, v1, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;)Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    move-result-object v3

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_1

    .line 134
    .end local v1           #appIntent:Landroid/content/Intent;
    :pswitch_1
    move v0, p2

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
