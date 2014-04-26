.class public Lcom/m0narx/tweaks/picker/AppPicker;
.super Landroid/app/Activity;
.source "AppPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;,
        Lcom/m0narx/tweaks/picker/AppPicker$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Lcom/m0narx/tweaks/picker/AppPicker$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/picker/AppPicker$1;-><init>(Lcom/m0narx/tweaks/picker/AppPicker;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/AppPicker;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/picker/AppPicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/picker/AppPicker;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public GetActivityIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "Package"
    .parameter "Activity"

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, Component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 141
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetAllIntents()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 118
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 121
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 122
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 123
    .local v2, ListOfIntents:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 131
    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 132
    return-object v2

    .line 124
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 125
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 128
    .local v1, Label:Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, Element:Ljava/lang/String;
    aput-object v0, v2, v3

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public LoadData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    new-instance v4, Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;-><init>(Lcom/m0narx/tweaks/picker/AppPicker;)V

    iput-object v4, p0, Lcom/m0narx/tweaks/picker/AppPicker;->mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    .line 108
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->GetAllIntents()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, IntentList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/m0narx/tweaks/picker/AppPicker;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void

    .line 110
    :cond_0
    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, elements:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, Name:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/picker/AppPicker;->mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    aget-object v5, v2, v6

    invoke-virtual {v4, v5, v1}, Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 211
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->Cr:Landroid/content/ContentResolver;

    .line 49
    const v1, 0x7f0a00a7

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 51
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/AppPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->inflater:Landroid/view/LayoutInflater;

    .line 52
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/AppPicker;->setContentView(I)V

    .line 54
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/AppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 55
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 56
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800a3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 57
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/picker/AppPicker$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/picker/AppPicker$2;-><init>(Lcom/m0narx/tweaks/picker/AppPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/AppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    .line 63
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 68
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/m0narx/tweaks/picker/AppPicker$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/picker/AppPicker$3;-><init>(Lcom/m0narx/tweaks/picker/AppPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 86
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 88
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 91
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/AppPicker;->LoadData()V

    .line 97
    return-void
.end method
