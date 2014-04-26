.class public Lcom/m0narx/tweaks/widgets/logcatWriter;
.super Ljava/lang/Thread;
.source "logcatWriter.java"


# instance fields
.field private final LOGCAT_FC:[Ljava/lang/String;

.field private final LOGCAT_OTHER:[Ljava/lang/String;

.field private final STOP_LOGCAT:[Ljava/lang/String;

.field endString:Ljava/lang/String;

.field file:Ljava/lang/String;

.field lockObject:Ljava/lang/Object;

.field log:Ljava/lang/StringBuilder;

.field mFilter:I

.field process:Ljava/lang/Process;

.field startString:Ljava/lang/String;


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

    const-string v1, "logcat | grep AndroidRuntime"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->LOGCAT_FC:[Ljava/lang/String;

    .line 11
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "su"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "logcat -v time"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->LOGCAT_OTHER:[Ljava/lang/String;

    .line 12
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "su"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "pkill logcat"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->STOP_LOGCAT:[Ljava/lang/String;

    .line 13
    iput-object v6, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->file:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->startString:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->endString:Ljava/lang/String;

    .line 16
    iput-object v6, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->lockObject:Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 34
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->lockObject:Ljava/lang/Object;

    monitor-enter v8

    .line 35
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    iget v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->mFilter:I

    if-nez v7, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    iget-object v9, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->LOGCAT_FC:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v3, reader:Ljava/io/BufferedReader;
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 53
    .local v5, separator:Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 34
    .end local v2           #line:Ljava/lang/String;
    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #separator:Ljava/lang/String;
    :goto_3
    return-void

    .line 41
    :cond_0
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    iget-object v9, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->LOGCAT_OTHER:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    monitor-exit v8

    goto :goto_3

    .line 34
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 54
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #separator:Ljava/lang/String;
    :cond_1
    :try_start_7
    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->startString:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->startString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    .line 58
    const-string v7, "sqlite3 /data/data/com.android.providers.settings/databases/settings.db \"select name,value from system where name like \'tweaks_%\'\""

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, tweaks:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, data:[Ljava/lang/String;
    array-length v9, v0

    const/4 v7, 0x0

    :goto_4
    if-lt v7, v9, :cond_3

    .line 69
    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .end local v0           #data:[Ljava/lang/String;
    .end local v6           #tweaks:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 75
    .end local v2           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 76
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v6       #tweaks:Ljava/lang/String;
    :cond_3
    :try_start_9
    aget-object v4, v0, v7

    .line 65
    .local v4, s:Ljava/lang/String;
    iget-object v10, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v10, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method public startLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "fileName"
    .parameter "startStr"
    .parameter "endStr"
    .parameter "filter"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->file:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->startString:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->endString:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->mFilter:I

    .line 26
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/logcatWriter;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/logcatWriter;->stopLogging()V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/logcatWriter;->start()V

    .line 30
    return-void
.end method

.method public stopLogging()V
    .locals 6

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->STOP_LOGCAT:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->lockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_2
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->endString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->endString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, cut:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->endString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 102
    .end local v0           #cut:I
    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->file:Ljava/lang/String;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/logcatWriter;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method
