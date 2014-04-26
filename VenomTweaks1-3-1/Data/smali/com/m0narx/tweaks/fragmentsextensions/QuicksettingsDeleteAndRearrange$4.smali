.class Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$4;
.super Ljava/lang/Object;
.source "QuicksettingsDeleteAndRearrange.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "fromPos"
    .parameter "toPos"

    .prologue
    .line 205
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    .line 206
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;
    if-eq p1, p2, :cond_0

    .line 207
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, Id:Ljava/lang/String;
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, Name:Ljava/lang/String;
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 211
    .local v1, Checked:Ljava/lang/Boolean;
    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->removeItem(I)V

    .line 212
    invoke-virtual {v0, p2, v2, v1, v3}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->insertItem(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->notifyDataSetChanged()V

    .line 215
    .end local v1           #Checked:Ljava/lang/Boolean;
    .end local v2           #Id:Ljava/lang/String;
    .end local v3           #Name:Ljava/lang/String;
    :cond_0
    return-void
.end method
