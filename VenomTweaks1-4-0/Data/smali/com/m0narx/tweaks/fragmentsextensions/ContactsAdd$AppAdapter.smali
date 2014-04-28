.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
.field public mContactImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mContactName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactImage:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    .line 336
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 337
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "contactName"
    .parameter "contactImage"

    .prologue
    .line 342
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 349
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 370
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    if-nez p2, :cond_0

    .line 378
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 379
    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 380
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;-><init>()V

    .line 382
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    const v3, 0x7f06003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 381
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 384
    const v3, 0x7f060012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 383
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 388
    const v3, 0x7f060008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 387
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 389
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 391
    const v3, 0x7f06000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 390
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 392
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactImage:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 409
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    .line 410
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v4

    move-object v3, p2

    .line 411
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v3

    .line 409
    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    .line 413
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 412
    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 414
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 415
    return-object p2

    .line 394
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->mContactImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->removeSingleContact(I)V
    invoke-static {v0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;I)V

    .line 356
    return-void
.end method
