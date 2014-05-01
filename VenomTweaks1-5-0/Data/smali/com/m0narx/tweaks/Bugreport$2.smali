.class Lcom/m0narx/tweaks/Bugreport$2;
.super Ljava/lang/Object;
.source "Bugreport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Bugreport;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Bugreport;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Bugreport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Bugreport$2;)Lcom/m0narx/tweaks/Bugreport;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 89
    invoke-static {}, Lcom/m0narx/tweaks/BugreportService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #calls: Lcom/m0narx/tweaks/Bugreport;->stopService()V
    invoke-static {v1}, Lcom/m0narx/tweaks/Bugreport;->access$2(Lcom/m0narx/tweaks/Bugreport;)V

    .line 133
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    iget-object v1, v1, Lcom/m0narx/tweaks/Bugreport;->spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 95
    .local v0, filter:I
    iget-object v1, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    iget-object v1, v1, Lcom/m0narx/tweaks/Bugreport;->record:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #getter for: Lcom/m0narx/tweaks/Bugreport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/m0narx/tweaks/Bugreport;->access$3(Lcom/m0narx/tweaks/Bugreport;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 100
    const v2, 0x7f0a0431

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 101
    const v2, 0x7f0a001d

    new-instance v3, Lcom/m0narx/tweaks/Bugreport$2$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/Bugreport$2$1;-><init>(Lcom/m0narx/tweaks/Bugreport$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 109
    const v2, 0x7f050086

    .line 110
    new-instance v3, Lcom/m0narx/tweaks/Bugreport$2$2;

    invoke-direct {v3, p0, v0}, Lcom/m0narx/tweaks/Bugreport$2$2;-><init>(Lcom/m0narx/tweaks/Bugreport$2;I)V

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;

    const/4 v2, 0x0

    #calls: Lcom/m0narx/tweaks/Bugreport;->startRecording(II)V
    invoke-static {v1, v0, v2}, Lcom/m0narx/tweaks/Bugreport;->access$4(Lcom/m0narx/tweaks/Bugreport;II)V

    goto :goto_0
.end method
