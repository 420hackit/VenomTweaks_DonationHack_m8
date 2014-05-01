.class Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final POSITION_CLOSE:I = 0x1

.field public static final POSITION_OPEN:I = 0x0

.field public static final POSITION_SECONDARY_OPEN:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 222
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 225
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mOpenListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mOpenListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;->onOpen()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mCloseListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$1(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mCloseListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$1(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mSecondaryOpenListner:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$2(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mSecondaryOpenListner:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->access$2(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;->onOpen()V

    goto :goto_0
.end method
