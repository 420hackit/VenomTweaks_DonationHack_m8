.class Lcom/m0narx/tweaks/main$9;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setSlidingMenu()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/main$9;->this$0:Lcom/m0narx/tweaks/main;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/m0narx/tweaks/main$9;->this$0:Lcom/m0narx/tweaks/main;

    new-instance v1, Landroid/content/Intent;

    .line 906
    const-string v2, "android.intent.action.VIEW"

    .line 907
    const-string v3, "http://forum.xda-developers.com/devdb/project/?id=250&task=follow"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 905
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    .line 908
    return-void
.end method
