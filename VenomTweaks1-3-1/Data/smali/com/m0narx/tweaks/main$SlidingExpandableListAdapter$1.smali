.class Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

.field private final synthetic val$childPosition:I

.field private final synthetic val$position:I

.field private final synthetic val$tab:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$tab:Ljava/lang/String;

    iput p4, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$childPosition:I

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 786
    iget v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$position:I

    packed-switch v0, :pswitch_data_0

    .line 813
    :goto_0
    return-void

    .line 789
    :pswitch_0
    sget-object v0, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 790
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    #getter for: Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/main;
    invoke-static {v0}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->access$1(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Lcom/m0narx/tweaks/main;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :pswitch_1
    iget v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->val$childPosition:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 797
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    #getter for: Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->access$0(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 800
    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    #getter for: Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->access$0(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 803
    :pswitch_4
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    #getter for: Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->access$0(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 806
    :pswitch_5
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;->this$1:Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;

    #getter for: Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->access$0(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Reboot;->perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 795
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
