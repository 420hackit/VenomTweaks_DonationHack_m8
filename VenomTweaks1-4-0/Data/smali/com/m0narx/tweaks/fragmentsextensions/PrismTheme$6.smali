.class Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;
.super Ljava/lang/Object;
.source "PrismTheme.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "m0narX_tweaks"

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Selected theme: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 142
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_rosie_theme"

    .line 143
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->currentTheme:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_icon_underlay"

    .line 149
    const/4 v3, 0x0

    .line 148
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Reboot;->updateLockScreen(Landroid/content/Context;)V

    .line 151
    const-string v1, "pkill com.htc.launcher;"

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->setCustomizeState()V
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V

    .line 159
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$6;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->access$6(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/framework/theme/AppIcons;->getInstance(Landroid/content/Context;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    .line 160
    .local v0, mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-virtual {v0}, Lcom/m0narx/framework/theme/AppIcons;->refreshTheme()V

    .line 162
    return-void
.end method
