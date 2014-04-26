.class Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayPackageSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesAdapter"
.end annotation


# instance fields
.field public mId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mId:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mName:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {p1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .parameter "position"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, holder:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    if-nez p2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 237
    new-instance v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;-><init>()V

    .line 238
    .restart local v0       #holder:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    const v2, 0x7f050013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;->Icon:Landroid/widget/ImageView;

    .line 239
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    :goto_0
    const/4 v1, 0x0

    .line 246
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$0(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->mId:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_1
    iget-object v2, v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;->Icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-object p2

    .line 241
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    goto :goto_0

    .line 247
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
