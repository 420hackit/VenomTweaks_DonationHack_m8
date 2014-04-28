.class Lcom/m0narx/tweaks/Donation$2;
.super Landroid/os/Handler;
.source "Donation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Donation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Donation;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Donation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    .line 332
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

    .line 334
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 337
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 348
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v2, v2, Lcom/m0narx/tweaks/Donation;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v1, v1, Lcom/m0narx/tweaks/Donation;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$2;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
