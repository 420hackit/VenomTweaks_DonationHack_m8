.class Lcom/m0narx/tweaks/fragments/prism$7;
.super Ljava/lang/Object;
.source "prism.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/prism;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/prism;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/prism;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/prism$7;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism$7;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/prism;->updateButtons()V

    .line 796
    return-void
.end method
