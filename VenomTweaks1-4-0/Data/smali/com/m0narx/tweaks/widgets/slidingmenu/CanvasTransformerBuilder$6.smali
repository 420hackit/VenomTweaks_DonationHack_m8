.class Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$6;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->concatTransformer(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

.field private final synthetic val$t:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$6;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$6;->val$t:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformCanvas(Landroid/graphics/Canvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "percentOpen"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$6;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->mTrans:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 89
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CanvasTransformerBuilder$6;->val$t:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    invoke-interface {v0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 90
    return-void
.end method
