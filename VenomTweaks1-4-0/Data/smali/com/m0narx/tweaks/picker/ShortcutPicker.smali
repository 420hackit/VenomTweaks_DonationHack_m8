.class public Lcom/m0narx/tweaks/picker/ShortcutPicker;
.super Landroid/app/Activity;
.source "ShortcutPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;,
        Lcom/m0narx/tweaks/picker/ShortcutPicker$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_SHORTCUT:I = 0x1


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;

.field private mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    new-instance v0, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;-><init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public GetActivityIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "Package"
    .parameter "Activity"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, Component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 183
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetAllIntents()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 159
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, mainIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 161
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;

    .line 162
    iget-object v7, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 164
    .local v2, ListOfIntents:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 174
    return-object v2

    .line 165
    :cond_0
    iget-object v7, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    .local v1, Label:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 169
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, Element:Ljava/lang/String;
    aput-object v0, v2, v3

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public LoadData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    new-instance v4, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;-><init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V

    iput-object v4, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mAdapter:Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;

    .line 148
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->GetAllIntents()[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, IntentList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    return-void

    .line 150
    :cond_0
    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
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

    .line 152
    .local v1, Name:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mAdapter:Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;

    aget-object v5, v2, v6

    invoke-virtual {v4, v5, v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 109
    if-eq p2, v4, :cond_0

    .line 131
    :goto_0
    return-void

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, str:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, resultData:Landroid/content/Intent;
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    invoke-virtual {p0, v4, v0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->setResult(ILandroid/content/Intent;)V

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->finish()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->Cr:Landroid/content/ContentResolver;

    .line 60
    const v1, 0x7f0a00a7

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 59
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 62
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->inflater:Landroid/view/LayoutInflater;

    .line 63
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->setContentView(I)V

    .line 65
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 66
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 67
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800a3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 68
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/picker/ShortcutPicker$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker$2;-><init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    .line 77
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/m0narx/tweaks/picker/ShortcutPicker$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker$3;-><init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 98
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 100
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 103
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->LoadData()V

    .line 136
    return-void
.end method
