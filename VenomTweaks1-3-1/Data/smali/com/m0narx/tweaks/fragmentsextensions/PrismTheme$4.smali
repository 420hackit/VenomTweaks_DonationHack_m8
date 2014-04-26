.class Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    .line 114
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    .line 113
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, customizeIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
