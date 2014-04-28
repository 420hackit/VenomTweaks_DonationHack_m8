.class Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    .line 145
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 9
    .parameter "pkg"

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, Label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 154
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 156
    .local v4, pkginfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_1

    .line 162
    .end local v4           #pkginfo:Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v2, :cond_0

    move-object v2, p1

    .line 163
    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 167
    return-void

    .line 156
    .restart local v4       #pkginfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    aget-object v3, v7, v6

    .line 158
    .local v3, appInfo:Landroid/content/pm/ServiceInfo;
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 159
    :cond_2
    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 156
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 161
    .end local v3           #appInfo:Landroid/content/pm/ServiceInfo;
    .end local v4           #pkginfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 186
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

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    if-nez p2, :cond_0

    .line 193
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;-><init>()V

    .line 195
    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    const v3, 0x7f06003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 196
    const v3, 0x7f060012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 199
    const v3, 0x7f060008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 200
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 201
    const v3, 0x7f06000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    .line 202
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v4

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v3

    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 221
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 222
    return-object p2

    .line 204
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    return-void
.end method
