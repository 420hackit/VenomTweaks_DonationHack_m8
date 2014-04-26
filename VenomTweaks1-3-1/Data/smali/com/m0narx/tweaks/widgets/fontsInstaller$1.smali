.class Lcom/m0narx/tweaks/widgets/fontsInstaller$1;
.super Landroid/os/Handler;
.source "fontsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/fontsInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/fontsInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;->this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;->this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;

    #getter for: Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$2(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 131
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;->this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;

    #getter for: Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$2(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 134
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;->this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;

    #getter for: Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$0(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_custom_font"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-static {}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$1()Lcom/htc/preference/HtcSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$1()Lcom/htc/preference/HtcSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;->this$0:Lcom/m0narx/tweaks/widgets/fontsInstaller;

    #getter for: Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->access$2(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
