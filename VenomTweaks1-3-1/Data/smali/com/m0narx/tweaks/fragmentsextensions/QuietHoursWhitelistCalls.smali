.class public Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;
.super Landroid/app/Activity;
.source "QuietHoursWhitelistCalls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;,
        Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ViewHolder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_CONTACT_NUMBERS:Ljava/lang/String; = "tweaks_quiethours_allowed_contacts"

.field private static final MSG_CONTACTS_CURRENT:I = 0x2

.field private static final MSG_CONTACTS_LOADED:I = 0x3

.field private static final MSG_CONTACTS_TOTAL:I = 0x1

.field private static final MSG_CONTACT_ADDED:I

.field private static final PICKER_ADDCONTACT:I


# instance fields
.field ACTION:I

.field public AllContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private ContactList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field addActionImg:Z

.field builder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

.field contactImageSize:I

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field private handler:Landroid/os/Handler;

.field private loadDialog:Lcom/htc/app/HtcProgressDialog;

.field mContext:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;

.field progressDialog:Lcom/htc/app/HtcProgressDialog;

.field public selectedContactItem:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

.field useLongClick:Z

.field useRoundedCorners:Z

.field useVibrator:Z

.field vibratorTimeInMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->$assertionsDisabled:Z

    .line 238
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/16 v0, 0xc8

    iput v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactImageSize:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->useLongClick:Z

    .line 79
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->useVibrator:Z

    .line 80
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->vibratorTimeInMs:J

    .line 81
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->addActionImg:Z

    .line 82
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->useRoundedCorners:Z

    .line 240
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->handler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private LoadData()V
    .locals 11

    .prologue
    .line 190
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->Cr:Landroid/content/ContentResolver;

    const-string v7, "tweaks_quiethours_allowed_contacts"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, numbers:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, items:[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "total"

    array-length v7, v1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 201
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 203
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 216
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->handler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void

    .line 205
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #items:[Ljava/lang/String;
    .restart local v2       #msg:Landroid/os/Message;
    :cond_1
    aget-object v4, v1, v6

    .line 206
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    .line 209
    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->retrieveContactPhoto(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v9, p0, v4, v3, v10}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {v8, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->addItem(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;)V

    .line 210
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->saveSettingsSystem()V

    return-void
.end method

.method private getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 392
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 393
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 394
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 394
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 398
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 401
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 408
    return-object v7
.end method

.method private retrieveContactPhoto(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "phoneNumber"

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 367
    .local v2, photo:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 370
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    new-instance v5, Ljava/lang/Long;

    .line 372
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->fetchContactIdFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-direct {v5, v6}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 369
    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 366
    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 374
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 375
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 377
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    .end local v1           #inputStream:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 380
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_0
    sget-boolean v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 386
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveSettingsSystem()V
    .locals 5

    .prologue
    .line 222
    const-string v1, ""

    .line 224
    .local v1, numbers:Ljava/lang/String;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_quiethours_allowed_contacts"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    return-void

    .line 224
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    .line 226
    .local v0, item:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->PhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public fetchContactIdFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 465
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 466
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 467
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 467
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 471
    .local v7, cursor:Landroid/database/Cursor;
    const-string v6, ""

    .line 473
    .local v6, contactId:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 478
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, name:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 484
    return-object v6
.end method

.method public getPhotoFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "imageUri"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 493
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 492
    invoke-static {v2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 494
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 499
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 420
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 429
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 430
    const/4 v7, 0x0

    .line 433
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 436
    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 437
    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 438
    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 439
    const-string v4, "photo_uri"

    aput-object v4, v2, v3

    .line 440
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 434
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 442
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, name:Ljava/lang/String;
    new-instance v6, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;

    .line 447
    invoke-direct {p0, v9}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->retrieveContactPhoto(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    invoke-direct {v6, p0, v9, v8, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 449
    .local v6, contact:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0, v6}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->addItem(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;)V

    .line 450
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v6           #contact:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 455
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->startManagingCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    if-eqz v7, :cond_3

    .line 455
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->startManagingCursor(Landroid/database/Cursor;)V

    .line 457
    :cond_3
    throw v0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f0a0080

    const/4 v5, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->Cr:Landroid/content/ContentResolver;

    .line 105
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->pm:Landroid/content/pm/PackageManager;

    .line 107
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->mContext:Landroid/content/Context;

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->AllContacts:Ljava/util/ArrayList;

    .line 112
    const v3, 0x7f0a0370

    .line 111
    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 113
    .local v1, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 115
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v2, mActionButton:Lcom/htc/widget/ActionBarItemView;
    const/high16 v3, 0x208

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 117
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x204025c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 129
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->setContentView(I)V

    .line 131
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 132
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 133
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    .line 135
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 136
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 137
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 138
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 147
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    .line 160
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 162
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 164
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->ContactList:Lcom/htc/widget/HtcListView;

    .line 165
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$5;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    .line 174
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 175
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 177
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 179
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->LoadData()V

    .line 186
    return-void
.end method
