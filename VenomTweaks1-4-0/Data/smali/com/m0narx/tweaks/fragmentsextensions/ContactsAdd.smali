.class public Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;
.super Landroid/app/Activity;
.source "ContactsAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = ""

.field private static final KEY_CONTACT:Ljava/lang/String; = "tweaks_contact_"

.field private static final KEY_CONTACT_COUNT:Ljava/lang/String; = "tweaks_contact_widget_count"

.field private static final MSG_CONTACTS_CURRENT:I = 0x2

.field private static final MSG_CONTACTS_LOADED:I = 0x3

.field private static final MSG_CONTACTS_TOTAL:I = 0x1

.field private static final MSG_CONTACT_ADDED:I

.field private static final PICKER_ADDCONTACT:I


# instance fields
.field ACTION:I

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private ContactList:Lcom/htc/widget/HtcListView;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field addActionImg:Z

.field builder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

.field contactData:Landroid/net/Uri;

.field contactImageSize:I

.field private contacts:Z

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field private handler:Landroid/os/Handler;

.field private loadDialog:Lcom/htc/app/HtcProgressDialog;

.field mContext:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;

.field progressDialog:Lcom/htc/app/HtcProgressDialog;

.field useLongClick:Z

.field useRoundedCorners:Z

.field useVibrator:Z

.field vibratorTimeInMs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/16 v0, 0xc8

    iput v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactImageSize:I

    .line 77
    iput-boolean v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->useLongClick:Z

    .line 78
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->useVibrator:Z

    .line 79
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->vibratorTimeInMs:J

    .line 80
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->addActionImg:Z

    .line 81
    iput-boolean v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->useRoundedCorners:Z

    .line 90
    iput-boolean v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contacts:Z

    .line 245
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private LoadData()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 190
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v7, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->Cr:Landroid/content/ContentResolver;

    const-string v9, "tweaks_contact_widget_count"

    invoke-static {v8, v9, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 194
    .local v3, contactCount:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "total"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 199
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 200
    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    .line 201
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    if-eqz v3, :cond_0

    .line 204
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_2

    .line 209
    .end local v4           #i:I
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 236
    .end local v4           #i:I
    :cond_1
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void

    .line 205
    .restart local v4       #i:I
    :cond_2
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->Cr:Landroid/content/ContentResolver;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tweaks_contact_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, contact:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 214
    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, cont:[Ljava/lang/String;
    const-string v6, ""

    .line 218
    .local v6, name:Ljava/lang/String;
    aget-object v8, v1, v13

    if-eqz v8, :cond_4

    aget-object v8, v1, v13

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 219
    aget-object v8, v1, v13

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 220
    :cond_4
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a039b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 224
    :goto_2
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    .line 226
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 227
    const/4 v10, 0x6

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 228
    const/4 v11, 0x4

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 226
    invoke-direct {p0, v10, v11}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContactImage(ILjava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    invoke-virtual {v8, v6, v9}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    .end local v1           #cont:[Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 222
    .restart local v1       #cont:[Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :cond_6
    aget-object v6, v1, v13

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;ILjava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContactImage(ILjava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->removeSingleContact(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->saveSettingsSystem()V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    .prologue
    .line 463
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 464
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 465
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f05006c

    .line 466
    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    .line 465
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 474
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f0a037b

    .line 475
    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$8;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$8;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    .line 474
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 482
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method private getBitmapWithOverlay(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "paramBitmap"
    .parameter "paramInt"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 515
    .local v4, res:Landroid/content/res/Resources;
    if-nez p1, :cond_1

    .line 516
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 517
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 519
    const v6, 0x7f020011

    .line 518
    invoke-static {v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 524
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    .local v2, image:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v0, 0x0

    .line 526
    .local v0, actionIcon:Landroid/graphics/Bitmap;
    const/16 v5, 0x32

    .line 528
    .local v5, widthNHeight:I
    packed-switch p2, :pswitch_data_0

    .line 557
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_2

    .line 560
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 564
    :goto_2
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 567
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 568
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 569
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 565
    invoke-virtual {v1, v0, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 571
    :cond_0
    return-object v2

    .line 521
    .end local v0           #actionIcon:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #image:Landroid/graphics/Bitmap;
    .end local v5           #widthNHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 521
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2       #image:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 531
    .restart local v0       #actionIcon:Landroid/graphics/Bitmap;
    .restart local v5       #widthNHeight:I
    :pswitch_0
    const v6, 0x7f02002a

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 530
    invoke-static {v6, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 533
    goto :goto_1

    .line 537
    :pswitch_1
    const v6, 0x7f02002b

    .line 536
    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    goto :goto_1

    .line 542
    :pswitch_2
    const v6, 0x7f02002c

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 541
    invoke-static {v6, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    goto :goto_1

    .line 547
    :pswitch_3
    const v6, 0x7f020030

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 546
    invoke-static {v6, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 549
    goto :goto_1

    .line 552
    :pswitch_4
    const v6, 0x7f020038

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 551
    invoke-static {v6, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 562
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    :cond_2
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getContactImage(ILjava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "action"
    .parameter "paramLong"

    .prologue
    .line 576
    .line 577
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->openPhoto(J)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    invoke-direct {p0, v0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getBitmapWithOverlay(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private removeSingleContact(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->saveSettingsSystem()V

    .line 328
    .end local v0           #i:I
    :cond_0
    return-void

    .line 320
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_contact_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveSettingsSystem()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 287
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v4, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 300
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 301
    .local v2, listSize:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_contact_widget_count"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 309
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_4

    .line 315
    .end local v0           #i:I
    .end local v2           #listSize:I
    .end local v4           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 292
    .restart local v0       #i:I
    .restart local v4       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, tempString:Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v5           #tempString:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 305
    .end local v1           #j:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .restart local v2       #listSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tweaks_contact_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 305
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "tweaks_contact_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 310
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 427
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactData:Landroid/net/Uri;

    .line 435
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->start()V

    goto :goto_0

    .line 430
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

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->Cr:Landroid/content/ContentResolver;

    .line 107
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->pm:Landroid/content/pm/PackageManager;

    .line 109
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x204025c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 129
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->setContentView(I)V

    .line 131
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 132
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 133
    new-instance v3, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    .line 135
    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 136
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 137
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 138
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 147
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    .line 160
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 162
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 164
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;

    .line 165
    new-instance v4, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$5;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$5;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    .line 174
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 175
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 177
    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;

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

.method public openPhoto(J)Ljava/io/InputStream;
    .locals 9
    .parameter "paramLong"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 584
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 583
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 584
    const-string v2, "photo"

    .line 583
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, localUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 586
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 587
    .local v8, localCursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 602
    :goto_0
    return-object v3

    .line 590
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 592
    .local v6, arrayOfByte:[B
    if-eqz v6, :cond_1

    .line 593
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .local v7, localByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 595
    goto :goto_0

    .line 598
    .end local v6           #arrayOfByte:[B
    .end local v7           #localByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v0

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 600
    throw v0

    .line 599
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->LoadData()V

    .line 186
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 444
    iput-object p0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    .line 445
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    .line 446
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 448
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 449
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    .line 450
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 451
    .local v0, negativ:Landroid/widget/Button;
    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$6;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$6;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .end local v0           #negativ:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public startProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    .line 487
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a037e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v0, v1, v2, v4, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 488
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V

    .line 507
    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$9;->start()V

    .line 508
    return-void
.end method
