.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;
.super Ljava/lang/Object;
.source "AppsVenomNotificationsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;->val$position:I

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->removeItem(I)V

    .line 288
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method
