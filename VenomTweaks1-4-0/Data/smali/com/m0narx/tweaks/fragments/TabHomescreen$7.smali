.class Lcom/m0narx/tweaks/fragments/TabHomescreen$7;
.super Ljava/lang/Object;
.source "TabHomescreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabHomescreen;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$7;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$7;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    .line 853
    return-void
.end method
