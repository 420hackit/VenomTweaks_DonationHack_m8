.class Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;
.super Ljava/lang/Object;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    .line 96
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;
    const-string v2, ""

    .line 97
    .local v2, Apps:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_quicklauncher"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->finish()V

    .line 109
    return-void

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, AppName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 100
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    move-object v2, v1

    .line 97
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
