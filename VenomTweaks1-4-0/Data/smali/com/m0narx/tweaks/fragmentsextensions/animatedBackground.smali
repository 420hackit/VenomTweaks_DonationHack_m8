.class public Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;
.super Landroid/app/Activity;
.source "animatedBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field private ToggleTweak:Ljava/lang/String;

.field private TweakName:Ljava/lang/String;

.field private currentTheme:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->TweakName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->ToggleTweak:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->TweakName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->ToggleTweak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->currentTheme:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->quit(I)V

    return-void
.end method

.method private quit(I)V
    .locals 2
    .parameter "Result"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->setResult(ILandroid/content/Intent;)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->finish()V

    .line 122
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getParent()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public LoadData()V
    .locals 11

    .prologue
    .line 137
    new-instance v8, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V

    iput-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 140
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "venom.background.anim.THEME"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 141
    .local v7, themes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 155
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->handler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    return-void

    .line 142
    :cond_0
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 143
    .local v6, theme:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    .local v3, pkgName:Ljava/lang/String;
    const-string v0, ""

    .line 146
    .local v0, desc:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 147
    .local v5, res:Landroid/content/res/Resources;
    const-string v8, "theme_author"

    const-string v9, "string"

    invoke-virtual {v5, v8, v9, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, descid:I
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    .end local v1           #descid:I
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v9, v0, v3, v10}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->Cr:Landroid/content/ContentResolver;

    .line 60
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tweak"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->TweakName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "toggle"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->ToggleTweak:Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->Cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->TweakName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->currentTheme:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->currentTheme:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->currentTheme:Ljava/lang/String;

    .line 66
    :cond_0
    const v3, 0x7f0a0320

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 68
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 70
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const v3, 0x20800a9

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 72
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 84
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->setContentView(I)V

    .line 86
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    .line 89
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 91
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 92
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 94
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 107
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v4, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 109
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->LoadData()V

    .line 127
    return-void
.end method
