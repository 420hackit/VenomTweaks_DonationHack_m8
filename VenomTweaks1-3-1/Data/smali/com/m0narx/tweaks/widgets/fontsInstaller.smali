.class public Lcom/m0narx/tweaks/widgets/fontsInstaller;
.super Ljava/lang/Thread;
.source "fontsInstaller.java"


# static fields
.field private static Pref:Lcom/htc/preference/HtcSwitchPreference;


# instance fields
.field private Dest:Ljava/lang/String;

.field private Source:Ljava/lang/String;

.field private fonts:[Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/preference/HtcSwitchPreference;)V
    .locals 2
    .parameter "xContext"
    .parameter "fontPack"
    .parameter "fontNames"
    .parameter "prefToToggle"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    new-instance v0, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/fontsInstaller$1;-><init>(Lcom/m0narx/tweaks/widgets/fontsInstaller;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0080

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 40
    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Source:Ljava/lang/String;

    .line 41
    sput-object p4, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Pref:Lcom/htc/preference/HtcSwitchPreference;

    .line 42
    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Lcom/htc/preference/HtcSwitchPreference;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Pref:Lcom/htc/preference/HtcSwitchPreference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/widgets/fontsInstaller;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private unzipToCache(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .parameter "zipFileName"
    .parameter "files"

    .prologue
    .line 50
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p2

    if-lt v4, v8, :cond_1

    .line 56
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 57
    .local v7, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 58
    .local v1, entriesEnum:Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_3

    .line 81
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const/4 v8, 0x1

    .end local v1           #entriesEnum:Ljava/util/Enumeration;
    .end local v7           #zipFile:Ljava/util/zip/ZipFile;
    :goto_2
    return v8

    .line 51
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, f:Ljava/io/File;
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 50
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v3           #f:Ljava/io/File;
    .restart local v1       #entriesEnum:Ljava/util/Enumeration;
    .restart local v7       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 61
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, index:I
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, name:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_3
    array-length v8, p2

    if-ge v4, v8, :cond_0

    .line 65
    aget-object v8, p2, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 66
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 67
    if-lez v5, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v5, v8, :cond_4

    .line 68
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 71
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    invoke-static {v8, v9}, Lcom/m0narx/tweaks/widgets/Misc;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 74
    :cond_5
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 77
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #index:I
    .end local v6           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #entriesEnum:Ljava/util/Enumeration;
    .end local v7           #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v8, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 92
    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fontsInstaller: bgCopy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Dest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Source:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, inFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->Source:Ljava/lang/String;

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->unzipToCache(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 99
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v4

    .line 100
    .local v4, isSYSRW:Z
    const-string v0, ""

    .line 101
    .local v0, cmd:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v0, "busybox mount -o remount,rw /system;"

    .line 102
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_3

    .line 109
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "busybox mount -o remount,ro /system;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #isSYSRW:Z
    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    const-string v5, "m0narX_tweaks"

    const-string v6, "fontsInstaller: bgCopy done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 117
    return-void

    .line 103
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #isSYSRW:Z
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "busybox cp -a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 666 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/fontsInstaller;->fonts:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
