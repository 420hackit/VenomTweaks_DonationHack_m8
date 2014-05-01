.class Lcom/m0narx/tweaks/fragments/TabAbout$3;
.super Ljava/lang/Object;
.source "TabAbout.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabAbout;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabAbout;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    .line 159
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
    .line 163
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    #getter for: Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_PROFILES:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabAbout;->access$5(Lcom/m0narx/tweaks/fragments/TabAbout;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/m0narx/tweaks/Profiles;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/TabAbout;->startActivity(Landroid/content/Intent;)V

    .line 176
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    #getter for: Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_BUGREPORT:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabAbout;->access$6(Lcom/m0narx/tweaks/fragments/TabAbout;)I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/m0narx/tweaks/Bugreport;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/TabAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    #getter for: Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_DONATEAPP:I
    invoke-static {v0}, Lcom/m0narx/tweaks/fragments/TabAbout;->access$7(Lcom/m0narx/tweaks/fragments/TabAbout;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$3;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/Donation;->showSelectDonationApp(Landroid/app/Activity;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
