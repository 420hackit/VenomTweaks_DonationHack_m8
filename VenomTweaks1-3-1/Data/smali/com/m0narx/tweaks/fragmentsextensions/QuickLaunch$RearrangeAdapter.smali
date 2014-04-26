.class Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RearrangeAdapter"
.end annotation


# instance fields
.field public mActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIcon:Ljava/util/ArrayList;
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

.field public mPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    .line 180
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 181
    return-void
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "activity"
    .parameter "icon"
    .parameter "item"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 216
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

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    if-nez p2, :cond_0

    .line 223
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 224
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;-><init>()V

    .line 225
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    const v3, 0x7f05003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 226
    const v3, 0x7f050013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 229
    const v3, 0x7f050009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 230
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 231
    const v3, 0x7f05000f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 247
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 249
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

    .line 250
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 251
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 252
    return-object p2

    .line 234
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    goto :goto_0
.end method

.method public insertItem(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "pkg"
    .parameter "activity"
    .parameter "icon"
    .parameter "item"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    return-void
.end method
