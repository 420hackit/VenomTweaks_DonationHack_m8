.class Lcom/m0narx/tweaks/fragments/about$4;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/about;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/about;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/about$4;->this$0:Lcom/m0narx/tweaks/fragments/about;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$4;->this$0:Lcom/m0narx/tweaks/fragments/about;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://forum.xda-developers.com/showthread.php?t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/about$4;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->THREAD_ID:Ljava/lang/String;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/about;->access$8(Lcom/m0narx/tweaks/fragments/about;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 302
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/about;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
