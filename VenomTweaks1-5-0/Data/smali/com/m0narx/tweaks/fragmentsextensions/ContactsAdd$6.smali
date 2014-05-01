.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$6;
.super Ljava/lang/Object;
.source "ContactsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->start()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 456
    return-void
.end method
