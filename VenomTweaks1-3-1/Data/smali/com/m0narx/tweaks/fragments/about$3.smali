.class Lcom/m0narx/tweaks/fragments/about$3;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/about;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/about;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "list"
    .parameter "arg1"
    .parameter "itemId"
    .parameter "arg3"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->ITEM_PROFILES:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/about;->access$5(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/m0narx/tweaks/Profiles;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/about;->startActivity(Landroid/content/Intent;)V

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->ITEM_BUGREPORT:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/about;->access$6(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/m0narx/tweaks/Bugreport;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/about;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->ITEM_DONATEAPP:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/about;->access$7(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$3;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/main;->showSelectDonationApp(Landroid/content/Context;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
