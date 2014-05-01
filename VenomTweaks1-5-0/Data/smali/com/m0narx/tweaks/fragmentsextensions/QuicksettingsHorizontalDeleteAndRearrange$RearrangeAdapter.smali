.class Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuicksettingsHorizontalDeleteAndRearrange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RearrangeAdapter"
.end annotation


# instance fields
.field public isChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    .line 228
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    return-void
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;

    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "checked"
    .parameter "item"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->notifyDataSetChanged()V

    .line 236
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 261
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

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    if-nez p2, :cond_0

    .line 268
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 269
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;-><init>()V

    .line 270
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    const v3, 0x7f060009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 271
    const v3, 0x7f060008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDeleteButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->checkBox:Lcom/htc/widget/HtcDeleteButton;

    .line 272
    const v3, 0x7f06000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 273
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 279
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->checkBox:Lcom/htc/widget/HtcDeleteButton;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 280
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->checkBox:Lcom/htc/widget/HtcDeleteButton;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->checkBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter$1;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 298
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 300
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v4

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v3

    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;->checkBox:Lcom/htc/widget/HtcDeleteButton;

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 302
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 303
    return-object p2

    .line 275
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    goto :goto_0
.end method

.method public insertItem(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "name"
    .parameter "checked"
    .parameter "item"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    return-void
.end method
