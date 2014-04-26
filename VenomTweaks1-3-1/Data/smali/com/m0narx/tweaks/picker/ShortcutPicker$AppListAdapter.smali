.class Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/picker/ShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    .line 200
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 201
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 221
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, holder:Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    if-nez p2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    .line 229
    const/4 v4, 0x0

    .line 228
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    new-instance v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;

    .end local v1           #holder:Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    invoke-direct {v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;-><init>()V

    .line 232
    .restart local v1       #holder:Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    const v2, 0x7f050012

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 231
    iput-object v2, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 234
    const v2, 0x7f050013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    .line 233
    iput-object v2, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 235
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    :goto_0
    iget-object v3, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, Element:[Ljava/lang/String;
    iget-object v2, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 245
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 244
    invoke-virtual {v3, v4, v5}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->GetActivityIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-object p2

    .line 237
    .end local v0           #Element:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    check-cast v1, Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;

    .restart local v1       #holder:Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    goto :goto_0
.end method
