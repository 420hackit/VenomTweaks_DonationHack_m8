.class Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;
.super Landroid/widget/BaseAdapter;
.source "PulldownGestures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureAdapter"
.end annotation


# instance fields
.field public mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDraw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDraw:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mData:Ljava/util/ArrayList;

    .line 271
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 272
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "data"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 275
    move-object v1, p2

    .line 276
    .local v1, Label:Ljava/lang/String;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 277
    .local v0, Icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDraw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 300
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

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    if-nez p2, :cond_0

    .line 308
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 309
    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 310
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;-><init>()V

    .line 312
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    const v3, 0x7f05003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 311
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 314
    const v3, 0x7f050013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 313
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 317
    const v3, 0x7f050009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 316
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 318
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 320
    const v3, 0x7f05000f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 319
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 321
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDraw:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    .line 343
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v4

    move-object v3, p2

    .line 344
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v3

    .line 342
    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    .line 346
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 345
    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 347
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 348
    return-object p2

    .line 323
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->mDraw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    return-void
.end method
