.class public Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;
.super Landroid/app/Activity;
.source "UnderlayTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private getThemeIntents()[Landroid/content/Intent;
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/Intent;

    .line 134
    .local v0, themeIntents:[Landroid/content/Intent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "venom.prism.launcher.UNDERLAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 137
    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 18

    .prologue
    .line 141
    new-instance v12, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 143
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 145
    .local v5, local:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    const v13, 0x7f0a02b9

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0a02ba

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    const v16, 0x7f020026

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getThemeIntents()[Landroid/content/Intent;

    move-result-object v10

    .line 148
    .local v10, themeIntents:[Landroid/content/Intent;
    array-length v13, v10

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->handler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void

    .line 148
    :cond_0
    aget-object v4, v10, v12

    .line 149
    .local v4, intent:Landroid/content/Intent;
    const/4 v14, 0x1

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 150
    .local v11, themes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lt v3, v14, :cond_1

    .line 148
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 152
    .local v9, theme:Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 153
    .local v6, pkgName:Ljava/lang/String;
    const-string v1, ""

    .line 155
    .local v1, desc:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 156
    .local v8, res:Landroid/content/res/Resources;
    const-string v14, "theme_description"

    const-string v15, "string"

    invoke-virtual {v8, v14, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, descid:I
    if-eqz v2, :cond_2

    .line 158
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

    .line 161
    .end local v2           #descid:I
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v6, v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;

    .line 61
    const v3, 0x7f0a0132

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 62
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 64
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v3, 0x20800a9

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 66
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 78
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->setContentView(I)V

    .line 81
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    .line 82
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 83
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 84
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 85
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 87
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 113
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v4, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 115
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 116
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->finish()V

    .line 172
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->LoadData()V

    .line 122
    return-void
.end method
