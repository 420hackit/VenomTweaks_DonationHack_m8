.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "fakeIMEI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
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

.field public mIMEI:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIcon:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    .line 151
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 152
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "imei"
    .parameter "icon"
    .parameter "name"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdByPkg(Ljava/lang/String;)I
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 181
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

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    if-nez p2, :cond_0

    .line 198
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 199
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;-><init>()V

    .line 200
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    const v3, 0x7f050012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    .line 201
    const v3, 0x7f050013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 202
    const v3, 0x7f050009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 203
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 205
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "random"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f0a01f1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 216
    :goto_1
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
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

    .line 227
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 228
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 229
    return-object p2

    .line 207
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    goto :goto_0

    .line 214
    :cond_1
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setIMEI(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "imei"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method
