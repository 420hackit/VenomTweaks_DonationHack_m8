.class Lcom/m0narx/tweaks/fragments/TabHomescreen$1;
.super Ljava/lang/Object;
.source "TabHomescreen.java"

# interfaces
.implements Lcom/m0narx/tweaks/dialogs/OnDialogItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragments/TabHomescreen;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 4
    .parameter "dialogcode"
    .parameter "resname"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    sparse-switch p1, :sswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_navbar_bg"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->getCustomIcons()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "dock"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->saveCustomIcons()V

    .line 102
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 106
    :sswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_prism_folder_bg"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->getCustomIcons()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "folder"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    #getter for: Lcom/m0narx/tweaks/fragments/TabHomescreen;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->access$0(Lcom/m0narx/tweaks/fragments/TabHomescreen;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->saveCustomIcons()V

    .line 109
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 113
    :sswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_navbar_bg"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_navbar_bg"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 117
    :sswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_prism_folder_bg"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 119
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0x1e -> :sswitch_3
    .end sparse-switch
.end method
