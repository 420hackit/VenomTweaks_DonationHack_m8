.class public Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;
.super Landroid/app/Activity;
.source "QuickLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

.field private static final PICKER_ADDAPP:I


# instance fields
.field private AppList:Lcom/htc/widget/HtcReorderListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field protected mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)Lcom/htc/widget/HtcReorderListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 264
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 276
    :goto_0
    return-void

    .line 265
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "package"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 269
    .local v2, appInfo:Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, Label:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    .local v0, Icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v0           #Icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #Label:Ljava/lang/String;
    .end local v2           #appInfo:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->Cr:Landroid/content/ContentResolver;

    .line 62
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    .line 64
    const v9, 0x7f0a01a1

    invoke-static {p0, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v3

    .line 65
    .local v3, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 67
    new-instance v8, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v8, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v8, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v9, 0x208

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 69
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x204025c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$1;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v3, v8}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 78
    const v9, 0x7f03000c

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->setContentView(I)V

    .line 80
    const v9, 0x7f05000e

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 81
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a0056

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 82
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    .line 84
    const v9, 0x7f05000d

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 85
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a001d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 86
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a3

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 87
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a7

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 92
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicklauncher"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, Apps:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const-string v0, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    .line 115
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicklauncher"

    const-string v11, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :cond_0
    const-string v9, "\\|"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, appList:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v9, v6

    if-lt v7, v9, :cond_1

    .line 135
    const v9, 0x7f050007

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcReorderListView;

    iput-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    .line 136
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    const v10, 0x7f05000f

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 137
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    .line 139
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setVisibility(I)V

    .line 141
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$5;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 169
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    invoke-virtual {v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    .line 170
    return-void

    .line 123
    :cond_1
    aget-object v9, v6, v7

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, app:[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 126
    :try_start_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    new-instance v10, Landroid/content/ComponentName;

    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 127
    .local v5, appInfo:Landroid/content/pm/ActivityInfo;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, Label:Ljava/lang/String;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v9, v10, v11, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #Icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #Label:Ljava/lang/String;
    .end local v5           #appInfo:Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v9

    goto :goto_1
.end method
