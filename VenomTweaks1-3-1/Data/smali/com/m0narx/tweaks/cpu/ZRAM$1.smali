.class Lcom/m0narx/tweaks/cpu/ZRAM$1;
.super Landroid/os/Handler;
.source "ZRAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/cpu/ZRAM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/cpu/ZRAM;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/cpu/ZRAM;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/cpu/ZRAM$1;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 127
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/ZRAM$1;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    iget-object v1, v1, Lcom/m0narx/tweaks/cpu/ZRAM;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0080

    const-string v3, "cmd"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
