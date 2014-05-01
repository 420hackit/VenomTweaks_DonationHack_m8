.class Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;
.super Ljava/lang/Object;
.source "ArrayPackageSelectorDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 132
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$1(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$1(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$2(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v4

    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mCode:I
    invoke-static {v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$3(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)I

    move-result v5

    iget-object v6, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;
    invoke-static {v6}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$4(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->dismiss()V

    .line 158
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$4(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 139
    .local v3, resId:I
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$0(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResize:Z
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$5(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #calls: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->resizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$6(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "bg.png"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v2, outStream:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 149
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 150
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 152
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$1(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->copyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$2(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 153
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$2(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v4

    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mCode:I
    invoke-static {v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$3(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)I

    move-result v5

    iget-object v6, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;
    invoke-static {v6}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->access$4(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;->onItemSelected(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->dismiss()V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v4

    goto :goto_1
.end method
