.class public Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;
.super Ljava/lang/Thread;
.source "suCopyFileWithProgress.java"


# static fields
.field private static Pref:Ljava/lang/String;

.field private static Tweak:Ljava/lang/String;


# instance fields
.field private Dest:Ljava/lang/String;

.field private Source:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mPrefs:Lcom/htc/preference/HtcPreferenceFragment;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "xContext"
    .parameter "prefs"
    .parameter "file1"
    .parameter "name"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    new-instance v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;-><init>(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0080

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 32
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 33
    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mPrefs:Lcom/htc/preference/HtcPreferenceFragment;

    .line 36
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/preference/HtcPreferenceFragment;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mPrefs:Lcom/htc/preference/HtcPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 49
    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "suCopyFileWithProgress: bgCopy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, inFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v3

    .line 54
    .local v3, isSYSRW:Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v4, outFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    :try_start_0
    invoke-static {v2, v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 59
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    const-string v0, ""

    .line 61
    .local v0, cmd:Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v0, "busybox mount -o remount,rw /system;"

    .line 62
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "cp -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tmp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 655 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_2

    const-string v5, "busybox mount -o remount,ro /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .end local v3           #isSYSRW:Z
    .end local v4           #outFile:Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    const-string v5, "m0narX_tweaks"

    const-string v6, "suCopyFileWithProgress: bgCopy done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 74
    return-void

    .line 65
    .restart local v3       #isSYSRW:Z
    .restart local v4       #outFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/io/IOException;
    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tmp failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v5, "m0narX_tweaks"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toogleCheckBox(Ljava/lang/String;)V
    .locals 0
    .parameter "Name"

    .prologue
    .line 43
    sput-object p1, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toogleSystemSetting(Ljava/lang/String;)V
    .locals 0
    .parameter "Name"

    .prologue
    .line 39
    sput-object p1, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    .line 40
    return-void
.end method
