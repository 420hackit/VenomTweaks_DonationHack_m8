.class Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme$2;
.super Ljava/lang/Object;
.source "NavbarTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, hub:Landroid/content/Intent;
    const-string v1, "com.m0narx.hub"

    const-string v2, "com.m0narx.hub.downloadCenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "filter"

    const-string v2, "sense"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/NavbarTheme;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
