.class Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Navbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Navbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavbarListAdapter"
.end annotation


# instance fields
.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "name"
    .parameter "icon"
    .parameter "resId"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->notifyDataSetChanged()V

    .line 319
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 333
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;
    if-nez p2, :cond_0

    .line 340
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 341
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;-><init>()V

    .line 342
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;
    const v1, 0x7f060039

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;->Icon:Landroid/widget/ImageView;

    .line 343
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 348
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;->Icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-object p2

    .line 345
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;
    goto :goto_0
.end method
