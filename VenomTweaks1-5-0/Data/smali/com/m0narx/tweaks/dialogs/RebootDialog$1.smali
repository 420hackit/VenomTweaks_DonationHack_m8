.class Lcom/m0narx/tweaks/dialogs/RebootDialog$1;
.super Ljava/lang/Object;
.source "RebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field private final synthetic val$HeaderMessageRes:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$pref:Lcom/m0narx/tweaks/custompreferences/Prefs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;ILcom/m0narx/tweaks/custompreferences/Prefs;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    iput p3, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$HeaderMessageRes:I

    iput-object p4, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$pref:Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->cancel(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 47
    iget v0, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$HeaderMessageRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$pref:Lcom/m0narx/tweaks/custompreferences/Prefs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$pref:Lcom/m0narx/tweaks/custompreferences/Prefs;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;->val$Action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 48
    :cond_0
    return-void
.end method
