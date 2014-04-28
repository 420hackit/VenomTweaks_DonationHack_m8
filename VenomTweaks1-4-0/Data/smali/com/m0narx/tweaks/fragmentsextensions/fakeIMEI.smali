.class public Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;
.super Landroid/app/Activity;
.source "fakeIMEI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$ViewHolder;
    }
.end annotation


# static fields
.field private static final PICKER_ADDAPP:I


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private final CONFIG_FILE:Ljava/lang/String;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private apps:Ljava/util/Properties;

.field protected mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-string v0, "/data/system/fakeimei.prop"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->CONFIG_FILE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Ljava/util/Properties;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->setIMEIDialog(I)V

    return-void
.end method

.method private setIMEIDialog(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, dialogView:Landroid/view/View;
    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcEditText;

    .line 247
    .local v2, input:Lcom/htc/widget/HtcEditText;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v3, p1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->getIMEI(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, imei:Ljava/lang/String;
    const-string v3, "random"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const-string v1, ""

    .line 251
    :cond_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcEditText;->setTextColor(I)V

    .line 254
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    const v4, 0x7f0a01ef

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 256
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 257
    const v4, 0x7f0a0056

    .line 258
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;

    invoke-direct {v5, p0, v2, p1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;Lcom/htc/widget/HtcEditText;I)V

    .line 257
    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 268
    const v4, 0x7f0a001d

    .line 269
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$5;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V

    .line 268
    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 274
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 277
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 282
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, Label:Ljava/lang/String;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    .local v0, Icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "random"

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->getIdByPkg(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->setIMEIDialog(I)V

    .line 289
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    .end local v0           #Icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #Label:Ljava/lang/String;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    .line 64
    const v9, 0x7f0a01ef

    invoke-static {p0, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 65
    .local v2, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 67
    new-instance v6, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v6, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v9, 0x208

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 69
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x204025c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v2, v6}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 79
    const v9, 0x7f030003

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->setContentView(I)V

    .line 81
    const v9, 0x7f06000d

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 82
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a0056

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 83
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    .line 85
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a7

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 86
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v9, 0x7f060006

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListView;

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    .line 108
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 109
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 111
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$3;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    .line 123
    :try_start_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/data/system/fakeimei.prop"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    invoke-virtual {v9}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, fakeImeiList:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v4

    if-lt v5, v9, :cond_0

    .line 140
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v9}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V

    .line 141
    return-void

    .line 128
    :cond_0
    aget-object v9, v4, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, pkg:Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 131
    .local v8, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, Label:Ljava/lang/String;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, Icon:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    invoke-virtual {v10, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 134
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v9}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v0           #Icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #Label:Ljava/lang/String;
    .end local v8           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;

    invoke-virtual {v9, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 124
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #fakeImeiList:[Ljava/lang/Object;
    .end local v5           #i:I
    .end local v7           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_0
.end method
