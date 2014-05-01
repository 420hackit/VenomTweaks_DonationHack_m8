.class Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;
.super Landroid/os/Handler;
.source "Navbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Navbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 215
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
