.class public Lcom/m0narx/tweaks/picker/ThemePicker;
.super Landroid/app/Activity;
.source "ThemePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;,
        Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Lcom/m0narx/tweaks/picker/ThemePicker$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/picker/ThemePicker$1;-><init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/picker/ThemePicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/picker/ThemePicker;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 8

    .prologue
    .line 113
    new-instance v3, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;-><init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->mAdapter:Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

    .line 114
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    iget-object v4, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemes(Lcom/m0narx/tweaks/widgets/themeHelper$element;)Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    .local v2, themes:Ljava/util/List;,"Ljava/util/List<Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    .line 117
    .local v1, theme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->mAdapter:Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

    iget-object v4, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    iget-object v7, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->addItem(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->Cr:Landroid/content/ContentResolver;

    .line 49
    new-instance v2, Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    .line 52
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    const v4, 0x7f0a0013

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, title:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 55
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 57
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/picker/ThemePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->inflater:Landroid/view/LayoutInflater;

    .line 58
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/picker/ThemePicker;->setContentView(I)V

    .line 60
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/picker/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 61
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 62
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x20800a3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 63
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/m0narx/tweaks/picker/ThemePicker$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/picker/ThemePicker$2;-><init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/picker/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    .line 68
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 71
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 74
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/m0narx/tweaks/picker/ThemePicker$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/picker/ThemePicker$3;-><init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 92
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v3, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 94
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 97
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker;->LoadData()V

    .line 103
    return-void
.end method
