.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrismIconsCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iconGridAdapter"
.end annotation


# instance fields
.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;",
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
    .line 426
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "name"
    .parameter "icon"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {v1, v2, p1, p2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->notifyDataSetChanged()V

    .line 432
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 442
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    if-nez p2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030013

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 449
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;-><init>()V

    .line 450
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    const v2, 0x7f060011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;->Icon:Landroid/widget/ImageView;

    .line 451
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 456
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v3

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/m0narx/framework/theme/AppIcons;->getIconByName(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 458
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;->Icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object p2

    .line 453
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    goto :goto_0

    .line 461
    :cond_2
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;->Icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
