.class Lcom/m0narx/tweaks/Profiles$1;
.super Landroid/os/Handler;
.source "Profiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Profiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$1;->this$0:Lcom/m0narx/tweaks/Profiles;

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$1;->this$0:Lcom/m0narx/tweaks/Profiles;

    #getter for: Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/Profiles;->access$0(Lcom/m0narx/tweaks/Profiles;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$1;->this$0:Lcom/m0narx/tweaks/Profiles;

    #calls: Lcom/m0narx/tweaks/Profiles;->restartPhone()V
    invoke-static {v0}, Lcom/m0narx/tweaks/Profiles;->access$1(Lcom/m0narx/tweaks/Profiles;)V

    .line 219
    return-void
.end method
