.class public Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;
.super Landroid/app/Activity;
.source "PulldownGestures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$ViewHolder;
    }
.end annotation


# static fields
.field private static final REQUEST_NEW_GESTURE:I = 0x1

.field private static final REQUEST_NEW_GESTURE_APP:I = 0x2

.field private static destination:Ljava/lang/String;

.field private static mStoreFile:Ljava/io/File;

.field private static sStore:Landroid/gesture/GestureLibrary;


# instance fields
.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private GestureList:Lcom/htc/widget/HtcListView;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

.field private mContext:Landroid/content/Context;

.field private mPathColor:I

.field private mThumbnailInset:I

.field private mThumbnailSize:I

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "/data/system/gestures"

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->destination:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->chooseActionDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method public static getStore()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method private loadGestures()V
    .locals 11

    .prologue
    .line 219
    new-instance v5, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    iput-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    .line 221
    sget-object v5, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    sget-object v5, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 240
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    return-void

    .line 222
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, entry:Ljava/lang/String;
    sget-object v6, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v6, v1}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Gesture;

    .line 226
    .local v2, gesture:Landroid/gesture/Gesture;
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, items:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v4, v3, v7

    .line 230
    .local v4, name:Ljava/lang/String;
    iget v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mThumbnailSize:I

    .line 231
    iget v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mThumbnailSize:I

    iget v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mThumbnailInset:I

    iget v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mPathColor:I

    .line 230
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/gesture/Gesture;->toBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-virtual {v7, v1, v4, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static saveGestureFile(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mStoreFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    const-string v1, ";chmod 666 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 245
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->loadGestures()V

    goto :goto_0

    .line 252
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .line 253
    const-class v1, Lcom/m0narx/tweaks/picker/PulldownGesturesAdd;

    .line 252
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->Cr:Landroid/content/ContentResolver;

    .line 86
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->pm:Landroid/content/pm/PackageManager;

    .line 88
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mContext:Landroid/content/Context;

    .line 90
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/gestures"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mStoreFile:Ljava/io/File;

    .line 93
    const v3, 0x7f0a02f4

    .line 92
    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 94
    .local v0, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 96
    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v3, 0x208

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 98
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x204025c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 150
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->setContentView(I)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cp -f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->destination:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mStoreFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    const-string v4, ";chmod 666 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mStoreFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    sget-object v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    if-nez v3, :cond_0

    .line 157
    sget-object v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mStoreFile:Ljava/io/File;

    invoke-static {v3}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v3

    sput-object v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->sStore:Landroid/gesture/GestureLibrary;

    .line 160
    :cond_0
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 161
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a02f8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 162
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    .line 164
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 165
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 166
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 167
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$2;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 175
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mPathColor:I

    .line 188
    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 187
    iput v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mThumbnailInset:I

    .line 190
    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 189
    iput v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mThumbnailSize:I

    .line 192
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    .line 194
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 195
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 196
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 198
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->loadGestures()V

    .line 199
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->GestureList:Lcom/htc/widget/HtcListView;

    .line 202
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragmentsextensions/PulldownGestures$GestureAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method
