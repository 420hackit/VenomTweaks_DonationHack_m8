.class Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;
.super Ljava/lang/Object;
.source "AppsVenomNotificationsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 118
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;

    .line 119
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;
    const-string v2, ""

    .line 120
    .local v2, Apps:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->TweakName:Ljava/lang/String;
    invoke-static {v6}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd;->finish()V

    .line 129
    return-void

    .line 121
    :cond_0
    iget-object v5, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    .local v1, AppName:Ljava/lang/String;
    iget-object v5, v0, Lcom/m0narx/tweaks/fragmentsextensions/AppsVenomNotificationsAdd$AppAdapter;->mCount:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 125
    .local v3, Count:Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
