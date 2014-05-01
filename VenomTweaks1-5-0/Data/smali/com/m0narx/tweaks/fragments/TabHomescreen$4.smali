.class Lcom/m0narx/tweaks/fragments/TabHomescreen$4;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 192
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    return-void

    .line 194
    :pswitch_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/m0narx/framework/theme/AppIcons;->getAvaliableFolderIcons()Landroid/util/SparseArray;

    move-result-object v0

    .line 196
    .local v0, icons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gt v2, v4, :cond_0

    .line 197
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 198
    const-string v3, "tweaks_prism_folder_bg"

    const/4 v4, 0x0

    .line 197
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 200
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 202
    :cond_0
    new-instance v1, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 203
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 204
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v3

    .line 205
    const/16 v4, 0xa

    .line 202
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V

    .line 206
    .local v1, underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setFile(Ljava/lang/String;)V

    .line 208
    const v2, 0x7f0a0406

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setTitle(I)V

    .line 210
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/m0narx/framework/theme/AppIcons;->getTheme()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v2, v0}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setPackage(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 211
    invoke-virtual {v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->show()V

    goto :goto_0

    .line 215
    .end local v0           #icons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1           #underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    :pswitch_1
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v6}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 219
    :pswitch_2
    new-instance v1, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 220
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 221
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$4;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v3

    .line 219
    invoke-direct {v1, v2, v3, v6, v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V

    .line 224
    .restart local v1       #underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    const-string v2, "/data/system/prism_folder.png"

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setFile(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setAutoResize(Z)V

    .line 227
    const v2, 0x7f0a0403

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setTitle(I)V

    .line 229
    const-string v2, "venom.theme.prism.Venom_Underlays"

    .line 230
    const-string v3, "underlay_pack"

    .line 228
    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->show()V

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
