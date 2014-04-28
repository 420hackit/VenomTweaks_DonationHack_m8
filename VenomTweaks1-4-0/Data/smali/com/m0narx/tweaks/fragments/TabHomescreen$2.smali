.class Lcom/m0narx/tweaks/fragments/TabHomescreen$2;
.super Ljava/lang/Object;
.source "TabHomescreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabHomescreen;->makeDialog(I)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/16 v4, 0x1f

    .line 134
    packed-switch p2, :pswitch_data_0

    .line 154
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    return-void

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance v0, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 141
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 142
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$2;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v2

    .line 143
    const/4 v3, 0x4

    .line 140
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V

    .line 145
    .local v0, underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setTitle(I)V

    .line 147
    const-string v1, "/data/system/icon_underlay.png"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setFile(Ljava/lang/String;)V

    .line 149
    const-string v1, "venom.theme.prism.Venom_Underlays"

    .line 150
    const-string v2, "underlay_pack"

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->show()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
