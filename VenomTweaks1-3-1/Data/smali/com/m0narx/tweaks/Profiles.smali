.class public Lcom/m0narx/tweaks/Profiles;
.super Landroid/app/Activity;
.source "Profiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;,
        Lcom/m0narx/tweaks/Profiles$ViewHolder;
    }
.end annotation


# static fields
.field private static ProfileToRestore:Ljava/lang/String;


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private ProfileList:Lcom/htc/widget/HtcListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbh:Lcom/m0narx/tweaks/provider/DBLocal;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

.field private mContext:Landroid/content/Context;

.field private mRes:Landroid/content/res/Resources;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private prefXMLFile:Ljava/lang/String;

.field private restartMain:Z

.field private venomProfilesDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/Profiles;->ProfileToRestore:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles;->dbh:Lcom/m0narx/tweaks/provider/DBLocal;

    .line 65
    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/Profiles;->restartMain:Z

    .line 215
    new-instance v0, Lcom/m0narx/tweaks/Profiles$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Profiles$1;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles;->handler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private LoadData()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->clear()V

    .line 272
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT id, name FROM profiles;"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 273
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_1
    return-void
.end method

.method private NewProfile(Ljava/lang/String;)V
    .locals 11
    .parameter "ProfileName"

    .prologue
    const/4 v10, 0x0

    .line 381
    const-string v0, "0"

    .line 382
    .local v0, FileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 384
    .local v6, unique:Z
    move-object v2, p1

    .line 385
    .local v2, TmpProfileName:Ljava/lang/String;
    const/4 v5, 0x1

    .line 386
    .local v5, i:I
    :goto_0
    if-eqz v6, :cond_3

    .line 395
    move-object p1, v2

    .line 396
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "INSERT INTO profiles(name) VALUES(\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 397
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT id, name FROM profiles;"

    invoke-virtual {v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 398
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 399
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 402
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/m0narx/tweaks/Profiles;->venomProfilesDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, ProfileFile:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/m0narx/tweaks/Profiles;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tmp.csv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, destTmp:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sqlite3 /data/data/com.android.providers.settings/databases/settings.db \"select name,value from system where name like \'tweaks_%\' or name like \'battery_%\'\" >"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cp -f "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";chmod 666 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v7, p1, v0}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->notifyDataSetChanged()V

    .line 418
    :cond_2
    return-void

    .line 387
    .end local v1           #ProfileFile:Ljava/lang/String;
    .end local v4           #destTmp:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SELECT id, name FROM profiles WHERE name LIKE \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\';"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_5

    .line 389
    :cond_4
    const/4 v6, 0x1

    .line 393
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 391
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private RenameProfile(ILjava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "ProfileName"

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    .line 363
    .local v2, i:I
    move-object v0, p2

    .line 364
    .local v0, TmpProfileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 365
    .local v3, unique:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 374
    move-object p2, v0

    .line 375
    iget-object v4, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UPDATE profiles SET name = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' WHERE id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v6, p1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->renameItem(ILjava/lang/String;)V

    .line 377
    return-void

    .line 366
    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT id, name FROM profiles WHERE name LIKE \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    :cond_1
    const/4 v3, 0x1

    .line 372
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private SaveProfile(ZI)V
    .locals 5
    .parameter "isNew"
    .parameter "index"

    .prologue
    .line 329
    new-instance v1, Lcom/htc/widget/HtcEditText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, input:Lcom/htc/widget/HtcEditText;
    const v0, 0x7f0a008b

    .line 331
    .local v0, TitleRes:I
    if-nez p1, :cond_0

    .line 332
    const v0, 0x7f0a008c

    .line 333
    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v2, p2}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setTextColor(I)V

    .line 336
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    iget-object v3, p0, Lcom/m0narx/tweaks/Profiles;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 339
    const v3, 0x7f0a0056

    .line 340
    new-instance v4, Lcom/m0narx/tweaks/Profiles$7;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/m0narx/tweaks/Profiles$7;-><init>(Lcom/m0narx/tweaks/Profiles;Lcom/htc/widget/HtcEditText;ZI)V

    .line 339
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 351
    const v3, 0x7f0a001d

    .line 352
    new-instance v4, Lcom/m0narx/tweaks/Profiles$8;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/Profiles$8;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    .line 351
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 357
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Profiles;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/Profiles;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/m0narx/tweaks/Profiles;->restartPhone()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/Profiles;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/Profiles;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/m0narx/tweaks/Profiles;->restartMain:Z

    return v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/Profiles;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/Profiles;->SaveProfile(ZI)V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/Profiles;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/Profiles;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/Profiles;->restoreProfile(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/Profiles;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/Profiles;->NewProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/m0narx/tweaks/Profiles;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/Profiles;->RenameProfile(ILjava/lang/String;)V

    return-void
.end method

.method private removeProfile(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 315
    iget-object v5, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, FileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m0narx/tweaks/Profiles;->venomProfilesDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, ProfileFile:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v3, pFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m0narx/tweaks/Profiles;->venomProfilesDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, XMLProfileFile:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, xFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 322
    iget-object v5, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DELETE FROM profiles WHERE id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v7, p1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->removeItem(I)V

    .line 324
    iget-object v5, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->notifyDataSetChanged()V

    .line 325
    return-void
.end method

.method private restartPhone()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 189
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 190
    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 191
    const v1, 0x7f0a0056

    .line 192
    new-instance v2, Lcom/m0narx/tweaks/Profiles$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Profiles$5;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 202
    const v1, 0x7f0a001d

    .line 203
    new-instance v2, Lcom/m0narx/tweaks/Profiles$6;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Profiles$6;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 214
    return-void
.end method

.method private restoreProfile(Ljava/lang/Integer;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/Profiles;->ProfileToRestore:Ljava/lang/String;

    .line 177
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 178
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 180
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 181
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    .local v0, RestoreProfile:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method


# virtual methods
.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 263
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v1, 0x1

    .line 266
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 300
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;

    .line 301
    .local v0, ListItem:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 303
    :pswitch_0
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/m0narx/tweaks/Profiles;->SaveProfile(ZI)V

    move v2, v3

    .line 304
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v2, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/Profiles;->removeProfile(I)V

    move v2, v3

    .line 307
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x7f050015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->Cr:Landroid/content/ContentResolver;

    .line 82
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->mRes:Landroid/content/res/Resources;

    .line 83
    iput-object p0, p0, Lcom/m0narx/tweaks/Profiles;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "sdcard/Venom/Profiles"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, oldFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm -r "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    :cond_0
    const-string v1, "sdcard/Venom/ProfilesBackup"

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->venomProfilesDir:Ljava/lang/String;

    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->inflater:Landroid/view/LayoutInflater;

    .line 95
    new-instance v1, Lcom/m0narx/tweaks/provider/DBLocal;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/provider/DBLocal;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->dbh:Lcom/m0narx/tweaks/provider/DBLocal;

    .line 96
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->dbh:Lcom/m0narx/tweaks/provider/DBLocal;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/provider/DBLocal;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->dbh:Lcom/m0narx/tweaks/provider/DBLocal;

    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/provider/DBLocal;->CreateTblIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    const v1, 0x7f0a0089

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 100
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->setContentView(I)V

    .line 102
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 103
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 107
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 108
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 109
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20800a3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 110
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/Profiles$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Profiles$2;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/m0narx/tweaks/Profiles$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Profiles$3;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    .line 131
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/m0narx/tweaks/Profiles$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/Profiles$4;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    new-instance v1, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;-><init>(Lcom/m0narx/tweaks/Profiles;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    .line 168
    invoke-direct {p0}, Lcom/m0narx/tweaks/Profiles;->LoadData()V

    .line 169
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Profiles;->registerForContextMenu(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles;->ProfileList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 285
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 287
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f050007

    if-ne v2, v3, :cond_0

    .line 290
    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles;->mAdapter:Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 291
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 292
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0c

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 224
    sget-object v7, Lcom/m0narx/tweaks/Profiles;->ProfileToRestore:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/m0narx/tweaks/Profiles;->venomProfilesDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/m0narx/tweaks/Profiles;->ProfileToRestore:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, ProfileFile:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, fstream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, strLine:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 248
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    .end local v0           #ProfileFile:Ljava/lang/String;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #strLine:Ljava/lang/String;
    :cond_0
    :goto_1
    iput-boolean v12, p0, Lcom/m0narx/tweaks/Profiles;->restartMain:Z

    .line 256
    sget-object v7, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 257
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :goto_2
    return-void

    .line 233
    .restart local v0       #ProfileFile:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, tweak:[Ljava/lang/String;
    array-length v7, v6

    if-eq v7, v12, :cond_4

    .line 235
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/Profiles;->isInteger(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->Cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 249
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #strLine:Ljava/lang/String;
    .end local v6           #tweak:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 250
    .local v2, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 238
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #strLine:Ljava/lang/String;
    .restart local v6       #tweak:[Ljava/lang/String;
    :cond_2
    :try_start_3
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 239
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->Cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 241
    :cond_3
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->Cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 245
    :cond_4
    iget-object v7, p0, Lcom/m0narx/tweaks/Profiles;->Cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, ""

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 248
    .end local v6           #tweak:[Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method
