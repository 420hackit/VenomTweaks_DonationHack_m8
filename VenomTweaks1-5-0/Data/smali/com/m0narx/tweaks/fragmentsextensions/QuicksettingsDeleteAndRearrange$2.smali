.class Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;
.super Ljava/lang/Object;
.source "QuicksettingsDeleteAndRearrange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    .line 70
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v7}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    .line 71
    .local v1, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;
    const-string v0, ""

    .line 72
    .local v0, ActiveIds:Ljava/lang/String;
    const-string v2, ""

    .line 73
    .local v2, AllIds:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 90
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    const/4 v4, 0x1

    .line 93
    .local v4, duration:I
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "NO! :-)"

    invoke-static {v7, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 94
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 100
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 74
    :cond_0
    iget-object v7, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, QSName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 76
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    move-object v2, v3

    .line 82
    :cond_1
    :goto_2
    iget-object v7, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 83
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 84
    move-object v0, v3

    .line 73
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 86
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 97
    .end local v3           #QSName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    iget-object v7, v7, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    iget-object v8, v8, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->TweakNameFull:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    iget-object v7, v7, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    iget-object v8, v8, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->TweakName:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->finish()V

    goto :goto_1
.end method
