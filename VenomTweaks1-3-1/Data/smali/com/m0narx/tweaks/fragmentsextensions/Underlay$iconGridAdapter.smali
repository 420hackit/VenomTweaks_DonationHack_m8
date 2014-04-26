.class Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Underlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Underlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iconGridAdapter"
.end annotation


# instance fields
.field public mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mResIds:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "name"
    .parameter "icon"
    .parameter "resId"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mResIds:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->notifyDataSetChanged()V

    .line 275
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    if-nez p2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 291
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;-><init>()V

    .line 292
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;->Icon:Landroid/widget/ImageView;

    .line 293
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;->Icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;->Icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 299
    return-object p2

    .line 295
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    goto :goto_0
.end method
