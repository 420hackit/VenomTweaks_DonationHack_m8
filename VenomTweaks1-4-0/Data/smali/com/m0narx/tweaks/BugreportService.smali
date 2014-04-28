.class public Lcom/m0narx/tweaks/BugreportService;
.super Landroid/app/Service;
.source "BugreportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/BugreportService$IncomingHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "m0narX_logcatService"

.field private static final endStr:Ljava/lang/String; = "---------------MONITORING ENDED---------------"

.field private static isRunning:Z = false

.field public static recordingFinished:Z = false

.field private static final strStr:Ljava/lang/String; = "--------------MONITORING STARTED--------------"

.field public static timeRemaining:J


# instance fields
.field private final ACTION_SCREENSHOT:I

.field private final BUGREPORTS:Ljava/lang/String;

.field private final NOTIFICATION_ID:I

.field private final SCREENSHOT_DIR:Ljava/io/File;

.field private final SCREENSHOT_NOTIFICATION_ID:I

.field private dateFormat:Ljava/text/DateFormat;

.field private filter:I

.field private kmsg:Lcom/m0narx/tweaks/widgets/kmsgWriter;

.field private logFolder:Ljava/lang/String;

.field private logcat:Lcom/m0narx/tweaks/widgets/logcatWriter;

.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field final mMessenger:Landroid/os/Messenger;

.field private mOrigHomeButtonMode:I

.field private final mScreenShotObserver:Landroid/os/FileObserver;

.field private nm:Landroid/app/NotificationManager;

.field private screenshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    sput-boolean v2, Lcom/m0narx/tweaks/BugreportService;->isRunning:Z

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/m0narx/tweaks/BugreportService;->timeRemaining:J

    .line 65
    sput-boolean v2, Lcom/m0narx/tweaks/BugreportService;->recordingFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mClients:Ljava/util/ArrayList;

    .line 43
    iput v3, p0, Lcom/m0narx/tweaks/BugreportService;->ACTION_SCREENSHOT:I

    .line 44
    const v0, 0x1f357

    iput v0, p0, Lcom/m0narx/tweaks/BugreportService;->NOTIFICATION_ID:I

    .line 45
    const/16 v0, 0x315

    iput v0, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_NOTIFICATION_ID:I

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    .line 51
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->dateFormat:Ljava/text/DateFormat;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->screenshots:Ljava/util/ArrayList;

    .line 57
    const-string v0, "BugReports"

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->BUGREPORTS:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->sdcard()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v2, "/Pictures/Screenshots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;

    .line 66
    new-instance v0, Lcom/m0narx/tweaks/BugreportService$1;

    .line 67
    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/m0narx/tweaks/BugreportService$1;-><init>(Lcom/m0narx/tweaks/BugreportService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mScreenShotObserver:Landroid/os/FileObserver;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/m0narx/tweaks/BugreportService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/BugreportService$IncomingHandler;-><init>(Lcom/m0narx/tweaks/BugreportService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mMessenger:Landroid/os/Messenger;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/BugreportService;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/BugreportService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->screenshots:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/BugreportService;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->removeScreenShotNotif()V

    return-void
.end method

.method private addAdvancedInfo()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "/proc/last_kmsg"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/last_kmsg.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "/proc/mounts"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mounts.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "/proc/version"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/kernel_version.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "/proc/meminfo"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/meminfo.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "/proc/swaps"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/swaps.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private compressFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "folder"
    .parameter "file"

    .prologue
    .line 299
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v6, inFolder:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v8, zipFile:Ljava/io/File;
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 302
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    invoke-direct {v7, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 303
    .local v7, out:Ljava/util/zip/ZipOutputStream;
    const/4 v5, 0x0

    .line 304
    .local v5, in:Ljava/io/BufferedInputStream;
    const/16 v9, 0x3e8

    new-array v1, v9, [B

    .line 305
    .local v1, data:[B
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, files:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v3

    if-lt v4, v9, :cond_0

    .line 316
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 317
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 321
    .end local v1           #data:[B
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedInputStream;
    .end local v6           #inFolder:Ljava/io/File;
    .end local v7           #out:Ljava/util/zip/ZipOutputStream;
    .end local v8           #zipFile:Ljava/io/File;
    :goto_1
    return-void

    .line 307
    .restart local v1       #data:[B
    .restart local v3       #files:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #inFolder:Ljava/io/File;
    .restart local v7       #out:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zipFile:Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/BufferedInputStream;

    .end local v5           #in:Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileInputStream;

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x3e8

    .line 307
    invoke-direct {v5, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 309
    .restart local v5       #in:Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/util/zip/ZipEntry;

    aget-object v10, v3, v4

    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 311
    :goto_2
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    invoke-virtual {v5, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 314
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 318
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedInputStream;
    .end local v6           #inFolder:Ljava/io/File;
    .end local v7           #out:Ljava/util/zip/ZipOutputStream;
    .end local v8           #zipFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/m0narx/tweaks/BugreportService;->isRunning:Z

    return v0
.end method

.method private moveScreenRecord()V
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BugReports"

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Misc;->checkSDdir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Screenrecord.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, record:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Screenrecord.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, target:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private moveScreenShots()V
    .locals 6

    .prologue
    .line 217
    iget-object v3, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 230
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/m0narx/tweaks/BugreportService;->screenshots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 220
    .local v1, screenshot:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, target:Ljava/io/File;
    :try_start_0
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private removeScreenShotNotif()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x315

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const v7, 0x7f0a01c6

    const/4 v6, 0x0

    .line 115
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, builder:Landroid/app/Notification$Builder;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/m0narx/tweaks/Bugreport;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v2, openReportMonitor:Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "stopService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 122
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 123
    const v4, 0x7f020035

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 124
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/BugreportService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 126
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 127
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 128
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 130
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/BugreportService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 132
    const v4, 0x7f0a01c5

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/BugreportService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 134
    iget-object v3, p0, Lcom/m0narx/tweaks/BugreportService;->nm:Landroid/app/NotificationManager;

    const v4, 0x1f357

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 135
    return-void
.end method

.method private startRecord()V
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/m0narx/tweaks/BugreportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    const-string v1, "tweaks_longpress_home"

    const/16 v2, 0xe

    .line 191
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/BugreportService;->mOrigHomeButtonMode:I

    .line 193
    invoke-virtual {p0}, Lcom/m0narx/tweaks/BugreportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_home"

    .line 194
    const/16 v2, 0x8

    .line 193
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->screenshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logcat:Lcom/m0narx/tweaks/widgets/logcatWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/logcat.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--------------MONITORING STARTED--------------"

    const-string v3, "---------------MONITORING ENDED---------------"

    iget v4, p0, Lcom/m0narx/tweaks/BugreportService;->filter:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/logcatWriter;->startLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->kmsg:Lcom/m0narx/tweaks/widgets/kmsgWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/kmsg.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/kmsgWriter;->startLogging(Ljava/lang/String;)V

    .line 209
    const-string v0, "m0narX_logcatService"

    const-string v1, "--------------MONITORING STARTED--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mScreenShotObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 213
    return-void
.end method

.method private stopRecord()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 265
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mScreenShotObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 267
    const-string v0, "m0narX_logcatService"

    const-string v1, "---------------MONITORING ENDED---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/m0narx/tweaks/BugreportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_home"

    .line 271
    iget v2, p0, Lcom/m0narx/tweaks/BugreportService;->mOrigHomeButtonMode:I

    .line 270
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logcat:Lcom/m0narx/tweaks/widgets/logcatWriter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/logcatWriter;->stopLogging()V

    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->kmsg:Lcom/m0narx/tweaks/widgets/kmsgWriter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/kmsgWriter;->stopLogging()V

    .line 278
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->moveScreenShots()V

    .line 280
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->moveScreenRecord()V

    .line 283
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->addAdvancedInfo()V

    .line 286
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/BugreportService;->compressFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->deleteDir(Ljava/io/File;)Z

    .line 292
    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/BugreportService;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->sdcard()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 292
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    iget v0, p0, Lcom/m0narx/tweaks/BugreportService;->time:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/m0narx/tweaks/BugreportService;->recordingFinished:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->stopRecord()V

    .line 147
    iget-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->nm:Landroid/app/NotificationManager;

    const v1, 0x1f357

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 148
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->removeScreenShotNotif()V

    .line 149
    const-string v0, "m0narX_logcatService"

    const-string v1, "Service Stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/m0narx/tweaks/BugreportService;->isRunning:Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 156
    const-string v0, "filter"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/BugreportService;->filter:I

    .line 157
    const-string v0, "time"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/BugreportService;->time:I

    .line 158
    sput-boolean v1, Lcom/m0narx/tweaks/BugreportService;->recordingFinished:Z

    .line 159
    const-string v0, "m0narX_logcatService"

    const-string v1, "Service Started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/m0narx/tweaks/widgets/logcatWriter;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/logcatWriter;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logcat:Lcom/m0narx/tweaks/widgets/logcatWriter;

    .line 162
    new-instance v0, Lcom/m0narx/tweaks/widgets/kmsgWriter;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/kmsgWriter;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->kmsg:Lcom/m0narx/tweaks/widgets/kmsgWriter;

    .line 163
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/BugreportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->nm:Landroid/app/NotificationManager;

    .line 164
    sput-boolean v6, Lcom/m0narx/tweaks/BugreportService;->isRunning:Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BugReports"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->checkSDdir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "report_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService;->dateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/m0narx/tweaks/BugreportService;->logFolder:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->showNotification()V

    .line 169
    invoke-direct {p0}, Lcom/m0narx/tweaks/BugreportService;->startRecord()V

    .line 171
    iget v0, p0, Lcom/m0narx/tweaks/BugreportService;->time:I

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/m0narx/tweaks/BugreportService$2;

    iget v1, p0, Lcom/m0narx/tweaks/BugreportService;->time:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x1388

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/BugreportService$2;-><init>(Lcom/m0narx/tweaks/BugreportService;JJ)V

    .line 184
    invoke-virtual {v0}, Lcom/m0narx/tweaks/BugreportService$2;->start()Landroid/os/CountDownTimer;

    .line 186
    :cond_0
    return v6
.end method
