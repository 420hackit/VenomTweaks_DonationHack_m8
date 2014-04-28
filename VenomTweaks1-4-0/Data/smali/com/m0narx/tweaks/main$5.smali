.class Lcom/m0narx/tweaks/main$5;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;

.field private final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$5;->this$0:Lcom/m0narx/tweaks/main;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$5;->val$link:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/m0narx/tweaks/main$5;->this$0:Lcom/m0narx/tweaks/main;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/m0narx/tweaks/main$5;->val$link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    .line 541
    return-void
.end method
