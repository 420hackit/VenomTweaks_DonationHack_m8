.class Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;
.super Ljava/lang/Object;
.source "PieBlacklist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 90
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;

    .line 91
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;
    const-string v2, ""

    .line 92
    .local v2, Apps:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BlacklistPie"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 98
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;->finish()V

    .line 99
    return-void

    .line 93
    :cond_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, AppName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
