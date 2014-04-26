.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;
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

.field private final synthetic val$holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;ILcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    iget v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$position:I

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    iget v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;

    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->count:Lcom/htc/widget/HtcEditText;

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    iget v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
