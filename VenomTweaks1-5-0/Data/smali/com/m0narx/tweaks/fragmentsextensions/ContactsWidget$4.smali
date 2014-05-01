.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;
.super Ljava/lang/Thread;
.source "ContactsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->startProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    :try_start_0
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, helper:Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->contactData:Landroid/net/Uri;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->ACTION:I

    invoke-virtual {v0, v2, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->getContact(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->CONTACT:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 118
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setResultAndFinish(Z)V

    .line 120
    return-void

    .line 116
    .end local v0           #helper:Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;
    :catchall_0
    move-exception v1

    .line 117
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 118
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setResultAndFinish(Z)V

    .line 119
    throw v1
.end method
