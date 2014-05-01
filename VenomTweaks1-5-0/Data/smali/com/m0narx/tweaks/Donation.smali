.class public Lcom/m0narx/tweaks/Donation;
.super Ljava/lang/Object;
.source "Donation.java"


# static fields
.field public static final DONATION_APP_NAME:[Ljava/lang/String;

.field public static DONATION_APP_NAMES:Ljava/util/HashMap;
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

.field public static final DONATION_APP_PCKG:[Ljava/lang/String;

.field public static final DONATION_M7_APP_NAMES:Ljava/util/HashMap;
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

.field public static final DONATION_M8_APP_NAME:[Ljava/lang/String;

.field public static final DONATION_M8_APP_NAMES:Ljava/util/HashMap;
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

.field public static final DONATION_M8_APP_PCKG:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field donationDialog:Lcom/htc/widget/HtcAlertDialog;

.field private handler:Landroid/os/Handler;

.field private licenceIntent:Landroid/content/Intent;

.field public mActivity:Landroid/app/Activity;

.field pm:Landroid/content/pm/PackageManager;

.field res:Landroid/content/res/Resources;

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

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string v1, "com.m0narx.ViperOnem8ProBronze"

    aput-object v1, v0, v3

    const-string v1, "com.m0narx.ViperOnem8ProSilver"

    aput-object v1, v0, v4

    .line 36
    const-string v1, "com.m0narx.ViperOnem8ProGold"

    aput-object v1, v0, v5

    const-string v1, "com.m0narx.ViperOnem8ProBlack"

    aput-object v1, v0, v6

    .line 37
    const-string v1, "com.m0narx.ViperOneProPlatin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.m0narx.ViperOneProDiamond"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_PCKG:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard  2$"

    aput-object v1, v0, v3

    .line 39
    const-string v1, "Silver 5$"

    aput-object v1, v0, v4

    const-string v1, "Gold 10$"

    aput-object v1, v0, v5

    const-string v1, "Black 20$"

    aput-object v1, v0, v6

    const-string v1, "Platinum 50$"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 40
    const-string v2, "Diamond 100$"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAME:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "com.m0narx.ViperOneProBronze"

    aput-object v1, v0, v3

    const-string v1, "com.m0narx.ViperOneProSilver"

    aput-object v1, v0, v4

    .line 44
    const-string v1, "com.m0narx.ViperOneProGold"

    aput-object v1, v0, v5

    const-string v1, "com.m0narx.ViperOneProBlack"

    aput-object v1, v0, v6

    .line 45
    const-string v1, "com.m0narx.ViperOneProPlatin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.m0narx.ViperOneProDiamond"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_APP_PCKG:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard  2$"

    aput-object v1, v0, v3

    .line 47
    const-string v1, "Silver 5$"

    aput-object v1, v0, v4

    const-string v1, "Gold 10$"

    aput-object v1, v0, v5

    const-string v1, "Black 20$"

    aput-object v1, v0, v6

    const-string v1, "Platinum 50$"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 48
    const-string v2, "Diamond 100$"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAME:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProDiamond"

    .line 57
    const-string v2, "8F1AD3F388B5D3DD2EB07FFF7C20380A"

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProPlatin"

    .line 59
    const-string v2, "D5A000BFFA9771A82F16F0A3FA9684C4"

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProBlack"

    .line 61
    const-string v2, "CF548A3E7BFCB7B774FF88CE2856852B"

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProGold"

    .line 63
    const-string v2, "D010D58EF06B722AD514578A71C3B4E6"

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProSilver"

    .line 65
    const-string v2, "86DA1ECFAEEA27C6928CEF79EA8E808F"

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOnem8ProBronze"

    .line 67
    const-string v2, "FA6CCFB91CDAC8710AB7419F4DA9F963"

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBeta"

    .line 69
    const-string v2, "CA8BE3678E05F0A6A8C6B41E7C40A8F3"

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProFree"

    .line 71
    const-string v2, "EE3E2452DFCD4CA0F8D112D4941CA38F"

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    .line 76
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProDiamond"

    .line 77
    const-string v2, "8F1AD3F388B5D3DD2EB07FFF7C20380A"

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProPlatin"

    .line 79
    const-string v2, "D5A000BFFA9771A82F16F0A3FA9684C4"

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBlack"

    .line 81
    const-string v2, "0ABFD65260B1B1CDA60C505F2F1F0A00"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProGold"

    .line 83
    const-string v2, "EE76214CB9415D6154010786EFB6D707"

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProSilver"

    .line 85
    const-string v2, "4EC57300A31E897431255BB41E2026C6"

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBronze"

    .line 87
    const-string v2, "EBFE2131CC03F4D8FB5418D4BF3A4AE0"

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProBeta"

    .line 89
    const-string v2, "CA8BE3678E05F0A6A8C6B41E7C40A8F3"

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    const-string v1, "com.m0narx.ViperOneProFree"

    .line 91
    const-string v2, "EE3E2452DFCD4CA0F8D112D4941CA38F"

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "Donation"

    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->TAG:Ljava/lang/String;

    .line 321
    new-instance v0, Lcom/m0narx/tweaks/Donation$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Donation$1;-><init>(Lcom/m0narx/tweaks/Donation;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->timer:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/m0narx/tweaks/Donation$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Donation$2;-><init>(Lcom/m0narx/tweaks/Donation;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->handler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    .line 108
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    .line 109
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->res:Landroid/content/res/Resources;

    .line 111
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAMES:Ljava/util/HashMap;

    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAMES:Ljava/util/HashMap;

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_M7_APP_NAMES:Ljava/util/HashMap;

    sput-object v0, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAMES:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private IsAuthorizedProKey(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 216
    iget-object v5, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 217
    .local v3, p:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 219
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, md5:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "mnt/asec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    const-string v5, "Donation"

    .line 223
    const-string v7, "Pro key installed to mnt/asec, pro key has to be legit. No need to check md5 sum"

    .line 222
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v6

    .line 243
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return v5

    .line 229
    .restart local v2       #md5:Ljava/lang/String;
    .restart local v3       #p:Landroid/content/pm/PackageInfo;
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/m0narx/tweaks/Donation;->calculateMD5(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 234
    if-eqz v2, :cond_1

    .line 235
    :try_start_2
    sget-object v5, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAMES:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 236
    if-nez v5, :cond_1

    move v5, v7

    .line 237
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    move v5, v6

    .line 231
    goto :goto_0

    .line 239
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    .end local v4           #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 240
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v5, v6

    .line 243
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Donation;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .parameter "file"

    .prologue
    const/4 v9, 0x0

    .line 251
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .local v2, digest:Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 268
    .local v1, buffer:[B
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-gtz v7, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 272
    .local v5, md5sum:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 273
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 275
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

    .line 276
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 282
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 285
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v1           #buffer:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #md5sum:[B
    .end local v6           #output:Ljava/lang/String;
    .end local v7           #read:I
    :goto_1
    return-object v8

    .line 252
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "Donation"

    const-string v10, "Exception while getting Digest"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 254
    goto :goto_1

    .line 260
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #digest:Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 261
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v8, "Donation"

    const-string v10, "Exception while getting FileInputStream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 262
    goto :goto_1

    .line 269
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

    .line 277
    .end local v7           #read:I
    :catch_2
    move-exception v3

    .line 278
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "Donation"

    const-string v10, "IOException"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 282
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v8, v9

    .line 279
    goto :goto_1

    .line 283
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bigInt:Ljava/math/BigInteger;
    .restart local v5       #md5sum:[B
    .restart local v6       #output:Ljava/lang/String;
    .restart local v7       #read:I
    :catch_3
    move-exception v3

    .line 284
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "Donation"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 285
    goto :goto_1

    .line 283
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v5           #md5sum:[B
    .end local v6           #output:Ljava/lang/String;
    .end local v7           #read:I
    :catch_4
    move-exception v3

    .line 284
    const-string v8, "Donation"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 285
    goto :goto_1

    .line 280
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 282
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 287
    throw v8

    .line 283
    :catch_5
    move-exception v3

    .line 284
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "Donation"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 285
    goto :goto_1
.end method

.method private createDonationDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 390
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 392
    const v1, 0x7f0a01a7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 393
    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 394
    const v1, 0x7f0a01a6

    .line 395
    new-instance v2, Lcom/m0narx/tweaks/Donation$6;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Donation$6;-><init>(Lcom/m0narx/tweaks/Donation;)V

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/Donation;->res:Landroid/content/res/Resources;

    const v3, 0x7f0a01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->getDonationTimeOut()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    new-instance v2, Lcom/m0narx/tweaks/Donation$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Donation$7;-><init>(Lcom/m0narx/tweaks/Donation;)V

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 390
    iput-object v0, p0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 411
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 412
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->donationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 415
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->timer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 416
    return-void
.end method

.method private isLicenceCheckingSupported(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 201
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    move v2, v3

    .line 207
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
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
    .line 175
    .local p1, targetPackages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    const-string v1, ""

    :cond_0
    :goto_1
    return-object v1

    .line 175
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, pckg:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 179
    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 180
    .local v0, p:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    .line 181
    const-string v1, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v0           #p:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static showSelectDonationApp(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 358
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f020012

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 360
    const v3, 0x7f0a01a7

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 362
    sget-object v2, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAME:[Ljava/lang/String;

    .line 364
    .local v2, items:[Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->isM8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    sget-object v2, Lcom/m0narx/tweaks/Donation;->DONATION_M8_APP_NAME:[Ljava/lang/String;

    .line 367
    :cond_0
    new-instance v3, Lcom/m0narx/tweaks/Donation$5;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/Donation$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 384
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 385
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 387
    return-void
.end method


# virtual methods
.method public CheckLicensing(Z)V
    .locals 7
    .parameter "firstTab"

    .prologue
    const/4 v6, 0x0

    .line 119
    sget-object v3, Lcom/m0narx/tweaks/Donation;->DONATION_APP_NAMES:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/m0narx/tweaks/Donation;->isPackageExists(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, proKeyPackage:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/Donation;->isLicenceCheckingSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/Donation;->IsAuthorizedProKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".LicenceService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, service:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/m0narx/tweaks/Donation;->licenceIntent:Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->licenceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/m0narx/tweaks/Donation;->licenceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 132
    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/m0narx/tweaks/Donation;->licenceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    .end local v2           #service:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Donation;->createUnauthorizedDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 138
    iget-object v4, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    .line 137
    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    const v4, 0x7f0a02a2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 140
    const v4, 0x7f0a02a3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 141
    const v4, 0x7f0a02a4

    .line 142
    new-instance v5, Lcom/m0narx/tweaks/Donation$3;

    invoke-direct {v5, p0, v1}, Lcom/m0narx/tweaks/Donation$3;-><init>(Lcom/m0narx/tweaks/Donation;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 160
    .local v0, licenceCheck:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 165
    .end local v0           #licenceCheck:Lcom/htc/widget/HtcAlertDialog;
    :cond_3
    if-eqz p1, :cond_0

    .line 166
    const-string v3, "ro.product.version"

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 167
    sget-object v3, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    sget-object v4, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/m0narx/tweaks/Donation;->createDonationDialog()V

    goto :goto_0
.end method

.method createUnauthorizedDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "proKeyPackage"

    .prologue
    const/4 v5, 0x0

    .line 293
    move-object v0, p1

    .line 295
    .local v0, pkg:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    const-string v3, "Your ProKey is not legit!"

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 298
    const-string v3, "The installed version of your pro key is an unauthorized version. Please purchase and install a legit one from the google playstore"

    .line 297
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 299
    const-string v3, "Go to google play"

    .line 300
    new-instance v4, Lcom/m0narx/tweaks/Donation$4;

    invoke-direct {v4, p0, v0}, Lcom/m0narx/tweaks/Donation$4;-><init>(Lcom/m0narx/tweaks/Donation;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 316
    .local v1, unauthorized:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 319
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/m0narx/tweaks/Donation;->licenceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 421
    return-void
.end method
