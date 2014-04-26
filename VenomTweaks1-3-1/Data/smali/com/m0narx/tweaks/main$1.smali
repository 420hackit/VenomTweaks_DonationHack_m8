.class Lcom/m0narx/tweaks/main$1;
.super Landroid/content/BroadcastReceiver;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$1;->this$0:Lcom/m0narx/tweaks/main;

    .line 399
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.m0narx.tweaks.licensechecker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v2, "allow"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 405
    .local v0, allow:Z
    const-string v2, "package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, packageName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 409
    iget-object v2, p0, Lcom/m0narx/tweaks/main$1;->this$0:Lcom/m0narx/tweaks/main;

    #calls: Lcom/m0narx/tweaks/main;->createUnauthorizedDialog(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/main$1;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v2, v2, Lcom/m0narx/tweaks/main;->licenceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 418
    .end local v0           #allow:Z
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return-void

    .line 411
    .restart local v0       #allow:Z
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 412
    const-string v3, "ro.product.version"

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Pro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 413
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v3, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method
