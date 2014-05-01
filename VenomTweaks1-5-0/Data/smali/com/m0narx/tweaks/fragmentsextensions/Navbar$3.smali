.class Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;
.super Ljava/lang/Object;
.source "Navbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    iput-boolean v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->requiresCancel:Z

    .line 186
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/Navbar;->finish()V

    .line 187
    return v1
.end method
