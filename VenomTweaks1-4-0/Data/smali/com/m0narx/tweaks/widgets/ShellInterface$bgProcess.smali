.class Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;
.super Ljava/lang/Thread;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/ShellInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "bgProcess"
.end annotation


# instance fields
.field private Command:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private useSU:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/app/HtcProgressDialog;Z)V
    .locals 1
    .parameter "mCommand"
    .parameter "mDialog"
    .parameter "runAsSU"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 129
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess$1;-><init>(Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->handler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->Command:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 114
    iput-boolean p3, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->useSU:Z

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 120
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->useSU:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->Command:Ljava/lang/String;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 127
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->Command:Ljava/lang/String;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->run(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
