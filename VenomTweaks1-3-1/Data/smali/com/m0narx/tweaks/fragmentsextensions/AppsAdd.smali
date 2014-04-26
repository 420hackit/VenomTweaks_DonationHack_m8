.class public Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;
.super Landroid/app/Activity;
.source "AppsAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = ""

.field private static final PICKER_ADDAPP:I


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private TweakName:Ljava/lang/String;

.field protected mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->TweakName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->TweakName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 234
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    const-string v1, "package"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->addItem(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->Cr:Landroid/content/ContentResolver;

    .line 59
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->pm:Landroid/content/pm/PackageManager;

    .line 62
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "tweak"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->TweakName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p0, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 64
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 66
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v4, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v5, 0x208

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 68
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204025c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$1;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 77
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->setContentView(I)V

    .line 79
    const v5, 0x7f05000e

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 80
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a0056

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 81
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    .line 83
    const v5, 0x7f05000d

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 84
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 85
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a3

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 86
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$2;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 91
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$3;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->Cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->TweakName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, Apps:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    const-string v0, ""

    .line 108
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->Cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->TweakName:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    :cond_0
    const-string v5, "\\;"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, appList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 122
    const v5, 0x7f050007

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    .line 124
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 125
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 126
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$4;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 136
    return-void

    .line 116
    :cond_1
    aget-object v5, v2, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsAdd$AppAdapter;->addItem(Ljava/lang/String;)V

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
