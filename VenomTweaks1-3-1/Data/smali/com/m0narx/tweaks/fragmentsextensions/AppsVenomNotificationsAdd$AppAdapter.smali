.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsVenomNotificationsAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;
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

.field public mCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    .line 178
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 179
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 12
    .parameter "pkg"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, Label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 188
    const/4 v9, 0x4

    .line 187
    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 191
    .local v6, pkginfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    :goto_0
    if-lt v8, v10, :cond_1

    .line 217
    .end local v6           #pkginfo:Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v2, :cond_0

    .line 218
    move-object v2, p1

    .line 219
    :cond_0
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 191
    .restart local v6       #pkginfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    aget-object v3, v9, v8

    .line 193
    .local v3, appInfo:Landroid/content/pm/ServiceInfo;
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.htc.contacts"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    const-string p1, "com.android.phone"

    .line 198
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 202
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 203
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_2
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 204
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 210
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    .line 211
    :try_start_3
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 212
    :cond_3
    if-nez v1, :cond_4

    .line 213
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 191
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 203
    .restart local v4       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_5
    :try_start_4
    const-string v7, "???"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 215
    .end local v3           #appInfo:Landroid/content/pm/ServiceInfo;
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #pkginfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 206
    .restart local v3       #appInfo:Landroid/content/pm/ServiceInfo;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #pkginfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 247
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

    .line 254
    if-nez p2, :cond_0

    .line 255
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    const v4, 0x7f030026

    const/4 v5, 0x0

    .line 255
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;

    invoke-direct {v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;-><init>()V

    .line 259
    .local v0, holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;
    const v3, 0x7f05003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 258
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 261
    const v3, 0x7f050013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 260
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemImageButton;

    .line 264
    const v3, 0x7f050009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 263
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 265
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 268
    const v3, 0x7f050057

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcEditText;

    .line 267
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->count:Lcom/htc/widget/HtcEditText;

    .line 271
    const v3, 0x7f050056

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 270
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->decrease_count:Landroid/widget/Button;

    .line 274
    const v3, 0x7f050058

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 273
    iput-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->increase_count:Landroid/widget/Button;

    .line 276
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->icon:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->count:Lcom/htc/widget/HtcEditText;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->count:Lcom/htc/widget/HtcEditText;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->decrease_count:Landroid/widget/Button;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;

    invoke-direct {v4, p0, p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;ILcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->increase_count:Landroid/widget/Button;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$4;

    invoke-direct {v4, p0, p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;ILcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    .line 329
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v4

    move-object v3, p2

    .line 330
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v3

    .line 328
    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v1, localRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/view/TouchDelegate;

    .line 332
    iget-object v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    .line 331
    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 333
    .local v2, localTouchDelegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 334
    return-object p2

    .line 278
    .end local v0           #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;
    .end local v1           #localRect:Landroid/graphics/Rect;
    .end local v2           #localTouchDelegate:Landroid/view/TouchDelegate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    return-void
.end method
