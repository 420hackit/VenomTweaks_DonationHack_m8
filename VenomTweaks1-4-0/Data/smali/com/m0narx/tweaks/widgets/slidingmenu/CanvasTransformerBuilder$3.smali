.class Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->zoom(IIIIIILandroid/view/animation/Interpolator;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

.field private final synthetic val$closedX:I

.field private final synthetic val$closedY:I

.field private final synthetic val$interp:Landroid/view/animation/Interpolator;

.field private final synthetic val$openedX:I

.field private final synthetic val$openedY:I

.field private final synthetic val$px:I

.field private final synthetic val$py:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$interp:Landroid/view/animation/Interpolator;

    iput p3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$openedX:I

    iput p4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedX:I

    iput p5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$openedY:I

    iput p6, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedY:I

    iput p7, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$px:I

    iput p8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$py:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformCanvas(Landroid/graphics/Canvas;F)V
    .locals 5
    .parameter "canvas"
    .parameter "percentOpen"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->mTrans:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 38
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$interp:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 39
    .local v0, f:F
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$openedX:I

    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 40
    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$openedY:I

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$closedY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$px:I

    int-to-float v3, v3

    iget v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$3;->val$py:I

    int-to-float v4, v4

    .line 39
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    return-void
.end method
