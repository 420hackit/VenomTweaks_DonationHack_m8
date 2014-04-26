.class public Lcom/m0narx/tweaks/widgets/kmsgWriter;
.super Ljava/lang/Thread;
.source "kmsgWriter.java"


# instance fields
.field private final KMSG:[Ljava/lang/String;

.field private final STOP_KMSG:[Ljava/lang/String;

.field file:Ljava/lang/String;

.field lockObject:Ljava/lang/Object;

.field log:Ljava/lang/StringBuilder;

.field process:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "su"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "cat /proc/kmsg"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->KMSG:[Ljava/lang/String;

    .line 11
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "su"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "pkill -f /proc/kmsg"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->STOP_KMSG:[Ljava/lang/String;

    .line 13
    iput-object v6, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->file:Ljava/lang/String;

    .line 14
    iput-object v6, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->lockObject:Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 29
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->lockObject:Ljava/lang/Object;

    monitor-enter v5

    .line 30
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->log:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->KMSG:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 43
    .local v3, separator:Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 29
    .end local v1           #line:Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit v5

    .line 51
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #separator:Ljava/lang/String;
    :goto_2
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    monitor-exit v5

    goto :goto_2

    .line 29
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 44
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #separator:Ljava/lang/String;
    :cond_0
    :try_start_5
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 47
    .end local v1           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 48
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public startLogging(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->file:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/kmsgWriter;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/kmsgWriter;->stopLogging()V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/kmsgWriter;->start()V

    .line 25
    return-void
.end method

.method public stopLogging()V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->STOP_KMSG:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 61
    :try_start_1
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_2
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->file:Ljava/lang/String;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/kmsgWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
