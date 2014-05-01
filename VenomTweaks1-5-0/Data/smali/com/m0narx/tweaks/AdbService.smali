.class public Lcom/m0narx/tweaks/AdbService;
.super Landroid/app/Service;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/AdbService$LocalBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 19
    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    .local v1, enable:Z
    if-eqz v1, :cond_0

    .line 24
    const-string v0, "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"

    .line 28
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/m0narx/framework/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/m0narx/tweaks/AdbService;->stopSelf()V

    .line 32
    const/4 v2, 0x2

    return v2

    .line 26
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    const-string v0, "setprop service.adb.tcp.port -1 && stop adbd && start adbd"

    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_0
.end method
