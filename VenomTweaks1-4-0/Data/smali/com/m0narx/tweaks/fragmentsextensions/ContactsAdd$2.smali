.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$2;
.super Ljava/lang/Object;
.source "ContactsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 123
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 122
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method
