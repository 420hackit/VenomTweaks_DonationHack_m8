.class public Lcom/m0narx/tweaks/main;
.super Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;
.source "main.java"

# interfaces
.implements Lcom/m0narx/tweaks/provider/CarouselCallback;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.m0narx.tweaks.main"

.field public static AppTitle:Ljava/lang/String; = null

.field public static final DONATION_DIALOG_ENABLED:Z = true

.field public static final DONATION_DIALOG_SECONDS:I = 0x3

.field private static final MENU_BUGREPORT:I = 0x6e

.field private static final MENU_CHANGE:I = 0x64

.field private static final MENU_FORCE_ENGLISH:I = 0x67

.field private static final MENU_FULLRESTART_PHONE:I = 0x6d

.field public static final MENU_NAVIGATE:I = 0x69

.field private static final MENU_PROFILES:I = 0x6f

.field public static final MENU_REBOOT:I = 0x68

.field public static final MENU_RESET_SETTINGS:I = 0x66

.field private static final MENU_RESTART_PHONE:I = 0x6c

.field private static final MENU_RESTART_SENSE:I = 0x6a

.field private static final MENU_RESTART_SYSUI:I = 0x6b

.field private static final MENU_SETTINGS:I = 0x70

.field public static final ROOT_LAYOUT_ID:I = 0x1

.field private static final SLIDING_MIN_MARGIN:I = 0x19

.field public static final TAG:Ljava/lang/String; = "m0narX_tweaks"

.field public static mActionButton:Lcom/htc/widget/ActionBarItemView; = null

.field public static mActionMenuButton:Lcom/htc/widget/HtcImageButton; = null

.field public static mActionText:Lcom/htc/widget/ActionBarText; = null

.field public static final sdFolder:Ljava/lang/String; = "Venom"

.field public static versionName:Ljava/lang/String;


# instance fields
.field public final SLIDINGMENU_NAVIGATE:I

.field public final SLIDINGMENU_REBOOT:I

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field donation:Lcom/m0narx/tweaks/Donation;

.field private mBugReportItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

.field private mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

.field private mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

.field private mForceEnglish:Ljava/lang/Boolean;

.field private mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mProfilesItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

.field public mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

.field private mSlidingMenuLayout:Landroid/view/View;

.field private mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;-><init>()V

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    .line 110
    iput v1, p0, Lcom/m0narx/tweaks/main;->SLIDINGMENU_NAVIGATE:I

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/main;->SLIDINGMENU_REBOOT:I

    .line 560
    new-instance v0, Lcom/m0narx/tweaks/main$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$1;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method private SetupActionBar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 183
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 184
    .local v0, abe:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0, v7}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 186
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 188
    .local v1, cc:Lcom/htc/widget/ActionBarContainer;
    new-instance v4, Lcom/htc/widget/ActionBarText;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    .line 189
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v5, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 191
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 193
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    .line 194
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v5, 0x7f02003a

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 195
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 199
    const/high16 v4, 0x41f0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 198
    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 200
    .local v3, width:F
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v4, v3

    .line 201
    const/4 v5, -0x2

    .line 200
    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 203
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v4, Lcom/htc/widget/HtcImageButton;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcImageButton;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    .line 204
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    const v5, 0x7f02002e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 206
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    new-instance v5, Lcom/m0narx/tweaks/main$2;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/main$2;-><init>(Lcom/m0narx/tweaks/main;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget-object v4, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mBugReportItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mProfilesItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/main;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    return-void
.end method

.method private setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "link"

    .prologue
    .line 536
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    .line 537
    .local v0, btn:Lcom/htc/widget/HtcImageButton;
    new-instance v1, Lcom/m0narx/tweaks/main$5;

    invoke-direct {v1, p0, p3}, Lcom/m0narx/tweaks/main$5;-><init>(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    return-void
.end method

.method private setLocale(ZZ)V
    .locals 5
    .parameter "useEnglish"
    .parameter "restart"

    .prologue
    const/4 v4, 0x0

    .line 613
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 614
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 615
    .local v0, conf:Landroid/content/res/Configuration;
    if-eqz p1, :cond_1

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 616
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 617
    if-eqz p2, :cond_0

    .line 618
    iput-object v4, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 619
    iput-object v4, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 620
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/m0narx/tweaks/main;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    .line 621
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 623
    :cond_0
    return-void

    .line 615
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0
.end method

.method private setSlidingMenu()V
    .locals 13

    .prologue
    .line 239
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    if-eqz v3, :cond_0

    .line 533
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getSlidingMenu()Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 244
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindWidthRes(I)V

    .line 245
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 246
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeBehind(I)V

    .line 248
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iget-object v4, p0, Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "enable"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    .line 250
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iget-object v4, p0, Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;

    .line 251
    const-string v5, "sensitiy"

    const/16 v6, 0x30

    .line 250
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 253
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    new-instance v4, Lcom/m0narx/tweaks/main$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/main$3;-><init>(Lcom/m0narx/tweaks/main;)V

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setOnOpenListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;)V

    .line 293
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 295
    .local v9, infalInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    .line 296
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    invoke-static {v3}, Lcom/m0narx/framework/HTCStyleUtil;->setHTCListBackground(Landroid/view/View;)V

    .line 298
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    .line 299
    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 298
    check-cast v11, Lcom/htc/widget/HtcExpandableListView;

    .line 300
    .local v11, mListView:Lcom/htc/widget/HtcExpandableListView;
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v3, v11}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenuListView(Lcom/htc/widget/HtcExpandableListView;)V

    .line 302
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;>;"
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/4 v2, -0x1

    .line 308
    const v3, 0x7f0a0502

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 307
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/4 v2, -0x1

    .line 312
    const v3, 0x7f0a0501

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 311
    iput-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 313
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/4 v2, -0x1

    .line 327
    const v3, 0x7f0a0504

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 326
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 331
    const/16 v2, 0x66

    const v3, 0x7f0a0300

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 330
    iput-object v0, p0, Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 332
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mMenuResetSettings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v2, 0x64

    .line 336
    const v3, 0x7f0a01d2

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 335
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 340
    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->CheckableItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v2, 0x67

    .line 341
    const v3, 0x7f0a0500

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    .line 339
    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 342
    .local v0, forceEnglishItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->checked:Z

    .line 343
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 347
    const/16 v3, 0x70

    const v4, 0x7f0a035e

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    .line 346
    invoke-direct/range {v1 .. v6}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 349
    .local v1, settings:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/4 v4, -0x1

    .line 355
    const v5, 0x7f0a0505

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 354
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/4 v4, -0x1

    .line 359
    const v5, 0x7f0a0506

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    const v6, 0x7f0a0507

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 358
    invoke-direct/range {v2 .. v7}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 361
    .local v2, reboot:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6b

    .line 362
    const v6, 0x7f0a0015

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->add(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 363
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6a

    .line 364
    const v6, 0x7f0a0052

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 363
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->add(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 365
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6c

    .line 366
    const v6, 0x7f0a050a

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 365
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->add(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 367
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6d

    .line 368
    const v6, 0x7f0a050b

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 367
    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->add(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 369
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6f

    .line 372
    const v6, 0x7f0a0089

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 373
    const v7, 0x7f0a008a

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 374
    const v8, 0x7f02001d

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 371
    iput-object v3, p0, Lcom/m0narx/tweaks/main;->mProfilesItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 375
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mProfilesItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const/16 v5, 0x6e

    .line 378
    const v6, 0x7f0a01c7

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 379
    const v7, 0x7f0a01c8

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 380
    const v8, 0x7f02001c

    invoke-direct/range {v3 .. v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V

    .line 377
    iput-object v3, p0, Lcom/m0narx/tweaks/main;->mBugReportItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 381
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mBugReportItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v3, v10}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setItems(Ljava/util/ArrayList;)V

    .line 385
    move-object v12, p0

    .line 387
    .local v12, menuSettingsContex:Landroid/content/Context;
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 388
    new-instance v4, Lcom/m0narx/tweaks/main$4;

    invoke-direct {v4, p0, v12}, Lcom/m0narx/tweaks/main$4;-><init>(Lcom/m0narx/tweaks/main;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setOnSlidingMenuItemClickListener(Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;)V

    .line 522
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    const v4, 0x7f060040

    .line 523
    const-string v5, "https://www.facebook.com/venomroms"

    .line 522
    invoke-direct {p0, v3, v4, v5}, Lcom/m0narx/tweaks/main;->setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    const v4, 0x7f060041

    .line 525
    const-string v5, "https://twitter.com/TeamVenomROMs"

    .line 524
    invoke-direct {p0, v3, v4, v5}, Lcom/m0narx/tweaks/main;->setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    const v4, 0x7f060042

    .line 527
    const-string v5, "https://plus.google.com/u/0/communities/113176614847872455791"

    .line 526
    invoke-direct {p0, v3, v4, v5}, Lcom/m0narx/tweaks/main;->setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    const v4, 0x7f060043

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://forum.xda-developers.com/showthread.php?t="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    sget-object v6, Lcom/m0narx/tweaks/fragments/TabAbout;->THREAD_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-direct {p0, v3, v4, v5}, Lcom/m0narx/tweaks/main;->setImageButtonLink(Landroid/view/View;ILjava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/main;->setSlidingMenuLayout(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private updateSlidingMenu(Ljava/lang/String;Z)V
    .locals 3
    .parameter "tab"
    .parameter "isFirstTab"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenuLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    if-eqz v0, :cond_0

    .line 652
    if-eqz p2, :cond_2

    .line 653
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 654
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeBehind(I)V

    .line 660
    :goto_1
    if-nez p1, :cond_0

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 657
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeBehind(I)V

    goto :goto_1
.end method


# virtual methods
.method public isFirstTab()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v0

    .line 224
    .local v0, currenTab:I
    if-eqz v0, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 231
    .end local v0           #currenTab:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #currenTab:I
    :cond_1
    move v1, v2

    .line 224
    goto :goto_0

    .line 227
    .end local v0           #currenTab:I
    :cond_2
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    .line 228
    goto :goto_0
.end method

.method public onCarouselLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, tabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;>;"
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->setSlidingMenu()V

    .line 668
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->clear()V

    .line 669
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingNavigation:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->setItems(Ljava/util/ArrayList;)V

    .line 670
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->refreshMenu()V

    .line 672
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 118
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/main;->requestWindowFeature(I)Z

    .line 120
    invoke-static {p0, v3}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/main;->setTheme(I)V

    .line 122
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    .line 124
    new-instance v1, Lcom/m0narx/tweaks/Donation;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/Donation;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    .line 126
    const-string v1, "tweaks_shared_main"

    .line 127
    const/4 v2, 0x4

    .line 126
    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;

    .line 129
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "force_english"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    .line 130
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    .line 134
    :cond_0
    const-string v1, "ro.product.version"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 136
    sget-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 137
    const-string v1, ""

    sput-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 139
    :cond_1
    sget-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    const-string v2, "Viper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->SetupActionBar()V

    .line 145
    invoke-super {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, viewRoot:Landroid/widget/FrameLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/main;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->setCarousel()V

    .line 153
    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 627
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Reboot;->showDialog(Landroid/content/Context;)V

    .line 628
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 636
    :cond_1
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Misc;->g:Z

    if-nez v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 640
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 643
    :cond_3
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->isFirstTab()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/main;->updateSlidingMenu(Ljava/lang/String;Z)V

    .line 644
    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->isFirstTab()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/main;->updateSlidingMenu(Ljava/lang/String;Z)V

    .line 549
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 553
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->toggle()V

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 607
    invoke-super {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->onPause()V

    .line 609
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 586
    invoke-super {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/app/SlidingActivity;->onResume()V

    .line 588
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 589
    const-string v2, "com.m0narx.tweaks.licensechecker"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 591
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/m0narx/tweaks/Donation;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->isFirstTab()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/Donation;->CheckLicensing(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCarousel()V
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 158
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 159
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 162
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x0

    .line 164
    .local v1, setListeners:Z
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    if-nez v2, :cond_1

    .line 165
    new-instance v2, Lcom/m0narx/tweaks/provider/CarouselAll;

    invoke-direct {v2}, Lcom/m0narx/tweaks/provider/CarouselAll;-><init>()V

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 170
    if-eqz v1, :cond_2

    .line 171
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->setCallback(Lcom/m0narx/tweaks/provider/CarouselCallback;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 176
    .restart local v0       #ft:Landroid/app/FragmentTransaction;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 177
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 180
    return-void
.end method
