.class Lcom/m0narx/tweaks/widgets/Dialogs$3;
.super Ljava/lang/Object;
.source "Dialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Dialogs$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Dialogs$3;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Dialogs$3;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Dialogs$3;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->cancel(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 87
    return-void
.end method
