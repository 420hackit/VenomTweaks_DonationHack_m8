.class public Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# instance fields
.field private CONTACT:[Ljava/lang/String;

.field cr:Landroid/content/ContentResolver;

.field cursor:Landroid/database/Cursor;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cr:Landroid/content/ContentResolver;

    .line 28
    return-void
.end method

.method private getCorrectNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 97
    .local v3, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 100
    .local v2, num:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 101
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v3, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    .end local v0           #country:Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 112
    .end local v2           #num:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :goto_1
    return-object v4

    .line 105
    .restart local v2       #num:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v3       #util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v1           #e:Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v2           #num:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkContact()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    return-object v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const-string v2, "nA"

    aput-object v2, v1, v0

    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContact(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 13
    .parameter "contactUri"
    .parameter "action"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    .line 34
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    .line 36
    const-string v4, "display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 35
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    .line 39
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v8, v0, v1

    .line 42
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cr:Landroid/content/ContentResolver;

    .line 43
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 46
    .local v10, phones:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 67
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->getCorrectNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, formNumber:Ljava/lang/String;
    const-string v12, "nA"

    .line 72
    .local v12, whatsappId:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 73
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 75
    const-string v3, "data3=?"

    .line 76
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, c2:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v6           #c2:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v12, v0, v1

    .line 89
    .end local v7           #formNumber:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    .end local v10           #phones:Landroid/database/Cursor;
    .end local v12           #whatsappId:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->checkContact()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    .restart local v8       #id:Ljava/lang/String;
    .restart local v10       #phones:Landroid/database/Cursor;
    :cond_3
    const-string v0, "data1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, number:Ljava/lang/String;
    const-string v0, "data2"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 53
    .local v11, type:I
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v9, v0, v1

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v9, v0, v1

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactHelper;->CONTACT:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v9, v0, v1

    goto :goto_0

    .line 81
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #type:I
    .restart local v6       #c2:Landroid/database/Cursor;
    .restart local v7       #formNumber:Ljava/lang/String;
    .restart local v12       #whatsappId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    throw v0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
