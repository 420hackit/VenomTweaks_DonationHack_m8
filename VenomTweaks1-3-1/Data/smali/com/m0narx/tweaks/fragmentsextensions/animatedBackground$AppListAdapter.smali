.class Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "animatedBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    .line 171
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 172
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
    .line 175
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v0, "<b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 179
    const-string v0, "</b>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 180
    const-string v0, "</a>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 181
    const-string v0, "<br/>"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 182
    const-string v0, "<p>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 183
    const-string v0, "<a href="

    const-string v1, ": "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 184
    const-string v0, ">"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 186
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 202
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

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    if-nez p2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 210
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;-><init>()V

    .line 211
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    const v1, 0x7f050012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    .line 212
    const v1, 0x7f050013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 218
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 219
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 220
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mDecription:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 222
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-object p2

    .line 215
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    goto :goto_0
.end method
