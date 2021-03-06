.class public Lcom/m0narx/tweaks/widgets/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# static fields
.field private static DonationAppName:[Ljava/lang/String;

.field private static DonationDialog:I

.field private static DonationStatus:Z

.field private static DonationTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 343
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/widgets/Misc;->DonationAppName:[Ljava/lang/String;

    .line 356
    const/4 v0, 0x0

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Misc;->DonationStatus:Z

    .line 359
    sput v1, Lcom/m0narx/tweaks/widgets/Misc;->DonationDialog:I

    .line 377
    sput v1, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "mContext"
    .parameter "destination"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 463
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tmp.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, destTmp:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 469
    .local v3, outStream:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 470
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 471
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cp -f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tmp.png "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 474
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";chmod 666 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 473
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v2

    .line 477
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 480
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static InstallBg(Landroid/app/Activity;I)V
    .locals 3
    .parameter "mContext"
    .parameter "BgVal"

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 416
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 415
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    return-void
.end method

.method public static InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V
    .locals 3
    .parameter "pref"
    .parameter "mContext"
    .parameter "BgVal"

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 422
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 421
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 424
    return-void
.end method

.method public static InstallBgCrop(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Landroid/net/Uri;III)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"
    .parameter "uri"
    .parameter "aspectX"
    .parameter "aspectY"
    .parameter "BgVal"

    .prologue
    const/4 v5, 0x1

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 441
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, destTmp:Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v3, "scale"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v3, "outputX"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v3, "outputY"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v3, "aspectX"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v3, "aspectY"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string v3, "noFaceDetection"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const-string v3, "return-data"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v3, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v2, p5}, Lcom/m0narx/tweaks/custompreferences/Prefs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 457
    return-void
.end method

.method private static ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "file"

    .prologue
    .line 126
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, mFile:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, strContent:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 131
    .local v1, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .end local v1           #fin:Ljava/io/FileInputStream;
    .local v2, fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 137
    .end local v0           #ch:I
    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v1       #fin:Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 133
    .end local v1           #fin:Ljava/io/FileInputStream;
    .restart local v0       #ch:I
    .restart local v2       #fin:Ljava/io/FileInputStream;
    :cond_0
    int-to-char v5, v0

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    .end local v0           #ch:I
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v1       #fin:Ljava/io/FileInputStream;
    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static addBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "Name"
    .parameter "Value"

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, " >> /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, ShellCMD:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkSDdir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dir"

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->sdcard()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Venom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, cdir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->sdcard()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Venom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static checkZipContent(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .parameter "zipFile"
    .parameter "filesToCheck"

    .prologue
    const/4 v5, 0x0

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v1, file:Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v4, zip:Ljava/util/zip/ZipInputStream;
    const/4 v3, 0x0

    .line 154
    .local v3, ze:Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_1

    .line 164
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 168
    .end local v1           #file:Ljava/io/FileInputStream;
    .end local v3           #ze:Ljava/util/zip/ZipEntry;
    .end local v4           #zip:Ljava/util/zip/ZipInputStream;
    :goto_0
    return v5

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #file:Ljava/io/FileInputStream;
    .restart local v3       #ze:Ljava/util/zip/ZipEntry;
    .restart local v4       #zip:Ljava/util/zip/ZipInputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, p1

    if-ge v2, v6, :cond_0

    .line 157
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    const/4 v5, 0x1

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v2           #i:I
    :catch_1
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sourceStr"
    .parameter "targetStr"

    .prologue
    .line 88
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, target:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, source:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-static {v1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v3, "m0narX_tweaks"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyFile: Can\'t copy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "m0narX_tweaks"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyFile: Can\'t copy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 12
    .parameter "mContext"
    .parameter "SourceURI"
    .parameter "Destination"

    .prologue
    .line 307
    const-string v7, ""

    .line 308
    .local v7, FileSource:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    .line 309
    check-cast v0, Landroid/app/Activity;

    .line 310
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 311
    .local v10, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 312
    .local v9, cindex:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v8, Source:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v6, Dest:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    .line 320
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 324
    :cond_1
    :try_start_0
    invoke-static {v8, v6}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    const-string v1, "/tmp.png "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";chmod 666 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v11

    .line 326
    .local v11, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    .end local v11           #e:Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 334
    .restart local v11       #e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    .end local v11           #e:Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 175
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-gez v1, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 179
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static deleteBuildPropValue(Ljava/lang/String;)V
    .locals 3
    .parameter "Name"

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sed \'/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/d\' /system/build.prop\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, ShellCMD:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 54
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    :goto_1
    return v3

    .line 48
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Misc;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 49
    .local v2, success:Z
    if-nez v2, :cond_2

    .line 50
    const/4 v3, 0x0

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "mContext"
    .parameter "ab"

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 200
    new-instance v0, Lcom/m0narx/tweaks/widgets/Misc$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/Misc$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    .line 405
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 406
    .local v2, dec:[B
    const-string v0, ""

    .line 408
    .local v0, Str:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #Str:Ljava/lang/String;
    .local v1, Str:Ljava/lang/String;
    move-object v0, v1

    .line 411
    .end local v1           #Str:Ljava/lang/String;
    .restart local v0       #Str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 409
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 396
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarText;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v1, "VmlwZXI"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "Name"

    .prologue
    .line 215
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 217
    .local v0, buildProp:Ljava/util/Properties;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/build.prop"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 222
    :catch_0
    move-exception v1

    .line 224
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getDonationTimeOut()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 380
    sget v3, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 381
    sput v5, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I

    .line 382
    new-instance v0, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/Customization;-><init>()V

    .line 383
    .local v0, cust:Lcom/m0narx/tweaks/widgets/Customization;
    const-string v3, "timeout"

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/widgets/Customization;->getDonationSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, val:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    sget v3, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I

    return v3

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Ljava/lang/Exception;
    sput v5, Lcom/m0narx/tweaks/widgets/Misc;->DonationTimeOut:I

    goto :goto_0
.end method

.method public static getImage([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "image"

    .prologue
    .line 495
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    .local v0, config:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 497
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getImage(Landroid/content/Context;Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "res"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 527
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 530
    const/4 v3, 0x1

    invoke-static {v0, p3, p4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 529
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getKernelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLowResDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawable"

    .prologue
    .line 505
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 511
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x32

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 516
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    .line 518
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local p0
    :goto_0
    return-object p0

    .line 517
    .restart local p0
    :catch_0
    move-exception v2

    .line 518
    .local v2, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isDonationDialogEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    sget v4, Lcom/m0narx/tweaks/widgets/Misc;->DonationDialog:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 364
    sput v3, Lcom/m0narx/tweaks/widgets/Misc;->DonationDialog:I

    .line 365
    new-instance v0, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/Customization;-><init>()V

    .line 366
    .local v0, cust:Lcom/m0narx/tweaks/widgets/Customization;
    const-string v4, "enable"

    invoke-virtual {v0, v4}, Lcom/m0narx/tweaks/widgets/Customization;->getDonationSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    :cond_0
    sput v2, Lcom/m0narx/tweaks/widgets/Misc;->DonationDialog:I

    .line 374
    :cond_1
    sget v4, Lcom/m0narx/tweaks/widgets/Misc;->DonationDialog:I

    if-nez v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "mContext"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static restartPieService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 486
    const-string v1, "am force-stop com.android.lmt"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lmt"

    const-string v2, "com.android.lmt.TouchService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 491
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 492
    return-void
.end method

.method public static sdcard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 108
    const-string v0, "/storage/sdcard0"

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/mnt/sdcard"

    goto :goto_0
.end method

.method public static setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;
    .locals 4
    .parameter "mContext"
    .parameter "TextResID"

    .prologue
    .line 184
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 185
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 185
    invoke-direct {v1, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 187
    .local v1, abExt:Lcom/htc/widget/ActionBarExt;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 189
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, actionbartext:Lcom/htc/widget/ActionBarText;
    invoke-virtual {v2, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 191
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 193
    .local v0, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 194
    return-object v0
.end method

.method public static setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "Name"
    .parameter "NewValue"

    .prologue
    .line 236
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Misc;->getBuildPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, Value:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v1

    .line 238
    .local v1, isSYSRW:Z
    if-nez v1, :cond_0

    .line 239
    const-string v2, "busybox mount -o remount,rw /system;"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    :cond_0
    if-nez v0, :cond_2

    .line 242
    invoke-static {p0, p1}, Lcom/m0narx/tweaks/widgets/Misc;->addBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    if-nez v1, :cond_1

    .line 247
    const-string v2, "busybox mount -o remount,ro /system;"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    :cond_1
    return-void

    .line 244
    :cond_2
    invoke-static {p0, v0, p1}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setBuildPropValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "Name"
    .parameter "OldValue"
    .parameter "NewValue"

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sed -i \'/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/s/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/g\' /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, ShellCMD:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setHTCListBackground(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    const-string v2, "common_list_item_background"

    const v3, 0x208003b

    .line 73
    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public static setHTCStyledTextView(Landroid/widget/TextView;Z)V
    .locals 2
    .parameter "text"
    .parameter "isBold"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    const v1, 0x2030038

    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    const v1, 0x2030046

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
