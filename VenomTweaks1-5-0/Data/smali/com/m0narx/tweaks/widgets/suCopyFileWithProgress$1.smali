.class Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;
.super Landroid/os/Handler;
.source "suCopyFileWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$4(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 89
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$4(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 92
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$1(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mPrefs:Lcom/htc/preference/HtcPreferenceFragment;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/preference/HtcPreferenceFragment;

    move-result-object v0

    invoke-static {}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;->this$0:Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    #getter for: Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->access$4(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
