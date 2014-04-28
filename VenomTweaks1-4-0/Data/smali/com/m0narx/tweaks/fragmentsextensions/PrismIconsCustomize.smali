.class public Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.super Landroid/app/Activity;
.source "PrismIconsCustomize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$ViewHolder;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;,
        Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconHolder;
    }
.end annotation


# static fields
.field private static final MSG_CURRENT:I = 0x2

.field private static final MSG_DONE:I = 0x0

.field private static final MSG_TOTAL:I = 0x1


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private customIcons:Ljava/util/Properties;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

.field private mAllIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

.field public mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAllIcons:Ljava/util/HashMap;

    .line 273
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->saveCustomIcons()V

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAllIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Ljava/util/Properties;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->customIcons:Ljava/util/Properties;

    return-object v0
.end method

.method private saveCustomIcons()V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->customIcons:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "Venom Tweaks icons theme for HTC Sense"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    const-string v0, "pkill com.htc.launcher;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp.prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v1}, Lcom/m0narx/framework/theme/AppIcons;->getCustomIconsFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, "chmod 666 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v1}, Lcom/m0narx/framework/theme/AppIcons;->getCustomIconsFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, "pkill com.htc.lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_theme"

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v2}, Lcom/m0narx/framework/theme/AppIcons;->getTheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->refreshCustomIcons()V

    .line 267
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public LoadData()V
    .locals 24

    .prologue
    .line 325
    new-instance v20, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAllIcons:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 330
    .local v17, pm:Landroid/content/pm/PackageManager;
    new-instance v15, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v15, mainIntent:Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 336
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v20, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v8, data:Landroid/os/Bundle;
    const-string v20, "total"

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/m0narx/framework/theme/AppIcons;->getThemeIcons()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 348
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 349
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/m0narx/framework/theme/AppIcons;->getThemeIcons()[Ljava/lang/String;

    move-result-object v12

    .line 355
    .local v12, icons:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/m0narx/framework/theme/AppIcons;->getThemeIcons()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v9, v0, :cond_5

    .line 367
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const-string v21, "ic_allapps"

    invoke-virtual/range {v20 .. v21}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 368
    .local v6, allapps:Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const-string v21, "allapp"

    invoke-virtual/range {v20 .. v21}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 371
    :cond_0
    if-nez v6, :cond_1

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultAllAppsIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a02b4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    sget-object v23, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->addItem(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const-string v21, "ic_allapps_pressed"

    invoke-virtual/range {v20 .. v21}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 377
    .local v19, workspace:Landroid/graphics/drawable/Drawable;
    if-nez v19, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const-string v21, "allapp_selected"

    invoke-virtual/range {v20 .. v21}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 380
    :cond_2
    if-nez v19, :cond_3

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultWorkspaceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 383
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a02b5

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    sget-object v23, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->addItem(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const-string v21, "unlock"

    invoke-virtual/range {v20 .. v21}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 386
    .local v18, unlock:Landroid/graphics/drawable/Drawable;
    if-nez v18, :cond_4

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultUnlockIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 389
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a02b6

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    sget-object v23, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->addItem(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v6           #allapps:Landroid/graphics/drawable/Drawable;
    .end local v18           #unlock:Landroid/graphics/drawable/Drawable;
    .end local v19           #workspace:Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v9, v0, :cond_7

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    return-void

    .line 357
    :cond_5
    aget-object v11, v12, v9

    .line 359
    .local v11, iconName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/m0narx/framework/theme/AppIcons;->getIconByName(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/m0narx/tweaks/widgets/Misc;->getLowResDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 361
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_6

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAllIcons:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 395
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #iconName:Ljava/lang/String;
    :cond_7
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 396
    .local v13, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, Label:Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v7, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget-object v22, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v7, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->addItem(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 390
    .end local v5           #Label:Ljava/lang/String;
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v20

    goto/16 :goto_1
.end method

.method public getDefaultAllAppsIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 296
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.htc.launcher"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 297
    .local v0, launcherRes:Landroid/content/res/Resources;
    const-string v3, "all_apps_button_icon"

    const-string v4, "drawable"

    const-string v5, "com.htc.launcher"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, resId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 300
    .end local v0           #launcherRes:Landroid/content/res/Resources;
    .end local v2           #resId:I
    :goto_0
    return-object v3

    .line 299
    :catch_0
    move-exception v3

    .line 300
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDefaultUnlockIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 316
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.htc.idlescreen.base"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 317
    .local v0, launcherRes:Landroid/content/res/Resources;
    const-string v3, "lockscreen_icon_locked_dark"

    const-string v4, "drawable"

    const-string v5, "com.htc.idlescreen.base"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, resId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 320
    .end local v0           #launcherRes:Landroid/content/res/Resources;
    .end local v2           #resId:I
    :goto_0
    return-object v3

    .line 319
    :catch_0
    move-exception v3

    .line 320
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDefaultWorkspaceIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 306
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.htc.launcher"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    .local v0, launcherRes:Landroid/content/res/Resources;
    const-string v3, "workspace_button_icon"

    const-string v4, "drawable"

    const-string v5, "com.htc.launcher"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 308
    .local v2, resId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 310
    .end local v0           #launcherRes:Landroid/content/res/Resources;
    .end local v2           #resId:I
    :goto_0
    return-object v3

    .line 309
    :catch_0
    move-exception v3

    .line 310
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 557
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const v4, 0x7f0a0080

    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->Cr:Landroid/content/ContentResolver;

    .line 80
    const v1, 0x7f0a014f

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 82
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/m0narx/framework/theme/AppIcons;->getInstance(Landroid/content/Context;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    .line 87
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v1}, Lcom/m0narx/framework/theme/AppIcons;->getCustomIcons()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->customIcons:Ljava/util/Properties;

    .line 89
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->inflater:Landroid/view/LayoutInflater;

    .line 90
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->setContentView(I)V

    .line 92
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 93
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 94
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 95
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 104
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800a3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 106
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    .line 114
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 242
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 243
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 245
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 247
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 248
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 408
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->LoadData()V

    .line 253
    return-void
.end method
