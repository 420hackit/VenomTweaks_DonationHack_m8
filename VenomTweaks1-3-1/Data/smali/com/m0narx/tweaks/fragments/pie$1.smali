.class Lcom/m0narx/tweaks/fragments/pie$1;
.super Ljava/lang/Object;
.source "pie.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/pie;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/pie;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/pie;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/pie$1;->this$0:Lcom/m0narx/tweaks/fragments/pie;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie$1;->this$0:Lcom/m0narx/tweaks/fragments/pie;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 347
    const-string v3, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9C5JKBHDM6QSE"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method
