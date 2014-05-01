.class Lcom/m0narx/tweaks/Bugreport$1;
.super Landroid/os/Handler;
.source "Bugreport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Bugreport;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/Bugreport$1;->this$0:Lcom/m0narx/tweaks/Bugreport;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport$1;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #getter for: Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/Bugreport;->access$0(Lcom/m0narx/tweaks/Bugreport;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport$1;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #getter for: Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/Bugreport;->access$0(Lcom/m0narx/tweaks/Bugreport;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport$1;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #getter for: Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/Bugreport;->access$0(Lcom/m0narx/tweaks/Bugreport;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport$1;->this$0:Lcom/m0narx/tweaks/Bugreport;

    #calls: Lcom/m0narx/tweaks/Bugreport;->updateToggleButton()V
    invoke-static {v0}, Lcom/m0narx/tweaks/Bugreport;->access$1(Lcom/m0narx/tweaks/Bugreport;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
