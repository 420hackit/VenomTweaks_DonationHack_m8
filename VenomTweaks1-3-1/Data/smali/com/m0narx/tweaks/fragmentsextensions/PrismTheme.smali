.class public Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;
.super Landroid/app/Activity;
.source "PrismTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private currentTheme:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

.field private mContext:Landroid/content/Context;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 197
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->setCustomizeState()V

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getThemeIntents()[Landroid/content/Intent;
    .locals 5

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, other:Landroid/content/Intent;
    const-string v2, "com.anddoes.launcher.THEME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/4 v2, 0x3

    new-array v1, v2, [Landroid/content/Intent;

    .line 209
    .local v1, themeIntents:[Landroid/content/Intent;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "venom.rosie.launcher.THEME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 210
    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.adw.launcher.THEMES"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 211
    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 213
    return-object v1
.end method

.method private setCustomizeState()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public LoadData()V
    .locals 18

    .prologue
    .line 217
    new-instance v12, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 219
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 221
    .local v5, local:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    const v13, 0x7f0a0134

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 222
    const v14, 0x7f0a0135

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    .line 223
    const v16, 0x7f020027

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 221
    invoke-virtual/range {v12 .. v16}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getThemeIntents()[Landroid/content/Intent;

    move-result-object v10

    .line 226
    .local v10, themeIntents:[Landroid/content/Intent;
    array-length v13, v10

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->handler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    return-void

    .line 226
    :cond_0
    aget-object v4, v10, v12

    .line 228
    .local v4, intent:Landroid/content/Intent;
    const/4 v14, 0x1

    .line 227
    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 229
    .local v11, themes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lt v3, v14, :cond_1

    .line 226
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v9, theme:Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 232
    .local v6, pkgName:Ljava/lang/String;
    const-string v1, ""

    .line 234
    .local v1, desc:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 235
    .local v8, res:Landroid/content/res/Resources;
    const-string v14, "theme_description"

    .line 236
    const-string v15, "string"

    .line 235
    invoke-virtual {v8, v14, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, descid:I
    if-eqz v2, :cond_2

    .line 238
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x64

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    .end local v2           #descid:I
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 243
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 242
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v6, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 240
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f0a0001

    const/4 v6, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->Cr:Landroid/content/ContentResolver;

    .line 66
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mContext:Landroid/content/Context;

    .line 67
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_rosie_theme"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    .line 68
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 69
    const-string v4, ""

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;

    .line 72
    :cond_0
    const v4, 0x7f0a0132

    .line 71
    invoke-static {p0, v4}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 73
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 75
    new-instance v3, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, mActionMarket:Lcom/htc/widget/ActionBarItemView;
    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 77
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$2;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 90
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v4, 0x20800a9

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 93
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 106
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->setContentView(I)V

    .line 107
    const v4, 0x7f05000e

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooterButton;

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 108
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x7f0a0150

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 109
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x20800c3

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 110
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v4, 0x7f05000d

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooterButton;

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 120
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x7f0a001d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 121
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x20800a3

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 122
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$5;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v4, 0x7f050007

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    .line 130
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 131
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 132
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 133
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 183
    new-instance v4, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 184
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v5, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 186
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 187
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->setCustomizeState()V

    .line 188
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 251
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->LoadData()V

    .line 195
    return-void
.end method
