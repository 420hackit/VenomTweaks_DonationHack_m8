.class Lcom/m0narx/tweaks/main$4;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->CheckLicensing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;

.field private final synthetic val$proKeyPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$4;->val$proKeyPackage:Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    .line 334
    const-string v1, "android.intent.action.VIEW"

    .line 333
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/m0narx/tweaks/main$4;->val$proKeyPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/m0narx/tweaks/main;->access$6(Lcom/m0narx/tweaks/main;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/main;->finish()V

    .line 342
    return-void
.end method
