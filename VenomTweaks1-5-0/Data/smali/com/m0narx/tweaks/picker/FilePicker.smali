.class public Lcom/m0narx/tweaks/picker/FilePicker;
.super Lcom/htc/app/FilePickerActivity;
.source "FilePicker.java"


# static fields
.field public static final KEY_EXTENSION:Ljava/lang/String; = "ext"

.field public static final KEY_FILE_PREVIEW_TYPE:Ljava/lang/String; = "fileType"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;-><init>()V

    return-void
.end method

.method private quit(ILandroid/content/Intent;)V
    .locals 1
    .parameter "Result"
    .parameter "data"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/FilePicker;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/picker/FilePicker;->setResult(ILandroid/content/Intent;)V

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/FilePicker;->finish()V

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/FilePicker;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startFilePicker(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2
    .parameter "mContext"
    .parameter "extension"
    .parameter "Title"
    .parameter "RequestCode"

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/picker/FilePicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, FilePicker:Landroid/content/Intent;
    const-string v1, "ext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    return-void
.end method

.method public static startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "pref"
    .parameter "mContext"
    .parameter "extension"
    .parameter "Title"
    .parameter "RequestCode"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/picker/FilePicker;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, FilePicker:Landroid/content/Intent;
    const-string v1, "ext"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0, p4}, Lcom/m0narx/tweaks/custompreferences/Prefs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/FilePickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, data:Landroid/content/Intent;
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 65
    :try_start_0
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "output"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v2, "file"

    const-string v3, "output"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/m0narx/tweaks/picker/FilePicker;->quit(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v6, v7}, Lcom/m0narx/tweaks/picker/FilePicker;->quit(ILandroid/content/Intent;)V

    goto :goto_0

    .line 72
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "m0narX_tweaks"

    const-string v3, "Filepicker calceled!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, v6, v7}, Lcom/m0narx/tweaks/picker/FilePicker;->quit(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/htc/app/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/FilePicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 37
    .local v3, startParams:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v2, picker:Landroid/content/Intent;
    const-string v4, "com.htc.FilePicker"

    const-string v5, "com.htc.FilePicker.FilePicker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v1, localBundle:Landroid/os/Bundle;
    const-string v4, "application_name"

    const-string v5, "HTCFileManager"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v4, "viewType"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v4, "selectionType"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v4, "showPath"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    .line 45
    .local v0, exts:[Ljava/lang/String;
    const-string v4, "ext"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 46
    const-string v4, "filter"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    const-string v4, "UsbConnectionMode"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v4, "CloudFunctionEnabled"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v4, "returnDropBoxShareLinkEnable"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    const-string v4, "sort_type"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v4, "sort_order"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4}, Lcom/m0narx/tweaks/picker/FilePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method
