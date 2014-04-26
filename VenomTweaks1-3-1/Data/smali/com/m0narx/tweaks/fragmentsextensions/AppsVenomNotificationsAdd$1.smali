.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;
.super Ljava/lang/Object;
.source "AppsVenomNotificationsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    .line 93
    const-class v2, Lcom/m0narx/tweaks/picker/AppPicker;

    .line 92
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void
.end method
