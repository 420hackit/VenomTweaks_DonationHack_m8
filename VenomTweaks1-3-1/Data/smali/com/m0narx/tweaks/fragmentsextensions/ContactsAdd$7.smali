.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;
.super Ljava/lang/Object;
.source "ContactsAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iput p2, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ACTION:I

    .line 471
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->startProgress()V

    .line 472
    return-void
.end method
