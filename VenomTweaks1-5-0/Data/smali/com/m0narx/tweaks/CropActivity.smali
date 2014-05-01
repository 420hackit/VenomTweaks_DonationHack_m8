.class public Lcom/m0narx/tweaks/CropActivity;
.super Landroid/app/Activity;
.source "CropActivity.java"


# instance fields
.field fileUri:Landroid/net/Uri;

.field folder_type:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 41
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/m0narx/tweaks/CropActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a045b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/CropActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a045c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/CropActivity;->startAlbum()V

    .line 50
    invoke-virtual {p0}, Lcom/m0narx/tweaks/CropActivity;->finish()V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iput-object p0, p0, Lcom/m0narx/tweaks/CropActivity;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/m0narx/tweaks/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 26
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "fileUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/CropActivity;->fileUri:Landroid/net/Uri;

    .line 27
    const-string v2, "folder_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/CropActivity;->folder_type:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, cropIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/m0narx/tweaks/CropActivity;->fileUri:Landroid/net/Uri;

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    const-string v2, "output"

    iget-object v3, p0, Lcom/m0narx/tweaks/CropActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    const/16 v2, 0x7b

    invoke-virtual {p0, v0, v2}, Lcom/m0narx/tweaks/CropActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method public startAlbum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v1, p0, Lcom/m0narx/tweaks/CropActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_screenshot"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "folder_type"

    iget-object v2, p0, Lcom/m0narx/tweaks/CropActivity;->folder_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/m0narx/tweaks/CropActivity;->fileUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/m0narx/tweaks/CropActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
