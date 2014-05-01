.class Lcom/m0narx/tweaks/fragments/TabHomescreen$5;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 245
    packed-switch p2, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 295
    return-void

    .line 247
    :pswitch_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v4

    .line 248
    invoke-virtual {v4}, Lcom/m0narx/framework/theme/AppIcons;->getDocks()Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .local v1, docks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/framework/theme/DockTheme$Dock;>;"
    if-eqz v1, :cond_1

    .line 250
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m0narx/framework/theme/AppIcons;->getDocks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v7, :cond_2

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    .line 252
    const-string v5, "tweaks_rosie_navbar_bg"

    const/4 v6, 0x0

    .line 251
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    sget-object v4, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 254
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 255
    :cond_2
    if-eqz v1, :cond_0

    .line 256
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 258
    .local v2, dockshash:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 263
    new-instance v3, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 264
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 265
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v5

    .line 266
    const/16 v6, 0x9

    .line 263
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V

    .line 268
    .local v3, underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    const v4, 0x7f0a0406

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setTitle(I)V

    .line 269
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setFile(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m0narx/framework/theme/AppIcons;->getTheme()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v3, v4, v2}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setPackage(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 273
    invoke-virtual {v3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->show()V

    goto :goto_0

    .line 258
    .end local v3           #underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/framework/theme/DockTheme$Dock;

    .line 259
    .local v0, dock:Lcom/m0narx/framework/theme/DockTheme$Dock;
    iget v5, v0, Lcom/m0narx/framework/theme/DockTheme$Dock;->portid:I

    .line 260
    iget-object v6, v0, Lcom/m0narx/framework/theme/DockTheme$Dock;->name:Ljava/lang/String;

    .line 259
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 277
    .end local v0           #dock:Lcom/m0narx/framework/theme/DockTheme$Dock;
    .end local v1           #docks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/framework/theme/DockTheme$Dock;>;"
    .end local v2           #dockshash:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v5, v5, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v7}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 281
    :pswitch_2
    new-instance v3, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;

    .line 282
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 283
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$5;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mOnDialogItemSelectedListener:Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$1(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;

    move-result-object v5

    .line 281
    invoke-direct {v3, v4, v5, v7, v7}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;II)V

    .line 286
    .restart local v3       #underlaydialog:Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;
    const v4, 0x7f0a04ed

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setTitle(I)V

    .line 288
    const-string v4, "/data/system/background_panel.png"

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setFile(Ljava/lang/String;)V

    .line 290
    const-string v4, "venom.theme.prism.Venom_Navbars"

    const-string v5, "navbar_pack"

    .line 289
    invoke-virtual {v3, v4, v5}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3}, Lcom/m0narx/tweaks/dialogs/ArrayPackageSelectorDialog;->show()V

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
