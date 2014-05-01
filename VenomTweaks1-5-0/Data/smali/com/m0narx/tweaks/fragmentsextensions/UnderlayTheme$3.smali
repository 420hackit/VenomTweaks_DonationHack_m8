.class Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;
.super Ljava/lang/Object;
.source "UnderlayTheme.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 92
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, pckg:Ljava/lang/String;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_underlay_theme"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_icon_underlay"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    const-string v2, "pkill com.htc.launcher;"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string v2, "pkill com.htc.lockscreen"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/Underlay;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, customizeIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/fragmentsextensions/UnderlayTheme;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
