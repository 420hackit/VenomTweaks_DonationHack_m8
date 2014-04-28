.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;
.super Landroid/os/Handler;
.source "QuietHoursWhitelistCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->notifyDataSetChanged()V

    .line 262
    return-void

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 248
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
