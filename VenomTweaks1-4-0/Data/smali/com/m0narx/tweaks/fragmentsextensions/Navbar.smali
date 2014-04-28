.class public Lcom/m0narx/tweaks/fragmentsextensions/Navbar;
.super Landroid/app/Activity;
.source "Navbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;,
        Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/Navbar$ViewHolder;,
        Lcom/m0narx/tweaks/fragmentsextensions/Navbar$iconHolder;
    }
.end annotation


# static fields
.field private static final MSG_CURRENT:I = 0x2

.field private static final MSG_DONE:I = 0x0

.field private static final MSG_TOTAL:I = 0x1


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field DataLoader:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

.field private mAllIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field pckg:Ljava/lang/String;

.field requiresCancel:Z

.field res:Landroid/content/res/Resources;

.field public themeDrawables:[Landroid/graphics/drawable/Drawable;

.field private themeIcons:[Ljava/lang/String;

.field public themeResIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAllIcons:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->handler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 227
    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    invoke-direct {v6, p0, v7}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;)V

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    .line 229
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAllIcons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_navbar_theme"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    .line 234
    :try_start_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    .line 235
    const/4 v5, 0x0

    .line 236
    .local v5, resId:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    const-string v7, "navbar_pack"

    const-string v8, "array"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 237
    if-eqz v5, :cond_3

    .line 238
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trying to get icon pack from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, data:Landroid/os/Bundle;
    const-string v6, "total"

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 246
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 247
    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->what:I

    .line 248
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeResIds:[I

    .line 252
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v6, :cond_1

    .line 280
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #resId:I
    :goto_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_4

    .line 285
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :cond_0
    return-void

    .line 255
    .restart local v0       #data:Landroid/os/Bundle;
    .restart local v4       #msg:Landroid/os/Message;
    .restart local v5       #resId:I
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->requiresCancel:Z

    if-nez v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    aget-object v7, v7, v3

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, drId:I
    if-eqz v1, :cond_2

    .line 261
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    const/16 v9, 0x190

    const/16 v10, 0x3d

    invoke-static {v7, v8, v1, v9, v10}, Lcom/m0narx/tweaks/widgets/Misc;->getImage(Landroid/content/Context;Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v3

    .line 262
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeResIds:[I

    aput v1, v6, v3

    .line 268
    :goto_3
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->handler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_2
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 265
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeResIds:[I

    const/4 v7, 0x0

    aput v7, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 275
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #drId:I
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #resId:I
    :catch_0
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load icon list from theme: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #resId:I
    :cond_3
    :try_start_2
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load icon list from theme: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    .line 273
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeDrawables:[Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 281
    .end local v5           #resId:I
    .restart local v3       #i:I
    :cond_4
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeIcons:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->themeResIds:[I

    aget v9, v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f0a0080

    const/4 v2, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->Cr:Landroid/content/ContentResolver;

    .line 90
    const v0, 0x7f0a02cd

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 91
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->inflater:Landroid/view/LayoutInflater;

    .line 95
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->setContentView(I)V

    .line 98
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 178
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 179
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 181
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 190
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->requiresCancel:Z

    .line 192
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->DataLoader:Ljava/lang/Thread;

    .line 193
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->DataLoader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 291
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->LoadData()V

    .line 198
    return-void
.end method
