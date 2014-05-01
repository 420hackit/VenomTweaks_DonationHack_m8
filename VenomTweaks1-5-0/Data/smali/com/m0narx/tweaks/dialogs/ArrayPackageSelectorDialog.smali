.class public Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
.super Lcom/htc/dialog/HtcAlertDialog;
.source "ArrayPackageSelectorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;,
        Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ViewHolder;
    }
.end annotation


# static fields
.field public static final CODE:I = 0x1

.field public static final CODE_FOLDER:I = 0x2


# instance fields
.field private mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

.field private mCode:I

.field private mColumns:I

.field private mFile:Ljava/lang/String;

.field private mList:Lcom/htc/widget/HtcGridView;

.field private mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

.field private mRemoteResources:Landroid/content/res/Resources;

.field private mResIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResize:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "code"
    .parameter "columns"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;-><init>(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResize:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mCode:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mColumns:I

    .line 52
    iput-object p2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    .line 53
    iput p3, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mCode:I

    .line 54
    iput p4, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mColumns:I

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mCode:I

    return v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResize:Z

    return v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->resizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "orig"

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.htc.launcher"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 98
    .local v3, res:Landroid/content/res/Resources;
    const-string v6, "home_folder_base"

    const-string v7, "drawable"

    const-string v8, "com.htc.launcher"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, id:I
    if-nez v2, :cond_1

    .line 115
    .end local v2           #id:I
    .end local v3           #res:Landroid/content/res/Resources;
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 102
    .restart local v2       #id:I
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local p1
    :cond_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 104
    .local v4, target:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 105
    .local v1, height:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 107
    .local v5, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 111
    const/4 v6, 0x0

    invoke-static {p1, v5, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 112
    .end local v1           #height:I
    .end local v2           #id:I
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #target:Landroid/graphics/drawable/Drawable;
    .end local v5           #width:I
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "Source"
    .parameter "Destination"

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, Dest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 184
    :cond_2
    :try_start_0
    invoke-static {p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cp -f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.png "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";chmod 666 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mView:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mView:Landroid/view/View;

    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcGridView;

    iput-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    .line 123
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcGridView;->setAnimationCacheEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcGridView;->setDrawingCacheEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcGridView;->setSmoothScrollbarEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcGridView;->setScrollingCacheEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    iget v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mColumns:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    .line 129
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    new-instance v2, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$1;-><init>(Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mList:Lcom/htc/widget/HtcGridView;

    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setCancelable(Z)V

    .line 165
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setView(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 170
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 177
    .end local v0           #i:I
    :cond_0
    return-void

    .line 172
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mAdapter:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog$ImagesAdapter;->addItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAutoResize(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResize:Z

    .line 89
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mFile:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPackage(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .parameter "pkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, icons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    .line 80
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 81
    iput-object p2, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pkg"
    .parameter "arrayname"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    .line 60
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    const-string v6, "array"

    invoke-virtual {v5, p2, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, arrayId:I
    if-lez v0, :cond_0

    .line 62
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, mResNames:[Ljava/lang/String;
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 64
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_1

    .line 74
    .end local v0           #arrayId:I
    .end local v2           #i:I
    .end local v3           #mResNames:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 65
    .restart local v0       #arrayId:I
    .restart local v2       #i:I
    .restart local v3       #mResNames:[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    aget-object v6, v3, v2

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, resId:I
    if-lez v4, :cond_2

    .line 67
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mResIds:Landroid/util/SparseArray;

    aget-object v6, v3, v2

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0           #arrayId:I
    .end local v2           #i:I
    .end local v3           #mResNames:[Ljava/lang/String;
    .end local v4           #resId:I
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->mRemoteResources:Landroid/content/res/Resources;

    goto :goto_1
.end method
