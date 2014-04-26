.class Lcom/m0narx/tweaks/custompreferences/Prefs$3;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

.field private final synthetic val$action:Lcom/m0narx/tweaks/widgets/Reboot$Action;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->val$action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->val$action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    iget-object v3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->val$action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->getHeaderMsg(Lcom/m0narx/tweaks/widgets/Reboot$Action;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    .line 520
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$3;->val$action:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 521
    return-void
.end method
