.class public Lcom/m0narx/tweaks/fragmentsextensions/Underlay;
.super Landroid/app/Activity;
.source "Underlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/Underlay$ViewHolder;,
        Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconHolder;
    }
.end annotation


# static fields
.field private static final MSG_CURRENT:I = 0x2

.field private static final MSG_DONE:I = 0x0

.field private static final MSG_TOTAL:I = 0x1


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private IconGrid:Lcom/htc/widget/HtcGridView;

.field chooser:Lcom/htc/widget/HtcAlertDialog;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

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

.field res:Landroid/content/res/Resources;

.field public themeDrawables:[Landroid/graphics/drawable/Drawable;

.field private themeIcons:[Ljava/lang/String;

.field public themeResIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAllIcons:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Lcom/htc/widget/HtcGridView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 202
    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

    invoke-direct {v6, p0, v7}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;)V

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

    .line 204
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAllIcons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_underlay_theme"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    .line 209
    :try_start_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    .line 210
    const/4 v5, 0x0

    .line 211
    .local v5, resId:I
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    const-string v7, "underlay_pack"

    const-string v8, "array"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 212
    if-eqz v5, :cond_2

    .line 213
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trying to get icon pack from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    .line 215
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeResIds:[I

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, data:Landroid/os/Bundle;
    const-string v6, "total"

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 221
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 222
    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->what:I

    .line 223
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v6, :cond_0

    .line 247
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #resId:I
    :goto_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_3

    .line 251
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    return-void

    .line 226
    .restart local v0       #data:Landroid/os/Bundle;
    .restart local v4       #msg:Landroid/os/Message;
    .restart local v5       #resId:I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    aget-object v7, v7, v3

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, drId:I
    if-eqz v1, :cond_1

    .line 228
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    const/16 v9, 0x90

    const/16 v10, 0x90

    invoke-static {v7, v8, v1, v9, v10}, Lcom/m0narx/tweaks/widgets/Misc;->getImage(Landroid/content/Context;Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v3

    .line 229
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeResIds:[I

    aput v1, v6, v3

    .line 235
    :goto_3
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->handler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 232
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeResIds:[I

    const/4 v7, 0x0

    aput v7, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 242
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #drId:I
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #resId:I
    :catch_0
    move-exception v2

    .line 243
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load icon list from theme: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #resId:I
    :cond_2
    :try_start_2
    const-string v6, "m0narX_tweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load icon list from theme: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    .line 240
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeDrawables:[Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 248
    .end local v5           #resId:I
    .restart local v3       #i:I
    :cond_3
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeIcons:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->themeResIds:[I

    aget v9, v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f0a0080

    const/4 v6, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->Cr:Landroid/content/ContentResolver;

    .line 82
    const v3, 0x7f0a02ce

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 83
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->inflater:Landroid/view/LayoutInflater;

    .line 87
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->setContentView(I)V

    .line 90
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, dialogM:Landroid/view/View;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const v4, 0x7f0a02cf

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 96
    .local v1, chooserB:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->chooser:Lcom/htc/widget/HtcAlertDialog;

    .line 98
    const v3, 0x7f050037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcGridView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    .line 99
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcGridView;->setAnimationCacheEnabled(Z)V

    .line 100
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcGridView;->setDrawingCacheEnabled(Z)V

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcGridView;->setSmoothScrollbarEnabled(Z)V

    .line 102
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcGridView;->setScrollingCacheEnabled(Z)V

    .line 104
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->IconGrid:Lcom/htc/widget/HtcGridView;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 161
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v7}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 162
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 164
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 165
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->LoadData()V

    .line 172
    return-void
.end method
