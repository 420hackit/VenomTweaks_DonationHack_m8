.class Lcom/m0narx/tweaks/fragments/prism$6;
.super Ljava/lang/Object;
.source "prism.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/prism;->onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 604
    packed-switch p2, :pswitch_data_0

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    #getter for: Lcom/m0narx/tweaks/fragments/prism;->underlayDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/prism;->access$3(Lcom/m0narx/tweaks/fragments/prism;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 619
    return-void

    .line 607
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    .line 608
    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/prism;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 612
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism$6;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    .line 611
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
