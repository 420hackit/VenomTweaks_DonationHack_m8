.class Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;
.super Ljava/lang/Object;
.source "QuicksettingsDeleteAndRearrange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 293
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcDeleteButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDeleteButton;->getTag()Ljava/lang/Object;

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->notifyDataSetChanged()V

    .line 304
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/htc/widget/HtcDeleteButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDeleteButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
