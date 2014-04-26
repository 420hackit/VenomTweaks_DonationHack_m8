.class Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UnderlayTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    .line 185
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 186
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
    .line 189
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v0, "<b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 194
    const-string v0, "</b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 195
    const-string v0, "</a>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 196
    const-string v0, "<br/>"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 197
    const-string v0, "<p>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 198
    const-string v0, "<a href="

    const-string v1, ": "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 199
    const-string v0, ">"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 201
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->notifyDataSetChanged()V

    .line 204
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 218
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    if-nez p2, :cond_1

    .line 225
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 226
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;-><init>()V

    .line 227
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    .line 228
    const v1, 0x7f050013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 229
    const v1, 0x7f050055

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 236
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 237
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 238
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 240
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    .line 242
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_icon_underlay"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_underlay_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 249
    :cond_0
    :goto_1
    return-object p2

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_icon_underlay"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 247
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    goto :goto_1
.end method
