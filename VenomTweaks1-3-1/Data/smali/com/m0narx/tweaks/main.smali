.class public Lcom/m0narx/tweaks/main;
.super Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivity;
.source "main.java"

# interfaces
.implements Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;,
        Lcom/m0narx/tweaks/main$TabChangedListener;,
        Lcom/m0narx/tweaks/main$ToSort;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.m0narx.tweaks.main"

.field public static AppTitle:Ljava/lang/String; = null

.field public static final DONATION_APP_NAME:[Ljava/lang/String; = null

.field public static DONATION_APP_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DONATION_APP_PCKG:[Ljava/lang/String; = null

.field public static final DONATION_DIALOG_ENABLED:Z = true

.field public static final DONATION_DIALOG_SECONDS:I = 0x3

.field public static final DONATION_M7_APP_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DONATION_M8_APP_NAME:[Ljava/lang/String; = null

.field public static final DONATION_M8_APP_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DONATION_M8_APP_PCKG:[Ljava/lang/String; = null

.field public static DeviceId:Ljava/lang/String; = null

.field private static final MENU_CHANGE:I = 0x64

.field private static final MENU_FORCE_ENGLISH:I = 0x65

.field public static final MENU_RESET_SETTINGS:I = 0x66

.field private static final MENU_SENSEREBOOT:I = 0x67

.field private static final MENU_SYSTEMUIREBOOT:I = 0x68

.field private static final SLIDING_MIN_MARGIN:I = 0x19

.field public static final TAG:Ljava/lang/String; = "m0narX_tweaks"

.field public static mActionButton:Lcom/htc/widget/ActionBarItemView; = null

.field public static mActionMenuButton:Lcom/htc/widget/ActionBarItemView; = null

.field public static mActionText:Lcom/htc/widget/ActionBarText; = null

.field public static final sdFolder:Ljava/lang/String; = "Venom"

.field public static showed:Z

.field public static slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field public static versionName:Ljava/lang/String;


# instance fields
.field public final REBOOT_PHONE:I

.field public final REBOOT_SENSE:I

.field public final REBOOT_STATUSBAR:I

.field public final REBOOT_SYSTEM:I

.field public final SLIDINGMENU_NAVIGATE:I

.field public final SLIDINGMENU_REBOOT:I

.field _groupChilds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field _groupHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field public dbh:Lcom/m0narx/tweaks/provider/DB;

.field private donation:Lcom/htc/widget/HtcAlertDialog;

.field private forceEnglish:Ljava/lang/Boolean;

.field private handler:Landroid/os/Handler;

.field licenceIntent:Landroid/content/Intent;

.field private mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

.field private mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

.field private mContext:Landroid/content/Context;

.field private mResetMenu:Landroid/view/MenuItem;

.field private mTabChangedListener:Lcom/m0narx/tweaks/main$TabChangedListener;

.field pm:Landroid/content/pm/PackageManager;

.field res:Landroid/content/res/Resources;

.field private final rootId:I

.field slidingMenulayout:Landroid/view/View;

.field private timer:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.m0narx.ViperOnem8ProBronze"

    aput-object v1, v0, v3

    const-string v1, "com.m0narx.ViperOnem8ProSilver"

    aput-object v1, v0, v4

    const-string v1, "com.m0narx.ViperOnem8ProGold"

    aput-object v1, v0, v5

    const-string v1, "com.m0narx.ViperOnem8ProBlack"

    aput-object v1, v0, v6

    const-string v1, "com.m0narx.ViperOneProPlatin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.m0narx.ViperOneProDiamond"

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_PCKG:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard  2$"

    aput-object v1, v0, v3

    const-string v1, "Silver 5$"

    aput-object v1, v0, v4

    const-string v1, "Gold 10$"

    aput-object v1, v0, v5

    const-string v1, "Black 20$"

    aput-object v1, v0, v6

    const-string v1, "Platinum 50$"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Diamond 100$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAME:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.m0narx.ViperOneProBronze"

    aput-object v1, v0, v3

    const-string v1, "com.m0narx.ViperOneProSilver"

    aput-object v1, v0, v4

    const-string v1, "com.m0narx.ViperOneProGold"

    aput-object v1, v0, v5

    const-string v1, "com.m0narx.ViperOneProBlack"

    aput-object v1, v0, v6

    const-string v1, "com.m0narx.ViperOneProPlatin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.m0narx.ViperOneProDiamond"

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_APP_PCKG:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard  2$"

    aput-object v1, v0, v3

    const-string v1, "Silver 5$"

    aput-object v1, v0, v4

    const-string v1, "Gold 10$"

    aput-object v1, v0, v5

    const-string v1, "Black 20$"

    aput-object v1, v0, v6

    const-string v1, "Platinum 50$"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Diamond 100$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_APP_NAME:[Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    .line 124
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProDiamond"

    .line 125
    const-string v2, "8F1AD3F388B5D3DD2EB07FFF7C20380A"

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProPlatin"

    .line 127
    const-string v2, "D5A000BFFA9771A82F16F0A3FA9684C4"

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProBlack"

    .line 129
    const-string v2, "CF548A3E7BFCB7B774FF88CE2856852B"

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProGold"

    .line 131
    const-string v2, "D010D58EF06B722AD514578A71C3B4E6"

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProSilver"

    .line 133
    const-string v2, "86DA1ECFAEEA27C6928CEF79EA8E808F"

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProBronze"

    .line 135
    const-string v2, "FA6CCFB91CDAC8710AB7419F4DA9F963"

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBeta"

    .line 137
    const-string v2, "CA8BE3678E05F0A6A8C6B41E7C40A8F3"

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProFree"

    .line 139
    const-string v2, "EE3E2452DFCD4CA0F8D112D4941CA38F"

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    .line 144
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProDiamond"

    .line 145
    const-string v2, "8F1AD3F388B5D3DD2EB07FFF7C20380A"

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProPlatin"

    .line 147
    const-string v2, "D5A000BFFA9771A82F16F0A3FA9684C4"

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBlack"

    .line 149
    const-string v2, "0ABFD65260B1B1CDA60C505F2F1F0A00"

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProGold"

    .line 151
    const-string v2, "EE76214CB9415D6154010786EFB6D707"

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProSilver"

    .line 153
    const-string v2, "4EC57300A31E897431255BB41E2026C6"

    .line 152
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBronze"

    .line 155
    const-string v2, "EBFE2131CC03F4D8FB5418D4BF3A4AE0"

    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBeta"

    .line 157
    const-string v2, "CA8BE3678E05F0A6A8C6B41E7C40A8F3"

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProFree"

    .line 159
    const-string v2, "EE3E2452DFCD4CA0F8D112D4941CA38F"

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;

    .line 165
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 167
    sput-boolean v3, Lcom/m0narx/tweaks/main;->showed:Z

    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivity;-><init>()V

    .line 85
    iput v1, p0, Lcom/m0narx/tweaks/main;->REBOOT_PHONE:I

    .line 86
    iput v2, p0, Lcom/m0narx/tweaks/main;->REBOOT_SYSTEM:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/main;->REBOOT_STATUSBAR:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/main;->REBOOT_SENSE:I

    .line 97
    iput v2, p0, Lcom/m0narx/tweaks/main;->rootId:I

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    .line 190
    iput v1, p0, Lcom/m0narx/tweaks/main;->SLIDINGMENU_NAVIGATE:I

    .line 191
    iput v2, p0, Lcom/m0narx/tweaks/main;->SLIDINGMENU_REBOOT:I

    .line 399
    new-instance v0, Lcom/m0narx/tweaks/main$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$1;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v0, Lcom/m0narx/tweaks/main$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$2;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->timer:Ljava/lang/Runnable;

    .line 581
    new-instance v0, Lcom/m0narx/tweaks/main$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/main$3;-><init>(Lcom/m0narx/tweaks/main;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->handler:Landroid/os/Handler;

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->_groupHeaders:Ljava/util/List;

    .line 1152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/main;->_groupChilds:Ljava/util/HashMap;

    .line 83
    return-void
.end method

.method private CheckLicensing()V
    .locals 0
    
    return-void
.end method

.method private IsAuthorizedProKey(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 424
    :try_start_0
    iget-object v5, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 426
    iget-object v5, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 427
    .local v3, p:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 429
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 431
    .local v2, md5:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "mnt/asec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    const-string v5, "m0narX_tweaks"

    .line 433
    const-string v7, "Pro key installed to mnt/asec, pro key has to be legit. No need to check md5 sum"

    .line 432
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v6

    .line 453
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return v5

    .line 439
    .restart local v2       #md5:Ljava/lang/String;
    .restart local v3       #p:Landroid/content/pm/PackageInfo;
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/m0narx/tweaks/main;->calculateMD5(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 444
    if-eqz v2, :cond_1

    .line 445
    :try_start_2
    sget-object v5, Lcom/m0narx/tweaks/main;->DONATION_APP_NAMES:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 446
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 446
    if-nez v5, :cond_1

    move v5, v7

    .line 447
    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    move v5, v6

    .line 441
    goto :goto_0

    .line 449
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    .end local v4           #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 450
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v5, v6

    .line 453
    goto :goto_0
.end method

.method public static IsM8()Z
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    const-string v1, "htc_m8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    const-string v1, "htc_m8whl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    const-string v1, "htc_m8wl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ResetPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    const-string v2, "slidingMenu"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 364
    .local v0, sPref:Landroid/content/SharedPreferences;
    const-string v1, "version"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    const-string v2, "carousel.tasks"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    :cond_0
    return-void
.end method

.method private SetupActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 201
    .local v0, abe:Lcom/htc/widget/ActionBarExt;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 203
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 205
    .local v1, cc:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    .line 206
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v3, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 210
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    .line 211
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 212
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 215
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    .line 216
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 217
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    const/16 v3, -0x14

    invoke-virtual {v2, v3, v5, v5, v5}, Lcom/htc/widget/ActionBarItemView;->setPadding(IIII)V

    .line 218
    sget-object v2, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/main;->createUnauthorizedDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/main;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/main;->updateSlidingMenu(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->setResetVisibility()V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    return-object v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/main;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$8(Lcom/m0narx/tweaks/main;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    return-void
.end method

.method private calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .parameter "file"

    .prologue
    const/4 v9, 0x0

    .line 500
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    .local v2, digest:Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 517
    .local v1, buffer:[B
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-gtz v7, :cond_0

    .line 520
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 521
    .local v5, md5sum:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 522
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, output:Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x20

    const/16 v11, 0x30

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 531
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 534
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v1           #buffer:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #md5sum:[B
    .end local v6           #output:Ljava/lang/String;
    .end local v7           #read:I
    :goto_1
    return-object v8

    .line 501
    :catch_0
    move-exception v3

    .line 502
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "m0narX_tweaks"

    const-string v10, "Exception while getting Digest"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 503
    goto :goto_1

    .line 509
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #digest:Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 510
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v8, "m0narX_tweaks"

    const-string v10, "Exception while getting FileInputStream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 511
    goto :goto_1

    .line 518
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #buffer:[B
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #read:I
    :cond_0
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 526
    .end local v7           #read:I
    :catch_2
    move-exception v3

    .line 527
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "m0narX_tweaks"

    const-string v10, "IOException"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 531
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v8, v9

    .line 528
    goto :goto_1

    .line 532
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bigInt:Ljava/math/BigInteger;
    .restart local v5       #md5sum:[B
    .restart local v6       #output:Ljava/lang/String;
    .restart local v7       #read:I
    :catch_3
    move-exception v3

    .line 533
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "m0narX_tweaks"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 534
    goto :goto_1

    .line 532
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v5           #md5sum:[B
    .end local v6           #output:Ljava/lang/String;
    .end local v7           #read:I
    :catch_4
    move-exception v3

    .line 533
    const-string v8, "m0narX_tweaks"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 534
    goto :goto_1

    .line 529
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 531
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 536
    throw v8

    .line 532
    :catch_5
    move-exception v3

    .line 533
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "m0narX_tweaks"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 534
    goto :goto_1
.end method

.method private createDonationDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 647
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 649
    const v1, 0x7f0a01a7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 650
    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 651
    const v1, 0x7f0a01a6

    .line 652
    new-instance v2, Lcom/m0narx/tweaks/main$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/main$7;-><init>(Lcom/m0narx/tweaks/main;)V

    .line 651
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->getDonationTimeOut()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    new-instance v2, Lcom/m0narx/tweaks/main$8;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/main$8;-><init>(Lcom/m0narx/tweaks/main;)V

    .line 658
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 647
    iput-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    .line 667
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 668
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 671
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->timer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 672
    return-void
.end method

.method private createNavigateGroup(Landroid/view/View;)V
    .locals 14
    .parameter "slidingMenulayout"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1189
    iget-object v8, p0, Lcom/m0narx/tweaks/main;->_groupHeaders:Ljava/util/List;

    iget-object v9, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v10, 0x7f0a035b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v8, p0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    .line 1192
    const-string v9, "carousel.tasks"

    .line 1191
    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1194
    .local v5, sPref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 1196
    .local v0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v6, toSort:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/main$ToSort;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1212
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1215
    .local v2, navigate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1218
    iget-object v8, p0, Lcom/m0narx/tweaks/main;->_groupChilds:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    return-void

    .line 1198
    .end local v2           #navigate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1199
    .local v4, s:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, key:[Ljava/lang/String;
    array-length v8, v1

    const/4 v10, 0x2

    if-lt v8, v10, :cond_0

    .line 1204
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1206
    .local v7, value:[Ljava/lang/String;
    aget-object v8, v7, v13

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1209
    new-instance v8, Lcom/m0narx/tweaks/main$ToSort;

    aget-object v10, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v11, v1, v13

    invoke-direct {v8, p0, v10, v11}, Lcom/m0narx/tweaks/main$ToSort;-><init>(Lcom/m0narx/tweaks/main;ILjava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1215
    .end local v1           #key:[Ljava/lang/String;
    .end local v4           #s:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #value:[Ljava/lang/String;
    .restart local v2       #navigate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/m0narx/tweaks/main$ToSort;

    .line 1216
    .local v3, s:Lcom/m0narx/tweaks/main$ToSort;
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #getter for: Lcom/m0narx/tweaks/main$ToSort;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/m0narx/tweaks/main$ToSort;->access$1(Lcom/m0narx/tweaks/main$ToSort;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private createRebootGroup(Landroid/view/View;)V
    .locals 5
    .parameter "slidingMenulayout"

    .prologue
    const/4 v4, 0x1

    .line 1174
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->_groupHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a035c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .local v0, reboot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->_groupChilds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    return-void
.end method

.method private createUnauthorizedDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "proKeyPackage"

    .prologue
    const/4 v5, 0x0

    .line 542
    move-object v0, p1

    .line 544
    .local v0, pkg:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    const-string v3, "Your ProKey is not legit!"

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 547
    const-string v3, "The installed version of your pro key is an unauthorized version. Please purchase and install a legit one from the google playstore"

    .line 546
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 548
    const-string v3, "Go to google play"

    .line 549
    new-instance v4, Lcom/m0narx/tweaks/main$5;

    invoke-direct {v4, p0, v0}, Lcom/m0narx/tweaks/main$5;-><init>(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 563
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 565
    .local v1, unauthorized:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 566
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 568
    return-void
.end method

.method private isLicenceCheckingSupported(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 459
    invoke-static {}, Lcom/m0narx/tweaks/main;->IsM8()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v2

    .line 464
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 466
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    move v2, v3

    .line 472
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private isPackageExists(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, targetPackages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 493
    const-string v1, ""

    :cond_0
    :goto_1
    return-object v1

    .line 479
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    .local v1, pckg:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 483
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 484
    .local v0, p:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    .line 485
    const-string v1, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 488
    .end local v0           #p:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setLocale(ZZ)V
    .locals 4
    .parameter "useEnglish"
    .parameter "restart"

    .prologue
    .line 712
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 713
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 714
    .local v0, conf:Landroid/content/res/Configuration;
    if-eqz p1, :cond_1

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 715
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 716
    if-eqz p2, :cond_0

    .line 717
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/m0narx/tweaks/main;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    .line 718
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 720
    :cond_0
    return-void

    .line 714
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0
.end method

.method private setResetVisibility()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 705
    .local v0, tabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mResetMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mResetMenu:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 706
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 709
    :cond_0
    return-void
.end method

.method private setSlidingMenu()V
    .locals 19

    .prologue
    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/main;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v16

    sput-object v16, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 887
    sget-object v16, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v17, 0xfa

    invoke-virtual/range {v16 .. v17}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 890
    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 889
    check-cast v5, Landroid/view/LayoutInflater;

    .line 892
    .local v5, infalInflater:Landroid/view/LayoutInflater;
    const v16, 0x7f03001d

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f050040

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 896
    .local v13, viewTitle:Landroid/view/View;
    const v16, 0x7f050042

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 897
    sget-object v17, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f050044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 901
    .local v11, viewFollow:Landroid/view/View;
    new-instance v16, Lcom/m0narx/tweaks/main$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$9;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    new-instance v16, Lcom/m0narx/tweaks/main$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$10;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    const v16, 0x7f050043

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 938
    .local v9, settings:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "slidingMenu"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 940
    .local v8, sPref:Landroid/content/SharedPreferences;
    sget-object v16, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const-string v17, "enable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 941
    sget-object v16, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const-string v17, "sensitiy"

    const/16 v18, 0x30

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 944
    move-object/from16 v6, p0

    .line 946
    .local v6, menuSettingsContex:Landroid/content/Context;
    new-instance v16, Lcom/m0narx/tweaks/main$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v6}, Lcom/m0narx/tweaks/main$11;-><init>(Lcom/m0narx/tweaks/main;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f050047

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1016
    .local v7, reorder:Landroid/view/View;
    new-instance v16, Lcom/m0narx/tweaks/main$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$12;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1027
    const v17, 0x7f050048

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1030
    .local v14, viewforceEnglish:Landroid/view/View;
    const v16, 0x7f05004a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1029
    check-cast v2, Landroid/widget/CheckBox;

    .line 1031
    .local v2, cBoxEnglish:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1033
    new-instance v16, Lcom/m0narx/tweaks/main$13;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$13;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f050045

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1048
    .local v12, viewReset:Landroid/view/View;
    new-instance v16, Lcom/m0narx/tweaks/main$14;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$14;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f05004c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1063
    .local v15, visitUs:Landroid/view/View;
    const v16, 0x7f05004d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1064
    .local v3, fb:Landroid/widget/ImageView;
    new-instance v16, Lcom/m0narx/tweaks/main$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$15;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    const v16, 0x7f05004e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1078
    .local v10, twitter:Landroid/widget/ImageView;
    new-instance v16, Lcom/m0narx/tweaks/main$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$16;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    const v16, 0x7f05004f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1091
    .local v4, gplus:Landroid/widget/ImageView;
    new-instance v16, Lcom/m0narx/tweaks/main$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main$17;-><init>(Lcom/m0narx/tweaks/main;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/main;->setSlidingMenuGroups(Landroid/view/View;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/main;->setBehindContentView(Landroid/view/View;)V

    .line 1106
    return-void
.end method

.method private setSlidingMenuGroups(Landroid/view/View;)V
    .locals 4
    .parameter "slidingMenulayout"

    .prologue
    .line 1156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->_groupHeaders:Ljava/util/List;

    .line 1157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->_groupChilds:Ljava/util/HashMap;

    .line 1159
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/main;->createNavigateGroup(Landroid/view/View;)V

    .line 1161
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/main;->createRebootGroup(Landroid/view/View;)V

    .line 1164
    const v2, 0x7f05004b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1163
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 1166
    .local v0, exListView:Landroid/widget/ExpandableListView;
    new-instance v1, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    .line 1167
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->_groupHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/m0narx/tweaks/main;->_groupChilds:Ljava/util/HashMap;

    .line 1166
    invoke-direct {v1, p0, p0, v2, v3}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;-><init>(Lcom/m0narx/tweaks/main;Landroid/app/Activity;Ljava/util/List;Ljava/util/HashMap;)V

    .line 1168
    .local v1, mExAdapter:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1170
    return-void
.end method

.method public static showSelectDonationApp(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 607
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f020010

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 609
    const v3, 0x7f0a01a7

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 612
    sget-object v2, Lcom/m0narx/tweaks/main;->DONATION_APP_NAME:[Ljava/lang/String;

    .line 614
    .local v2, items:[Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/main;->IsM8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    sget-object v2, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAME:[Ljava/lang/String;

    .line 617
    :cond_0
    new-instance v3, Lcom/m0narx/tweaks/main$6;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/main$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 640
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 641
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 644
    return-void
.end method

.method private updateSlidingMenu(Ljava/lang/String;)V
    .locals 6
    .parameter "tab"

    .prologue
    const/4 v5, 0x0

    .line 1110
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->slidingMenulayout:Landroid/view/View;

    const v4, 0x7f050045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1112
    .local v2, viewTitle:Landroid/view/View;
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    const v3, 0x7f050046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1117
    check-cast v0, Landroid/widget/TextView;

    .line 1120
    .local v0, menuReset:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    const v4, 0x7f0a035d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, str:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/main;->requestWindowFeature(I)Z

    .line 228
    invoke-static {p0, v4}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/main;->setTheme(I)V

    .line 230
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->res:Landroid/content/res/Resources;

    .line 232
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->mContext:Landroid/content/Context;

    .line 233
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->ResetPreferences()V

    .line 234
    const-string v2, "ro.product.device"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    .line 236
    sget-object v2, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 237
    const-string v2, "ro.build.product"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    .line 239
    :cond_0
    sget-object v2, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 240
    const-string v2, "venom.hub.device"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/m0narx/tweaks/main;->DeviceId:Ljava/lang/String;

    .line 242
    :cond_1
    invoke-static {}, Lcom/m0narx/tweaks/main;->IsM8()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    sget-object v2, Lcom/m0narx/tweaks/main;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    sput-object v2, Lcom/m0narx/tweaks/main;->DONATION_APP_NAMES:Ljava/util/HashMap;

    .line 248
    :goto_0
    new-instance v2, Lcom/m0narx/tweaks/provider/DB;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    .line 249
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/provider/DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/provider/DB;->CreateTblIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 252
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    const-string v5, "force_english"

    invoke-virtual {v2, v0, v5}, Lcom/m0narx/tweaks/provider/DB;->getIntSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 255
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/main;->pm:Landroid/content/pm/PackageManager;

    .line 261
    const-string v2, "ro.product.version"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 262
    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 263
    const-string v2, ""

    sput-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 265
    :cond_3
    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    const-string v4, "Viper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 269
    :cond_4
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->SetupActionBar()V

    .line 271
    invoke-super {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    .local v1, viewRoot:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 275
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/main;->setContentView(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->setCarousel()V

    .line 279
    return-void

    .line 245
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #viewRoot:Landroid/widget/FrameLayout;
    :cond_5
    sget-object v2, Lcom/m0narx/tweaks/main;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    sput-object v2, Lcom/m0narx/tweaks/main;->DONATION_APP_NAMES:Ljava/util/HashMap;

    goto :goto_0

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    move v2, v4

    .line 252
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 291
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 292
    sget-object v1, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 298
    sget-object v1, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->finish()V

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadedDone()V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->setSlidingMenu()V

    .line 881
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivity;->onPause()V

    .line 699
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 700
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 676
    invoke-super {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivity;->onResume()V

    .line 678
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 679
    const-string v2, "com.m0narx.tweaks.licensechecker"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/main;->setLocale(ZZ)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    :try_start_0
    invoke-direct {p0}, Lcom/m0narx/tweaks/main;->CheckLicensing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_1
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCarousel()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 379
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 380
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 383
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    if-nez v1, :cond_1

    .line 384
    new-instance v1, Lcom/m0narx/tweaks/provider/CarouselAll;

    invoke-direct {v1}, Lcom/m0narx/tweaks/provider/CarouselAll;-><init>()V

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 385
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mTabChangedListener:Lcom/m0narx/tweaks/main$TabChangedListener;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/provider/baseCarousel;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarouselAll:Lcom/m0narx/tweaks/provider/baseCarousel;

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    .line 389
    new-instance v1, Lcom/m0narx/tweaks/main$TabChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/m0narx/tweaks/main$TabChangedListener;-><init>(Lcom/m0narx/tweaks/main;Lcom/m0narx/tweaks/main$TabChangedListener;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/main;->mTabChangedListener:Lcom/m0narx/tweaks/main$TabChangedListener;

    .line 391
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mTabChangedListener:Lcom/m0narx/tweaks/main$TabChangedListener;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/provider/baseCarousel;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 393
    iget-object v1, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v1, p0}, Lcom/m0narx/tweaks/provider/baseCarousel;->setCarouselLoadedCallback(Lcom/m0narx/tweaks/provider/CarouselLoadedCallback;)V

    .line 394
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 395
    .restart local v0       #ft:Landroid/app/FragmentTransaction;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 396
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 397
    return-void
.end method
