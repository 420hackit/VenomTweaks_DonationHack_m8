.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;
.super Ljava/lang/Object;
.source "AppsVenomNotificationsAdd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;->val$position:I

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "arg1"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;->val$position:I

    check-cast p1, Lcom/htc/widget/HtcEditText;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    return-void
.end method
