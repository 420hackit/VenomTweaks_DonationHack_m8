.class Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;
.super Ljava/lang/Object;
.source "Navbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 19
    .parameter
    .parameter "arg1"
    .parameter "appPos"
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
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarListAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;

    move-result-object v17

    .line 109
    .local v17, item:Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->res:Landroid/content/res/Resources;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->resId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 111
    .local v15, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 112
    .local v9, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v11, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {v15, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    .line 121
    .local v12, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    .line 123
    .local v10, cacheDir:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v13, destTmp:Ljava/io/File;
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v18, outStream:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v9, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 132
    const-string v14, "/data/system/custom_navbar.png"

    .line 134
    .local v14, destination:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cp -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.png "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";chmod 666 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_custom_navbar"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    const/16 v2, 0x3ed

    const/16 v3, 0xa4

    const/4 v4, 0x1

    .line 139
    invoke-static {v9, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    .local v1, resized:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x4387

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 145
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 145
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 148
    .local v8, bMapRotate:Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/File;

    .end local v13           #destTmp:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp2.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v13       #destTmp:Ljava/io/File;
    new-instance v18, Ljava/io/FileOutputStream;

    .end local v18           #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .restart local v18       #outStream:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v8, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 153
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 155
    const-string v14, "/data/system/custom_navbar_land.png"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cp -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp2.png "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";chmod 666 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_trans_navbar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const-string v2, "pkill com.htc.launcher;"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v1           #resized:Landroid/graphics/Bitmap;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #bMapRotate:Landroid/graphics/Bitmap;
    .end local v10           #cacheDir:Ljava/io/File;
    .end local v13           #destTmp:Ljava/io/File;
    .end local v14           #destination:Ljava/lang/String;
    .end local v18           #outStream:Ljava/io/FileOutputStream;
    :goto_0
    const v2, 0x7f0a02ca

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->finish()V

    .line 175
    return-void

    .line 163
    :catch_0
    move-exception v16

    .line 165
    .local v16, e:Ljava/io/FileNotFoundException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v16

    .line 168
    .local v16, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
