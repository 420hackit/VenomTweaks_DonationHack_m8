.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrismIconsCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;)V
    .locals 7
    .parameter "name"
    .parameter "component"
    .parameter "icon"
    .parameter "type"

    .prologue
    .line 510
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Ljava/lang/String;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->notifyDataSetChanged()V

    .line 512
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 526
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;
    if-nez p2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 534
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;-><init>()V

    .line 535
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 536
    const v1, 0x7f050013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 537
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 542
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    return-object p2

    .line 539
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;
    goto :goto_0
.end method
