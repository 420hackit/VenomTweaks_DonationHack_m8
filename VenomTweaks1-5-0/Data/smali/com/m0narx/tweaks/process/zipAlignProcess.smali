.class public Lcom/m0narx/tweaks/process/zipAlignProcess;
.super Ljava/lang/Thread;
.source "zipAlignProcess.java"


# instance fields
.field private final DONE:I

.field private final PROGRESS:I

.field private Res:Landroid/content/res/Resources;

.field private final STARTED:I

.field private final WAIT:I

.field private handler:Landroid/os/Handler;

.field private okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private xContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V
    .locals 3
    .parameter "mContext"
    .parameter "mDialog"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->WAIT:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->STARTED:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->PROGRESS:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->DONE:I

    .line 123
    new-instance v0, Lcom/m0narx/tweaks/process/zipAlignProcess$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/process/zipAlignProcess$1;-><init>(Lcom/m0narx/tweaks/process/zipAlignProcess;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->xContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 37
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->xContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 39
    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 40
    const v1, 0x7f0a0056

    new-instance v2, Lcom/m0narx/tweaks/process/zipAlignProcess$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/process/zipAlignProcess$2;-><init>(Lcom/m0narx/tweaks/process/zipAlignProcess;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 44
    iget-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->xContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->Res:Landroid/content/res/Resources;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/process/zipAlignProcess;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->Res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/process/zipAlignProcess;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/4 v11, -0x1

    .line 49
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 52
    const-wide/16 v9, 0x64

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_0
    const/4 v7, 0x0

    .line 54
    .local v7, msg:Landroid/os/Message;
    const/4 v2, 0x0

    .line 55
    .local v2, Bndl:Landroid/os/Bundle;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->xContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/result.tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, LSFile:Ljava/lang/String;
    new-instance v7, Landroid/os/Message;

    .end local v7           #msg:Landroid/os/Message;
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 57
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #Bndl:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    .restart local v2       #Bndl:Landroid/os/Bundle;
    const-string v9, "status"

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 60
    iget-object v9, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "busybox ls -1 --color=never /data/app > "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 64
    const-string v10, "chmod 777 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, APKfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 67
    new-instance v7, Landroid/os/Message;

    .end local v7           #msg:Landroid/os/Message;
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 68
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #Bndl:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 69
    .restart local v2       #Bndl:Landroid/os/Bundle;
    const-string v9, "status"

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    iget-object v9, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :goto_1
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, APKFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v8, Ljava/util/Scanner;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .local v8, reader:Ljava/util/Scanner;
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 86
    :try_start_3
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    .end local v8           #reader:Ljava/util/Scanner;
    :goto_3
    new-instance v7, Landroid/os/Message;

    .end local v7           #msg:Landroid/os/Message;
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 91
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #Bndl:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .restart local v2       #Bndl:Landroid/os/Bundle;
    const-string v9, "status"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v9, "total"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    iget-object v9, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_3

    .line 114
    new-instance v7, Landroid/os/Message;

    .end local v7           #msg:Landroid/os/Message;
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 115
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #Bndl:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 116
    .restart local v2       #Bndl:Landroid/os/Bundle;
    const-string v9, "status"

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v9, "total"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 119
    iget-object v9, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_1

    .line 80
    .end local v5           #i:I
    .restart local v8       #reader:Ljava/util/Scanner;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, line:Ljava/lang/String;
    const-string v9, ".apk"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 85
    .end local v6           #line:Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 86
    :try_start_5
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    .line 87
    throw v9
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 88
    .end local v8           #reader:Ljava/util/Scanner;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 97
    .restart local v5       #i:I
    :cond_3
    new-instance v7, Landroid/os/Message;

    .end local v7           #msg:Landroid/os/Message;
    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 98
    .restart local v7       #msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #Bndl:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 99
    .restart local v2       #Bndl:Landroid/os/Bundle;
    const-string v9, "status"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v10, "pkg"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 102
    iget-object v9, p0, Lcom/m0narx/tweaks/process/zipAlignProcess;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v3, CMD:Ljava/lang/StringBuilder;
    const-string v9, "zipalign -c 4 "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v9, "ZIPCHECK=$?;"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v9, "if [ $ZIPCHECK -eq 1 ]; then"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "zipalign -f 4 /data/data/"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /cache/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "if [ -e /cache/"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]; then"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "cp -f -p /cache/"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /data/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "rm /cache/"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v9, "fi;fi;"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 52
    .end local v0           #APKFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #APKfile:Ljava/io/File;
    .end local v2           #Bndl:Landroid/os/Bundle;
    .end local v3           #CMD:Ljava/lang/StringBuilder;
    .end local v4           #LSFile:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #msg:Landroid/os/Message;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method
