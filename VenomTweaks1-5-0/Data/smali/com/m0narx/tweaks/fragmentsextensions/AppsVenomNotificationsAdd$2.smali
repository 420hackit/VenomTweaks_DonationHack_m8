.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$2;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->finish()V

    .line 111
    return-void
.end method
