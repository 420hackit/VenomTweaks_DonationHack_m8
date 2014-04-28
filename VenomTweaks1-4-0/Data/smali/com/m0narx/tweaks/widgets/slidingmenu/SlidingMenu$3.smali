.class Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "groupposition"
    .parameter "childposition"
    .parameter "arg4"

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$3(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 1004
    .local v0, child:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #calls: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$4(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 1005
    const/4 v1, 0x0

    return v1
.end method
