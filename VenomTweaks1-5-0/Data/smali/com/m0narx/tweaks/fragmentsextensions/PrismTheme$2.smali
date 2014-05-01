.class Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$2;
.super Ljava/lang/Object;
.source "PrismTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, market:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-string v1, "market://search?q=novaicon pack&c=apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
