.class Lcom/m0narx/tweaks/cpu/ZRAM$2;
.super Ljava/lang/Object;
.source "ZRAM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/cpu/ZRAM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/cpu/ZRAM;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/cpu/ZRAM;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 138
    const-string v0, ""

    .line 139
    .local v0, cmd:Ljava/lang/String;
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-static {v8}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$0(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v6

    .line 140
    .local v6, selectedPos:I
    mul-int/lit16 v8, v6, 0x400

    mul-int/lit16 v7, v8, 0x400

    .line 143
    .local v7, size:I
    new-instance v2, Ljava/io/File;

    const-string v8, "/dev/block"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, dev:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_2

    .line 151
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "rmmod zram;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->zram:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-static {v8}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$0(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-static {v8}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$1(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v8

    if-lez v8, :cond_1

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "insmod /system/lib/modules/zram.ko num_devices="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-static {v9}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$1(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->zram_devs:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-static {v8}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$1(Lcom/m0narx/tweaks/cpu/ZRAM;)Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v8

    if-lt v4, v8, :cond_4

    .line 163
    .end local v4           #i:I
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, data:Landroid/os/Bundle;
    const-string v8, "cmd"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 166
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x64

    iput v8, v5, Landroid/os/Message;->what:I

    .line 167
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 168
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/ZRAM$2;->this$0:Lcom/m0narx/tweaks/cpu/ZRAM;

    #getter for: Lcom/m0narx/tweaks/cpu/ZRAM;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/m0narx/tweaks/cpu/ZRAM;->access$2(Lcom/m0narx/tweaks/cpu/ZRAM;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void

    .line 145
    .end local v1           #data:Landroid/os/Bundle;
    .end local v5           #msg:Landroid/os/Message;
    :cond_2
    aget-object v3, v9, v8

    .line 146
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zram"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "swapoff /dev/block/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 156
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #i:I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v9, "echo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > /sys/block/zram"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/disksize;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 158
    const-string v9, "mkswap /dev/block/zram"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 159
    const-string v9, "swapon -p 15 /dev/block/zram"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
