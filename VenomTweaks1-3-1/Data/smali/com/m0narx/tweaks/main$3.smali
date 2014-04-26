.class Lcom/m0narx/tweaks/main$3;
.super Landroid/os/Handler;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    .line 581
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0a01a8

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 583
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 586
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v2, v2, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 588
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v1, v1, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 591
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 592
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 593
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/m0narx/tweaks/main$3;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
