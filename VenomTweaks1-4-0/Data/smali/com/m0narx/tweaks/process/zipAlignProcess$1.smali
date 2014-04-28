.class Lcom/m0narx/tweaks/process/zipAlignProcess$1;
.super Landroid/os/Handler;
.source "zipAlignProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/process/zipAlignProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/process/zipAlignProcess;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, Bndl:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const-string v1, ""

    .line 129
    .local v1, str:Ljava/lang/String;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 135
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 138
    :sswitch_2
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->Res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$1(Lcom/m0narx/tweaks/process/zipAlignProcess;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 143
    :sswitch_3
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->Res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$1(Lcom/m0narx/tweaks/process/zipAlignProcess;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 145
    iget-object v2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;->this$0:Lcom/m0narx/tweaks/process/zipAlignProcess;

    #getter for: Lcom/m0narx/tweaks/process/zipAlignProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v2}, Lcom/m0narx/tweaks/process/zipAlignProcess;->access$2(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "total"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method
