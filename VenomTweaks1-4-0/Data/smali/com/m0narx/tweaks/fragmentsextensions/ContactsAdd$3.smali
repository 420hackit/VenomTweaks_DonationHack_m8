.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$3;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->finish()V

    .line 142
    return-void
.end method
