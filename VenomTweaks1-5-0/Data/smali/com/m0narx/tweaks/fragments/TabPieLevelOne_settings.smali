.class public Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabPieLevelOne_settings.java"


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
    .line 27
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private setPieItem(Ljava/lang/String;I)Z
    .locals 12
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
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

    .line 79
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

    .line 81
    .local v0, KeyString:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v7, v8

    .line 246
    :goto_1
    return v7

    .line 105
    :pswitch_1
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    invoke-static {v7, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    const-string v9, ""

    invoke-static {v7, v0, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    .line 116
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    const-class v10, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 122
    .end local v3           #myIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 124
    .local v2, key:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    const v9, 0x7f0a0287

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 126
    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 127
    const-string v9, "Ok"

    .line 128
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$1;

    invoke-direct {v10, p0, v2, p1}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$1;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 145
    const-string v9, "Cancel"

    .line 146
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$2;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;)V

    .line 145
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 155
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_1

    .line 161
    .end local v2           #key:Lcom/htc/widget/HtcEditText;
    :pswitch_4
    new-instance v6, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 163
    .local v6, webPage:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    const v9, 0x7f0a0288

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 165
    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 166
    const-string v9, "Ok"

    .line 167
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$3;

    invoke-direct {v10, p0, v6, p1}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$3;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 184
    const-string v9, "Cancel"

    .line 185
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$4;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;)V

    .line 184
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 190
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 196
    .end local v6           #webPage:Lcom/htc/widget/HtcEditText;
    :pswitch_5
    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    const-string v9, "sh"

    .line 197
    const v10, 0x7f0a028a

    const/4 v11, 0x2

    .line 196
    invoke-static {p0, v8, v9, v10, v11}, Lcom/m0narx/tweaks/picker/FilePicker;->startFilePicker(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 203
    :pswitch_6
    new-instance v5, Lcom/htc/widget/HtcEditText;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    .line 205
    .local v5, tasker:Lcom/htc/widget/HtcEditText;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const v9, 0x7f0a0289

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 207
    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 208
    const-string v9, "Ok"

    .line 209
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$5;

    invoke-direct {v10, p0, v5, p1}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$5;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 226
    const-string v9, "Cancel"

    .line 227
    new-instance v10, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$6;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings$6;-><init>(Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;)V

    .line 226
    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    .line 232
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 238
    .end local v5           #tasker:Lcom/htc/widget/HtcEditText;
    :pswitch_7
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    .line 240
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    const-class v9, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v4, sIntent:Landroid/content/Intent;
    const/4 v8, 0x3

    invoke-virtual {p0, v4, v8}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 81
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
    .line 331
    const v0, 0x7f040013

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const-string v0, "pie_level_one"

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 315
    const-string v0, "pie_item1"

    const-string v1, "PieItem0 Type"

    const/high16 v2, 0x40e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 316
    const-string v0, "pie_item2"

    const-string v1, "PieItem2 Type"

    const/high16 v2, 0x4040

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 317
    const-string v0, "pie_item3"

    const-string v1, "PieItem4 Type"

    const/high16 v2, 0x4110

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 318
    const-string v0, "pie_item4"

    const-string v1, "PieItem6 Type"

    const/high16 v2, 0x40a0

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 319
    const-string v0, "pie_item5"

    const-string v1, "PieItem8 Type"

    const/high16 v2, 0x4120

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 321
    const-string v0, "pie_item1_longpress"

    const-string v1, "PieItem1 Type"

    invoke-virtual {p0, v0, v1, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 322
    const-string v0, "pie_item2_longpress"

    const-string v1, "PieItem3 Type"

    invoke-virtual {p0, v0, v1, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 323
    const-string v0, "pie_item3_longpress"

    const-string v1, "PieItem5 Type"

    invoke-virtual {p0, v0, v1, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 324
    const-string v0, "pie_item4_longpress"

    const-string v1, "PieItem7 Type"

    invoke-virtual {p0, v0, v1, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 325
    const-string v0, "pie_item5_longpress"

    const-string v1, "PieItem9 Type"

    invoke-virtual {p0, v0, v1, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V

    .line 327
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

    .line 251
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->getActivity()Landroid/app/Activity;

    .line 252
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 255
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    .line 263
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PieItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v2, "uri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 255
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
    .line 46
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, PKey:Ljava/lang/String;
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, result:Z
    const-string v2, "pie_item1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    const-string v2, "pie_item2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v2, "2"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 55
    goto :goto_0

    :cond_2
    const-string v2, "pie_item3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    const-string v2, "4"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 57
    goto :goto_0

    :cond_3
    const-string v2, "pie_item4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    const-string v2, "6"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 59
    goto :goto_0

    :cond_4
    const-string v2, "pie_item5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    const-string v2, "8"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 61
    goto :goto_0

    :cond_5
    const-string v2, "pie_item1_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 62
    const-string v2, "1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 63
    goto/16 :goto_0

    :cond_6
    const-string v2, "pie_item2_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 64
    const-string v2, "3"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 65
    goto/16 :goto_0

    :cond_7
    const-string v2, "pie_item3_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 66
    const-string v2, "5"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 67
    goto/16 :goto_0

    :cond_8
    const-string v2, "pie_item4_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 68
    const-string v2, "7"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    .line 69
    goto/16 :goto_0

    :cond_9
    const-string v2, "pie_item5_longpress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "9"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->setPieItem(Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 343
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelOne_settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 349
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method
