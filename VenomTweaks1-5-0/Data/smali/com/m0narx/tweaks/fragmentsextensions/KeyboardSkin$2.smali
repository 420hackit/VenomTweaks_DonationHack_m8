.class Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$2;
.super Ljava/lang/Object;
.source "KeyboardSkin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 77
    :cond_0
    return-void
.end method
