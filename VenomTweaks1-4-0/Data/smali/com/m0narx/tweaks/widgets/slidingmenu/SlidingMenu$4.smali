.class Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenuListView(Lcom/htc/widget/HtcExpandableListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "groupposition"
    .parameter "arg3"

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$3(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 1013
    .local v0, group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$5(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/widget/HtcExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$5(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 1022
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$5(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #calls: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$4(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    goto :goto_0
.end method
