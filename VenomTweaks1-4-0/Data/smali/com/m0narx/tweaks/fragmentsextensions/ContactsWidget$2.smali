.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;
.super Ljava/lang/Object;
.source "ContactsWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->getActionDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    iput p2, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->ACTION:I

    .line 96
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->startProgress()V

    .line 97
    return-void
.end method
