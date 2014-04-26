.class public Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;
.super Landroid/app/Activity;
.source "ContactsAction.java"


# instance fields
.field ACTION:I

.field ACTIONS:[Ljava/lang/String;

.field CONTACT_ID:Ljava/lang/String;

.field startIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dial"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "whatsapp"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->ACTIONS:[Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public dialContact()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->startIntent:Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->startIntent:Landroid/content/Intent;

    const-string v1, "CONTACT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->CONTACT_ID:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->startIntent:Landroid/content/Intent;

    const-string v1, "ACTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAction;->ACTION:I

    .line 21
    return-void
.end method

.method public openSmsChat()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public openWhatsappChat()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
