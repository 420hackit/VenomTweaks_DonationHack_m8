.class Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;
.super Ljava/lang/Object;
.source "Underlay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "arg1"
    .parameter "iconPos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    iget-object v10, v10, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->chooser:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 109
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    iget-object v11, v10, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->res:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;
    invoke-static {v10}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;

    move-result-object v10

    iget-object v10, v10, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$iconGridAdapter;->mResIds:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 111
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 121
    .local v4, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 123
    .local v2, cacheDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/tmp.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v5, destTmp:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v9, outStream:Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 132
    const-string v6, "/data/system/icon_underlay.png"

    .line 134
    .local v6, destination:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cp -f "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/tmp.png "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";chmod 666 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_icon_underlay"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/Underlay;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_rosie_theme"

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    const-string v10, "pkill com.htc.launcher;"

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    const-string v10, "pkill com.htc.lockscreen"

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v2           #cacheDir:Ljava/io/File;
    .end local v5           #destTmp:Ljava/io/File;
    .end local v6           #destination:Ljava/lang/String;
    .end local v9           #outStream:Ljava/io/FileOutputStream;
    :goto_0
    const v10, 0x7f0a02cb

    const/4 v11, 0x0

    invoke-static {v4, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 154
    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/Underlay$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;->finish()V

    .line 158
    return-void

    .line 143
    :catch_0
    move-exception v8

    .line 145
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 148
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
