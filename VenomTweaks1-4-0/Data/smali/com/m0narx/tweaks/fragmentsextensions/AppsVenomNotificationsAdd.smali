.class public Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;
.super Landroid/app/Activity;
.source "AppsVenomNotificationsAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$ViewHolder;
    }
.end annotation


# static fields
.field private static final COUNT_DEFAULT:Ljava/lang/Integer; = null

.field private static final DEFAULT:Ljava/lang/String; = ""

.field private static final PICKER_ADDAPP:I


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private TweakName:Ljava/lang/String;

.field protected mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->COUNT_DEFAULT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 362
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 350
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    const-string v1, "package"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->COUNT_DEFAULT:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->addItem(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->Cr:Landroid/content/ContentResolver;

    .line 79
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->pm:Landroid/content/pm/PackageManager;

    .line 81
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tweak"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 83
    const-string v7, "title"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 82
    invoke-static {p0, v6}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 84
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 86
    new-instance v5, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v5, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v5, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v6, 0x208

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 88
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x204025c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v1, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 98
    const v6, 0x7f030002

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->setContentView(I)V

    .line 100
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcFooterButton;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 101
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 102
    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    .line 104
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcFooterButton;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 105
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f0a001d

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 106
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x20800a3

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 107
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v7, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$2;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x20800a7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 115
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v7, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->Cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, Apps:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 134
    const-string v0, ""

    .line 135
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->Cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    :cond_0
    const-string v6, "\\|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, appList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-lt v3, v6, :cond_1

    .line 151
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    iput-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    .line 152
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 153
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 154
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 156
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v7, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$4;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    invoke-virtual {v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 166
    return-void

    .line 141
    :cond_1
    aget-object v6, v2, v3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    aget-object v6, v2, v3

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, items:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    aget-object v6, v4, v10

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->isInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    aget-object v7, v4, v9

    aget-object v8, v4, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->addItem(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    .end local v4           #items:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
