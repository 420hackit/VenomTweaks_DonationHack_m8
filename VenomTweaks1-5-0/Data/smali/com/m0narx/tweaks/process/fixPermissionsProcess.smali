.class public Lcom/m0narx/tweaks/process/fixPermissionsProcess;
.super Ljava/lang/Thread;
.source "fixPermissionsProcess.java"


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
    .parameter "aDialog"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->WAIT:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->STARTED:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->PROGRESS:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->DONE:I

    .line 177
    new-instance v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess$1;-><init>(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 42
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 44
    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 45
    const v1, 0x7f0a0056

    new-instance v2, Lcom/m0narx/tweaks/process/fixPermissionsProcess$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess$2;-><init>(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 49
    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->Res:Landroid/content/res/Resources;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->Res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 55
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 63
    const-wide/16 v22, 0x64

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 64
    :goto_0
    const/16 v17, 0x0

    .line 65
    .local v17, msg:Landroid/os/Message;
    const/4 v5, 0x0

    .line 67
    .local v5, Bndl:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 68
    .local v10, assetManager:Landroid/content/res/AssetManager;
    const/4 v13, 0x0

    .line 69
    .local v13, in:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 70
    .local v18, out:Ljava/io/OutputStream;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/fix_permissions"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, FixPermName:Ljava/lang/String;
    :try_start_1
    const-string v22, "fix_permissions"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 73
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 74
    .end local v18           #out:Ljava/io/OutputStream;
    .local v19, out:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 75
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 76
    const/4 v13, 0x0

    .line 77
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 79
    const/16 v18, 0x0

    .line 81
    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "chmod 755 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v22

    if-nez v22, :cond_0

    .line 84
    const-string v22, "busybox mount -o remount,rw /system;"

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/result.tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, TmpFile:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "busybox cat /data/system/packages.xml | busybox  grep -c \"^<package\" > "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    const/4 v4, 0x0

    .line 92
    .local v4, APKS:I
    :try_start_3
    new-instance v20, Ljava/util/Scanner;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    .local v20, reader:Ljava/util/Scanner;
    :goto_2
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v22

    if-nez v22, :cond_3

    .line 99
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 106
    .end local v20           #reader:Ljava/util/Scanner;
    :goto_3
    new-instance v17, Landroid/os/Message;

    .end local v17           #msg:Landroid/os/Message;
    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 107
    .restart local v17       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #Bndl:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 108
    .restart local v5       #Bndl:Landroid/os/Bundle;
    const-string v22, "status"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v22, "total"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/fix_permissions.log"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v8, TFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 118
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "."

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runBgSU(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 121
    .local v6, FixPerm:Ljava/lang/Process;
    :goto_4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 125
    const-string v21, ""

    .line 126
    .local v21, showMsg:Ljava/lang/String;
    const/16 v16, 0x1

    .line 127
    .local v16, loopActive:Z
    :goto_5
    if-nez v16, :cond_5

    .line 167
    :cond_2
    new-instance v17, Landroid/os/Message;

    .end local v17           #msg:Landroid/os/Message;
    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 168
    .restart local v17       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #Bndl:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 169
    .restart local v5       #Bndl:Landroid/os/Bundle;
    const-string v22, "status"

    const/16 v23, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v22, "total"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x3e8

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 175
    return-void

    .line 95
    .end local v6           #FixPerm:Ljava/lang/Process;
    .end local v8           #TFile:Ljava/io/File;
    .end local v16           #loopActive:Z
    .end local v21           #showMsg:Ljava/lang/String;
    .restart local v20       #reader:Ljava/util/Scanner;
    :cond_3
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, line:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    goto/16 :goto_2

    .line 98
    .end local v15           #line:Ljava/lang/String;
    :catchall_0
    move-exception v22

    .line 99
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V

    .line 100
    throw v22
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 101
    .end local v20           #reader:Ljava/util/Scanner;
    :catch_0
    move-exception v11

    .line 102
    .local v11, e:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 122
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #FixPerm:Ljava/lang/Process;
    .restart local v8       #TFile:Ljava/io/File;
    :cond_4
    const-wide/16 v22, 0x64

    :try_start_8
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception v22

    goto :goto_4

    .line 128
    .restart local v16       #loopActive:Z
    .restart local v21       #showMsg:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 129
    .local v12, i:I
    const-string v14, ""

    .line 131
    .local v14, lastMsg:Ljava/lang/String;
    :try_start_9
    new-instance v20, Ljava/util/Scanner;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 133
    .restart local v20       #reader:Ljava/util/Scanner;
    :cond_6
    :goto_6
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v22

    if-nez v22, :cond_a

    .line 145
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3

    .line 151
    .end local v20           #reader:Ljava/util/Scanner;
    :goto_7
    if-nez v6, :cond_7

    const/16 v16, 0x0

    .line 152
    :cond_7
    if-le v12, v4, :cond_8

    const/16 v16, 0x0

    .line 153
    :cond_8
    if-eqz v16, :cond_2

    .line 155
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 156
    move-object/from16 v21, v14

    .line 157
    new-instance v17, Landroid/os/Message;

    .end local v17           #msg:Landroid/os/Message;
    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 158
    .restart local v17       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #Bndl:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 159
    .restart local v5       #Bndl:Landroid/os/Bundle;
    const-string v22, "status"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v22, "pkg"

    const-string v23, "--Checking"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    :cond_9
    const-wide/16 v22, 0x64

    :try_start_c
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v22

    goto/16 :goto_5

    .line 135
    .restart local v20       #reader:Ljava/util/Scanner;
    :cond_a
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v15

    .line 136
    .restart local v15       #line:Ljava/lang/String;
    const-string v22, "--Checking"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 137
    add-int/lit8 v12, v12, 0x1

    .line 138
    move-object v14, v15

    .line 140
    :cond_b
    const-string v22, "-done-"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 141
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 144
    .end local v15           #line:Ljava/lang/String;
    :catchall_1
    move-exception v22

    .line 145
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V

    .line 146
    throw v22
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3

    .line 147
    .end local v20           #reader:Ljava/util/Scanner;
    :catch_3
    move-exception v11

    .line 148
    .restart local v11       #e:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 63
    .end local v4           #APKS:I
    .end local v5           #Bndl:Landroid/os/Bundle;
    .end local v6           #FixPerm:Ljava/lang/Process;
    .end local v7           #FixPermName:Ljava/lang/String;
    .end local v8           #TFile:Ljava/io/File;
    .end local v9           #TmpFile:Ljava/lang/String;
    .end local v10           #assetManager:Landroid/content/res/AssetManager;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v12           #i:I
    .end local v13           #in:Ljava/io/InputStream;
    .end local v14           #lastMsg:Ljava/lang/String;
    .end local v16           #loopActive:Z
    .end local v17           #msg:Landroid/os/Message;
    .end local v18           #out:Ljava/io/OutputStream;
    .end local v21           #showMsg:Ljava/lang/String;
    :catch_4
    move-exception v22

    goto/16 :goto_0

    .line 80
    .restart local v5       #Bndl:Landroid/os/Bundle;
    .restart local v7       #FixPermName:Ljava/lang/String;
    .restart local v10       #assetManager:Landroid/content/res/AssetManager;
    .restart local v13       #in:Ljava/io/InputStream;
    .restart local v17       #msg:Landroid/os/Message;
    .restart local v18       #out:Ljava/io/OutputStream;
    :catch_5
    move-exception v22

    goto/16 :goto_1

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v19       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v22

    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    goto/16 :goto_1
.end method
