.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuietHoursWhitelistCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
.field public mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    .line 285
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    return-void
.end method


# virtual methods
.method public addItem(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->notifyDataSetChanged()V

    .line 293
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 311
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

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    if-nez p2, :cond_0

    .line 319
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 320
    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 321
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;-><init>()V

    .line 323
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    const v3, 0x7f06003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 322
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 325
    const v3, 0x7f060012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 324
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 329
    const v3, 0x7f060008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 328
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 330
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 332
    const v3, 0x7f06000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 331
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->Name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->Image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    .line 351
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v4

    move-object v3, p2

    .line 352
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v3

    .line 350
    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    .line 354
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 353
    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 355
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 356
    return-object p2

    .line 335
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    return-void
.end method
