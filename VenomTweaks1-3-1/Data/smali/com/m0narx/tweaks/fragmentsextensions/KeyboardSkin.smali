.class public Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;
.super Landroid/app/Activity;
.source "KeyboardSkin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field private currentTheme:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public LoadData()V
    .locals 14

    .prologue
    .line 137
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 139
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    .local v3, local:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    const v10, 0x7f0a01d7

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a01d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    const-string v12, ""

    const v13, 0x7f020024

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 141
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v9, Landroid/content/Intent;

    const-string v10, "venom.ime.THEME"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 145
    .local v8, themes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 159
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->handler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void

    .line 146
    :cond_0
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v7, theme:Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 148
    .local v4, pkgName:Ljava/lang/String;
    const-string v0, ""

    .line 150
    .local v0, desc:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 151
    .local v6, res:Landroid/content/res/Resources;
    const-string v9, "theme_description"

    const-string v10, "string"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, descid:I
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    .end local v1           #descid:I
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v10, v0, v4, v11}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 250
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->Cr:Landroid/content/ContentResolver;

    .line 62
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_ime_skin"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;

    .line 63
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;

    .line 64
    :cond_0
    const v3, 0x7f0a01d5

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 65
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 67
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 69
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 81
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    .end local v2           #mActionButton:Lcom/htc/widget/ActionBarItemView;
    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v2       #mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v3, 0x20800a9

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 83
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 95
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->setContentView(I)V

    .line 97
    const v3, 0x7f05000c

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    .line 100
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 102
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 103
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 105
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 117
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v4, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 119
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 121
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->LoadData()V

    .line 127
    return-void
.end method
