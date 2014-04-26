.class Lcom/m0narx/tweaks/fragments/advanced$1;
.super Ljava/lang/Object;
.source "advanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/advanced;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/advanced;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/advanced;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/advanced$1;->this$0:Lcom/m0narx/tweaks/fragments/advanced;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/advanced$1;->this$0:Lcom/m0narx/tweaks/fragments/advanced;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/advanced;->mContext:Landroid/content/Context;

    .line 288
    const v1, 0x7f0a00b9

    .line 289
    const-string v2, "busybox rm -rf /cache/*;busybox rm -rf /app-cache/*"

    .line 290
    const/4 v3, 0x1

    .line 286
    invoke-static {v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 291
    return-void
.end method
