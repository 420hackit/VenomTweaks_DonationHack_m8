.class public Lcom/m0narx/tweaks/widgets/ShellInterface;
.super Ljava/lang/Object;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;,
        Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;,
        Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$ShellInterface$OUTPUT:[I = null

.field private static final EXIT:Ljava/lang/String; = "exit\n"

.field private static final SU_COMMANDS:[Ljava/lang/String;

.field private static final TEST_COMMANDS:[Ljava/lang/String;

.field private static final UID_PATTERN:Ljava/util/regex/Pattern;

.field private static shell:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$ShellInterface$OUTPUT()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$ShellInterface$OUTPUT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->values()[Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDERR:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDOUT:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$ShellInterface$OUTPUT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "^uid=(\\d+).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->UID_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    .line 48
    const-string v1, "su"

    aput-object v1, v0, v2

    .line 49
    const-string v1, "/system/xbin/su"

    aput-object v1, v0, v3

    .line 50
    const-string v1, "/system/bin/su"

    aput-object v1, v0, v4

    .line 47
    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->SU_COMMANDS:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    .line 54
    const-string v1, "id"

    aput-object v1, v0, v2

    .line 55
    const-string v1, "/system/xbin/id"

    aput-object v1, v0, v3

    .line 56
    const-string v1, "/system/bin/id"

    aput-object v1, v0, v4

    .line 53
    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->TEST_COMMANDS:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _runCommand(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Ljava/lang/String;
    .locals 11
    .parameter "command"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, os:Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 178
    .local v5, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    sget-object v9, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 179
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v2           #os:Ljava/io/DataOutputStream;
    .local v3, os:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-static {v5, p1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->sinkProcessOutput(Ljava/lang/Process;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    move-result-object v6

    .line 181
    .local v6, sh:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    const/4 v7, 0x0

    .line 182
    .local v7, sh2:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    sget-object v8, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    if-ne p1, v8, :cond_0

    sget-object v8, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDOUT:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {v5, v8}, Lcom/m0narx/tweaks/widgets/ShellInterface;->sinkProcessOutput(Ljava/lang/Process;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    move-result-object v7

    .line 183
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 185
    const-string v8, "exit\n"

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 187
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 188
    if-nez v6, :cond_1

    if-eqz v7, :cond_6

    .line 189
    :cond_1
    const-string v4, ""

    .line 190
    .local v4, output:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->getOutput()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 191
    invoke-virtual {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->getOutput()Ljava/lang/String;

    move-result-object v4

    .line 193
    :cond_2
    sget-object v8, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    if-ne p1, v8, :cond_3

    .line 194
    invoke-virtual {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->getOutput()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->getOutput()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 209
    :cond_3
    if-eqz v3, :cond_4

    .line 210
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 212
    :cond_4
    if-eqz v5, :cond_5

    .line 213
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 201
    .end local v4           #output:Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v4

    .line 209
    :cond_6
    if-eqz v3, :cond_7

    .line 210
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 212
    :cond_7
    if-eqz v5, :cond_8

    .line 213
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    :cond_8
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 203
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v6           #sh:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    .end local v7           #sh2:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, msg:Ljava/lang/String;
    const-string v8, "m0narX_tweaks"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ShellInterface: runCommand error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 209
    :goto_3
    if-eqz v2, :cond_9

    .line 210
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 212
    :cond_9
    if-eqz v5, :cond_a

    .line 213
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    :cond_a
    :goto_4
    throw v8

    .line 215
    :catch_1
    move-exception v9

    goto :goto_4

    .line 207
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 203
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 215
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v6       #sh:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    .restart local v7       #sh2:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    :catch_3
    move-exception v8

    goto :goto_1

    .restart local v4       #output:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_0
.end method

.method private static _runCommandInBg(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, os:Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 233
    .local v2, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v4, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 234
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0           #os:Ljava/io/DataOutputStream;
    .local v1, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    const-string v3, "exit\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 240
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v0       #os:Ljava/io/DataOutputStream;
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v0       #os:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private static checkSu()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    sget-object v3, Lcom/m0narx/tweaks/widgets/ShellInterface;->SU_COMMANDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    .local v0, command:Ljava/lang/String;
    :goto_0
    if-lt v2, v4, :cond_0

    .line 77
    const/4 v2, 0x0

    sput-object v2, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;

    .line 78
    :goto_1
    return v1

    .line 71
    :cond_0
    aget-object v0, v3, v2

    .line 73
    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isRootUid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    const/4 v1, 0x1

    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getProcessOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 99
    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDERR:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->_runCommand(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ignored:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRootUid()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, out:Ljava/lang/String;
    sget-object v6, Lcom/m0narx/tweaks/widgets/ShellInterface;->TEST_COMMANDS:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_3

    .line 87
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_1
    move v3, v4

    .line 94
    :cond_2
    :goto_1
    return v3

    .line 83
    :cond_3
    aget-object v0, v6, v5

    .line 84
    .local v0, command:Ljava/lang/String;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_0

    .line 83
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    .end local v0           #command:Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/m0narx/tweaks/widgets/ShellInterface;->UID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 89
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    const-string v5, "0"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_6
    move v3, v4

    .line 94
    goto :goto_1
.end method

.method public static declared-synchronized isSuAvailable()Z
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/m0narx/tweaks/widgets/ShellInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->checkSu()Z

    .line 63
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static run(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 165
    const-string v0, ""

    .line 167
    .local v0, Out:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->_runCommand(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, ignored:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runBgSU(Ljava/lang/String;)Ljava/lang/Process;
    .locals 2
    .parameter "command"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, process:Ljava/lang/Process;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->_runCommandInBg(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static runCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->_runCommand(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static runSU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 153
    const-string v0, ""

    .line 154
    .local v0, Out:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :try_start_0
    sget-object v2, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->_runCommand(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, ignored:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .parameter "mContext"
    .parameter "messageId"
    .parameter "Command"
    .parameter "runAsSU"

    .prologue
    .line 138
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 144
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;

    invoke-direct {v0, p2, v1, p3}, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;-><init>(Ljava/lang/String;Lcom/htc/app/HtcProgressDialog;Z)V

    .line 145
    .local v0, bgProc:Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->start()V

    .line 146
    return-void
.end method

.method public static declared-synchronized setShell(Ljava/lang/String;)V
    .locals 2
    .parameter "shell"

    .prologue
    .line 67
    const-class v0, Lcom/m0narx/tweaks/widgets/ShellInterface;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/m0narx/tweaks/widgets/ShellInterface;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sinkProcessOutput(Ljava/lang/Process;Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;)Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    .locals 5
    .parameter "p"
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$ShellInterface$OUTPUT()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    .end local v0           #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    .line 248
    .restart local v0       #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    new-instance v1, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 251
    :pswitch_1
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    .end local v0           #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    .line 252
    .restart local v0       #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    new-instance v1, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 255
    :pswitch_2
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    .end local v0           #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    .line 256
    .restart local v0       #output:Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
    new-instance v1, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
