.class Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->manageLayers(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

.field private final synthetic val$layerType:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    iput p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->val$layerType:I

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 979
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->val$layerType:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 980
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;->val$layerType:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 983
    :cond_0
    return-void
.end method
