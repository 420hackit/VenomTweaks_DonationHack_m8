.class public Lcom/m0narx/tweaks/widgets/ShellCMD;
.super Ljava/lang/Object;
.source "ShellCMD.java"


# static fields
.field public static final CMD_KILL_IME:Ljava/lang/String; = "pkill com.htc.android.htcime;"

.field public static final CMD_KILL_LOCK:Ljava/lang/String; = "pkill com.htc.lockscreen"

.field public static final CMD_KILL_SENSE:Ljava/lang/String; = "pkill com.htc.launcher;"

.field public static final CMD_KILL_SYSTEMUI:Ljava/lang/String; = "pkill com.android.systemui;"

.field public static final CMD_SYSRO:Ljava/lang/String; = "busybox mount -o remount,ro /system;"

.field public static final CMD_SYSRW:Ljava/lang/String; = "busybox mount -o remount,rw /system;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemRW()Z
    .locals 5

    .prologue
    .line 18
    const/4 v3, 0x0

    .line 19
    .local v3, retVal:Z
    new-instance v1, Ljava/io/File;

    const-string v4, "/proc/mounts"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, mounts:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 35
    .end local v3           #retVal:Z
    :goto_0
    return v3

    .line 22
    .restart local v3       #retVal:Z
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v2, reader:Ljava/util/Scanner;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 32
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 34
    .end local v2           #reader:Ljava/util/Scanner;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 25
    .restart local v2       #reader:Ljava/util/Scanner;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, line:Ljava/lang/String;
    const-string v4, "/system"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "rw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_1

    .line 31
    .end local v0           #line:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 32
    :try_start_4
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 33
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
.end method
