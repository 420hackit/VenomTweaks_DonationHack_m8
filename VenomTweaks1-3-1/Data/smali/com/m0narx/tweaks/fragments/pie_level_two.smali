.class public Lcom/m0narx/tweaks/fragments/pie_level_two;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "pie_level_two.java"


# static fields
.field private static final ACTION_LMT_APP:I = 0x1

.field private static final ACTION_LMT_SCRIPT:I = 0x2

.field private static final ACTION_LMT_SHORTCUT:I = 0x3

.field private static final LMT_TYPE_CUSTOM_APP:I = 0x2

.field private static final LMT_TYPE_KEY:I = 0x19

.field private static final LMT_TYPE_SCRIPT:I = 0x1c

.field private static final LMT_TYPE_SHORTCUT:I = 0x20

.field private static final LMT_TYPE_TASKER:I = 0x1f

.field private static final LMT_TYPE_WEB:I = 0x1b


# instance fields
.field private SelectedIndex:Ljava/lang/String;

.field private SelectedPref:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/pie_level_two;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private setPieItem(Ljava/lang/String;I)Z
    .locals 12
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PieItem"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, KeyType:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PieItem"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " String"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, KeyString:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v7, v8

    .line 243
    :goto_1
    return v7

    .line 100
    :pswitch_1
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    invoke-static {v7, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    const-string v9, ""

    invoke-static {v7, v0, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    goto :goto_0

    .line 109
    :pswitch_2
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    .line 111
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    const-class v10, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v3, myIntent:Landroid/content/Intent;
    const-string v9, "PieItemIndex"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v3, v8}, Lcom/m0narx/tweaks/fragments/pie_level_two;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 118
    .end local v3           #myIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, key:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    const v9, 0x7f0a0287

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 122
    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 123
    const-string v9, "Ok"

    .line 124
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$1;

    invoke-direct {v10, p0, v2, p1}, Lcom/m0narx/tweaks/fragments/pie_level_two$1;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 141
    const-string v9, "Cancel"

    .line 142
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/pie_level_two$2;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;)V

    .line 141
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 151
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_1

    .line 157
    .end local v2           #key:Lcom/htc/widget/HtcEditText;
    :pswitch_4
    new-instance v6, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 159
    .local v6, webPage:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const v9, 0x7f0a0288

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 162
    const-string v9, "Ok"

    .line 163
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$3;

    invoke-direct {v10, p0, v6, p1}, Lcom/m0narx/tweaks/fragments/pie_level_two$3;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 180
    const-string v9, "Cancel"

    .line 181
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/pie_level_two$4;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;)V

    .line 180
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 186
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 192
    .end local v6           #webPage:Lcom/htc/widget/HtcEditText;
    :pswitch_5
    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    const-string v9, "sh"

    .line 193
    const v10, 0x7f0a028a

    const/4 v11, 0x2

    .line 192
    invoke-static {p0, v8, v9, v10, v11}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 199
    :pswitch_6
    new-instance v5, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 201
    .local v5, tasker:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    const v9, 0x7f0a0289

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 203
    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 204
    const-string v9, "Ok"

    .line 205
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$5;

    invoke-direct {v10, p0, v5, p1}, Lcom/m0narx/tweaks/fragments/pie_level_two$5;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 222
    const-string v9, "Cancel"

    .line 223
    new-instance v10, Lcom/m0narx/tweaks/fragments/pie_level_two$6;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/pie_level_two$6;-><init>(Lcom/m0narx/tweaks/fragments/pie_level_two;)V

    .line 222
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 228
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 234
    .end local v5           #tasker:Lcom/htc/widget/HtcEditText;
    :pswitch_7
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    .line 236
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    const-class v10, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v4, sIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v8}, Lcom/m0narx/tweaks/fragments/pie_level_two;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 328
    const v0, 0x7f040014

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "pie_level_two"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    const-string v0, "pie_item1"

    const-string v1, "PieItem10 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v0, "pie_item2"

    const-string v1, "PieItem12 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v0, "pie_item3"

    const-string v1, "PieItem14 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v0, "pie_item4"

    const-string v1, "PieItem16 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v0, "pie_item5"

    const-string v1, "PieItem18 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v0, "pie_item1_longpress"

    const-string v1, "PieItem11 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v0, "pie_item2_longpress"

    const-string v1, "PieItem13 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v0, "pie_item3_longpress"

    const-string v1, "PieItem15 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v0, "pie_item4_longpress"

    const-string v1, "PieItem17 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v0, "pie_item5_longpress"

    const-string v1, "PieItem19 Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie_level_two;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x1c

    const/4 v3, 0x2

    .line 248
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/pie_level_two;->getActivity()Landroid/app/Activity;

    .line 249
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 252
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    .line 260
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "uri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "o"

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, PKey:Ljava/lang/String;
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->SelectedPref:Lcom/htc/preference/HtcPreference;

    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, result:Z
    const-string v2, "pie_item1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v2, "10"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 66
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 68
    return v1

    .line 46
    :cond_1
    const-string v2, "pie_item2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "12"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 48
    goto :goto_0

    :cond_2
    const-string v2, "pie_item3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    const-string v2, "14"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 50
    goto :goto_0

    :cond_3
    const-string v2, "pie_item4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    const-string v2, "16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 52
    goto :goto_0

    :cond_4
    const-string v2, "pie_item5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    const-string v2, "18"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 54
    goto :goto_0

    :cond_5
    const-string v2, "pie_item1_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    const-string v2, "11"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 56
    goto/16 :goto_0

    :cond_6
    const-string v2, "pie_item2_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    const-string v2, "13"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 58
    goto/16 :goto_0

    :cond_7
    const-string v2, "pie_item3_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 59
    const-string v2, "15"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 60
    goto/16 :goto_0

    :cond_8
    const-string v2, "pie_item4_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 61
    const-string v2, "17"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 62
    goto/16 :goto_0

    :cond_9
    const-string v2, "pie_item5_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "19"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/pie_level_two;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 340
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie_level_two;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 346
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
