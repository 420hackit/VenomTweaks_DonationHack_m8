.class Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field public mDecription:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    .line 175
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "name"
    .parameter "decription"
    .parameter "packageName"
    .parameter "Icon"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v0, "<b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 183
    const-string v0, "</b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 184
    const-string v0, "</a>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 185
    const-string v0, "<br/>"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 186
    const-string v0, "<p>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 187
    const-string v0, "<a href="

    const-string v1, ": "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 188
    const-string v0, ">"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 190
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    if-nez p2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 214
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;-><init>()V

    .line 215
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    .line 216
    const v1, 0x7f050013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 217
    const v1, 0x7f050055

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemImageButton;

    .line 218
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 223
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 224
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 225
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 227
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x108018c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 237
    :goto_1
    return-object p2

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x108017e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1
.end method
