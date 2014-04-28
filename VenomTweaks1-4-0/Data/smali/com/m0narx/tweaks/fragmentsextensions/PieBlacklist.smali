.class public Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;
.super Landroid/app/Activity;
.source "PieBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$ViewHolder;
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

.field protected mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 229
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    const-string v1, "package"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;->addItem(Ljava/lang/String;)V

    goto :goto_0

    .line 230
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

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->Cr:Landroid/content/ContentResolver;

    .line 57
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->pm:Landroid/content/pm/PackageManager;

    .line 59
    const v5, 0x7f0a0274

    invoke-static {p0, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 60
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 62
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v4, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v5, 0x208

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 64
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204025c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$1;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 73
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->setContentView(I)V

    .line 75
    const v5, 0x7f06000d

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 76
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a0056

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 77
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    .line 79
    const v5, 0x7f06000c

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 80
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 81
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a3

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 82
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$2;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 87
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->Cr:Landroid/content/ContentResolver;

    const-string v6, "BlacklistPie"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, Apps:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const-string v0, ""

    .line 105
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->Cr:Landroid/content/ContentResolver;

    const-string v6, "BlacklistPie"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    :cond_0
    const-string v5, "\\;"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, appList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 119
    const v5, 0x7f060006

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    .line 121
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 123
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 125
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$4;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;->notifyDataSetChanged()V

    .line 133
    return-void

    .line 113
    :cond_1
    aget-object v5, v2, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;->addItem(Ljava/lang/String;)V

    .line 112
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
