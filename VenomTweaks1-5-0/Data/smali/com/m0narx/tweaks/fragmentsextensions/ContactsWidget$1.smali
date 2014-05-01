.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;
.super Ljava/lang/Object;
.source "ContactsWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->start()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->CONTACT:[Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsWidget;->setResultAndFinish(Z)V

    .line 82
    return-void
.end method
