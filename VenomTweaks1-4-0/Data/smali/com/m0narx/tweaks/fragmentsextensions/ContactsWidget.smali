.class public Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;
.super Landroid/app/Activity;
.source "ContactsWidget.java"


# instance fields
.field ACTION:I

.field CONTACT:[Ljava/lang/String;

.field builder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field contactData:Landroid/net/Uri;

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field mContext:Landroid/content/Context;

.field progressDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 90
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 91
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f05006c

    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f0a037b

    new-instance v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 106
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->builder:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method private showContactErrorToast()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->makeToast(Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public makeToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 55
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->contactData:Landroid/net/Uri;

    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->contactData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->start()V

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "hansbert"

    const-string v1, "RESULT_CANELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->finish()V

    .line 62
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->showContactErrorToast()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v0, contactIntent:Landroid/content/Intent;
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method

.method public setResultAndFinish(Z)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, contactData:Landroid/content/Intent;
    const-string v1, "contactData"

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->CONTACT:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0, v3, v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setResult(ILandroid/content/Intent;)V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->finish()V

    .line 152
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setResult(I)V

    goto :goto_0

    .line 144
    :cond_1
    if-eqz p1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 69
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setContentView(I)V

    .line 70
    iput-object p0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->dialog:Lcom/htc/widget/HtcAlertDialog;

    .line 72
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->dialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->dialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 74
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 75
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->dialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 76
    .local v0, negativ:Landroid/widget/Button;
    new-instance v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .end local v0           #negativ:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public startProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a037e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 111
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V

    .line 121
    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$4;->start()V

    .line 122
    return-void
.end method
