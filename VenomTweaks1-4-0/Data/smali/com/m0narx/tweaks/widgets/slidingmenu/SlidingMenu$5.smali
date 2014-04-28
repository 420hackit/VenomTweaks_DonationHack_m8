.class Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$3(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->expanded:Z

    .line 1030
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$3(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->notifyDataSetChanged()V

    .line 1031
    return-void
.end method
