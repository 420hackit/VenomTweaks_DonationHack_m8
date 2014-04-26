.class Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrismTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    .line 270
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 271
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
    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "<b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 280
    const-string v0, "</b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 281
    const-string v0, "</a>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 282
    const-string v0, "<br/>"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 283
    const-string v0, "<p>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 284
    const-string v0, "<a href="

    const-string v1, ": "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 285
    const-string v0, ">"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 287
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->notifyDataSetChanged()V

    .line 290
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 304
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

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    if-nez p2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 312
    const v2, 0x7f030025

    const/4 v3, 0x0

    .line 311
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 313
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;-><init>()V

    .line 315
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 314
    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    .line 317
    const v1, 0x7f050013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 316
    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 319
    const v1, 0x7f050055

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemRadioButton;

    .line 318
    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    .line 322
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 326
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 327
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 328
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 329
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 331
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    .line 333
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 343
    :goto_1
    return-object p2

    .line 324
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    goto :goto_0

    .line 340
    :cond_1
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;->cfgBtn:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    goto :goto_1
.end method
