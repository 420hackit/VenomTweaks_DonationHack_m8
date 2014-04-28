.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;
.super Ljava/lang/Thread;
.source "ContactsAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->startProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 488
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 491
    const/4 v0, 0x0

    .line 494
    .local v0, contact:[Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;-><init>(Landroid/content/Context;)V

    .line 495
    .local v1, helper:Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactData:Landroid/net/Uri;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget v4, v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ACTION:I

    invoke-virtual {v1, v3, v4}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->getContact(Landroid/net/Uri;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 499
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 500
    .local v2, message:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 502
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 503
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void

    .line 497
    .end local v1           #helper:Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;
    .end local v2           #message:Landroid/os/Message;
    :catchall_0
    move-exception v3

    .line 499
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 500
    .restart local v2       #message:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 502
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 503
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    throw v3
.end method
