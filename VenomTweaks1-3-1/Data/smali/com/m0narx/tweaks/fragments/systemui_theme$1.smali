.class Lcom/m0narx/tweaks/fragments/systemui_theme$1;
.super Ljava/lang/Object;
.source "systemui_theme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/systemui_theme;->setHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/systemui_theme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/systemui_theme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/systemui_theme$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui_theme;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui_theme$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui_theme;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/systemui_theme;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui_theme$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui_theme;

    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    .line 212
    return-void
.end method
