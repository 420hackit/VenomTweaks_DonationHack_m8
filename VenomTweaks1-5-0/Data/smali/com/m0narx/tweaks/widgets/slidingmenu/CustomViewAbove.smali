.class public Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field public static final ABOVE_SCROLLING_FACTOR:I = 0x3

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "m0narX_tweaks_CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private mFadePaint:Landroid/graphics/Paint;

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mEnabled:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 555
    iput v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchMode:I

    .line 601
    iput-boolean v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    .line 830
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadePaint:Landroid/graphics/Paint;

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    .line 145
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->initCustomViewAbove()V

    .line 146
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 530
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 531
    .local v0, needPopulate:Z
    if-eqz v0, :cond_2

    .line 533
    invoke-direct {p0, v6}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 535
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 537
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v5

    mul-int/lit8 v1, v5, 0x3

    .line 538
    .local v1, oldX:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 539
    .local v2, oldY:I
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 540
    .local v3, x:I
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 541
    .local v4, y:I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 542
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 545
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 546
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 552
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 553
    return-void

    .line 548
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 549
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private determineDrag(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    .line 770
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 771
    .local v0, activePointerId:I
    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 772
    .local v3, pointerIndex:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 775
    .local v4, x:F
    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    sub-float v1, v4, v8

    .line 776
    .local v1, dx:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 777
    .local v5, xDiff:F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 778
    .local v6, y:F
    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionY:F

    sub-float v2, v6, v8

    .line 779
    .local v2, dy:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 781
    .local v7, yDiff:F
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x2

    :goto_1
    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 782
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->startDrag()V

    .line 783
    iput v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 784
    iput v6, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionY:F

    .line 785
    invoke-direct {p0, v9}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 781
    :cond_2
    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchSlop:I

    goto :goto_1

    .line 786
    :cond_3
    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 787
    iput-boolean v9, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_0
.end method

.method private determineTargetPage(FII)I
    .locals 3
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 801
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    .line 802
    .local v0, targetPage:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 803
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 804
    add-int/lit8 v0, v0, -0x1

    .line 811
    :cond_0
    :goto_0
    return v0

    .line 805
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 806
    add-int/lit8 v0, v0, 0x1

    .line 808
    goto :goto_0

    .line 809
    :cond_2
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    .line 878
    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 879
    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    .line 880
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 882
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 886
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .parameter "ev"
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 595
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 596
    .local v0, activePointerIndex:I
    if-ne v0, v1, :cond_0

    .line 597
    iput v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 598
    :cond_0
    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 327
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 327
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 328
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 856
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 857
    .local v1, pointerId:I
    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 860
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 861
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 862
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 863
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 864
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 867
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 860
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .parameter "xpos"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getWidth()I

    move-result v3

    .line 500
    .local v3, widthWithMargin:I
    div-int v2, p1, v3

    .line 501
    .local v2, position:I
    rem-int v1, p1, v3

    .line 502
    .local v1, offsetPixels:I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 504
    .local v0, offset:F
    invoke-virtual {p0, v2, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->onPageScrolled(IFI)V

    .line 505
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 901
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    .line 873
    return-void
.end method

.method private thisSlideAllowed(F)Z
    .locals 2
    .parameter "dx"

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, allowed:Z
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 591
    :goto_0
    return v0

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 567
    .local v0, x:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    .line 579
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 570
    :cond_1
    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    .line 572
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 972
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 975
    :cond_0
    const/4 v1, 0x0

    .line 977
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 979
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 980
    if-ne p1, v4, :cond_3

    .line 981
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 998
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 999
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->playSoundEffect(I)V

    .line 1001
    :cond_2
    return v1

    .line 982
    :cond_3
    if-ne p1, v5, :cond_1

    .line 985
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 986
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->pageRight()Z

    move-result v1

    .line 987
    goto :goto_0

    .line 988
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 991
    goto :goto_0

    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 993
    :cond_6
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->pageLeft()Z

    move-result v1

    .line 994
    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 996
    :cond_8
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 915
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 916
    check-cast v7, Landroid/view/ViewGroup;

    .line 917
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 918
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 919
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 922
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-gez v8, :cond_1

    .line 931
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 923
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 924
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 925
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    const/4 v0, 0x1

    goto :goto_1

    .line 922
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 931
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 478
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v4

    mul-int/lit8 v0, v4, 0x3

    .line 480
    .local v0, oldX:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 481
    .local v1, oldY:I
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 482
    .local v2, x:I
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 484
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 485
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 486
    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->pageScrolled(I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->invalidate()V

    .line 496
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 822
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 823
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 825
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 826
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 293
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 294
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 295
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 7
    .parameter "content"
    .parameter "canvas"
    .parameter "openPercent"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 844
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 845
    :cond_0
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadeDegree:F

    const/high16 v2, 0x437f

    mul-float/2addr v0, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 846
    .local v6, alpha:I
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 847
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 952
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 954
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 955
    goto :goto_0

    .line 957
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 958
    goto :goto_0

    .line 960
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 962
    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 952
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildWidth(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 343
    packed-switch p1, :pswitch_data_0

    .line 349
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 345
    :pswitch_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 815
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 150
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setWillNotDraw(Z)V

    .line 151
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setDescendantFocusability(I)V

    .line 152
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setFocusable(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 155
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 157
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 159
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchSlop:I

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mMinimumVelocity:I

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mMaximumVelocity:I

    .line 163
    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setInternalPageChangeListener(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 180
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFlingDistance:I

    .line 181
    return-void
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mEnabled:Z

    if-nez v4, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v2

    .line 609
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 615
    .local v0, action:I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    .line 616
    if-eq v0, v3, :cond_2

    .line 617
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v4, :cond_3

    .line 618
    :cond_2
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->endDrag()V

    goto :goto_0

    .line 622
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 648
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v4, :cond_6

    .line 649
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 650
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 652
    :cond_5
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 654
    :cond_6
    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    if-eqz v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    .line 624
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 627
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 628
    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 629
    iget v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 631
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    iput v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 632
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionY:F

    .line 633
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 634
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 635
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    .line 636
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    iget v6, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 637
    iput-boolean v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    goto :goto_1

    .line 640
    :cond_8
    iput-boolean v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .line 644
    .end local v1           #index:I
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 466
    sub-int v1, p4, p2

    .line 467
    .local v1, width:I
    sub-int v0, p5, p3

    .line 468
    .local v0, height:I
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 469
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 442
    invoke-static {v4, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 443
    .local v3, width:I
    invoke-static {v4, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 444
    .local v2, height:I
    invoke-virtual {p0, v3, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setMeasuredDimension(II)V

    .line 446
    invoke-static {p1, v4, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 447
    .local v1, contentWidth:I
    invoke-static {p2, v4, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 448
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 449
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 526
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 455
    if-eq p1, p3, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 460
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 462
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 662
    const/16 v20, 0x0

    .line 766
    :goto_0
    return v20

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 665
    const/16 v20, 0x0

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 672
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 673
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 675
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 677
    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 766
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v20, 0x1

    goto :goto_0

    .line 683
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 687
    .local v7, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    goto :goto_1

    .line 691
    .end local v7           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 692
    invoke-direct/range {p0 .. p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    .line 693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 694
    const/16 v20, 0x0

    goto :goto_0

    .line 696
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 699
    .local v5, activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 701
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 702
    .local v19, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v6, v20, v19

    .line 703
    .local v6, deltaX:F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v20

    mul-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-float v12, v0

    .line 705
    .local v12, oldScrollX:F
    add-float v16, v12, v6

    .line 706
    .local v16, scrollX:F
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getLeftBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v10, v0

    .line 707
    .local v10, leftBound:F
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getRightBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v15, v0

    .line 708
    .local v15, rightBound:F
    cmpg-float v20, v16, v10

    if-gez v20, :cond_6

    .line 709
    move/from16 v16, v10

    .line 714
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v16, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 715
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 716
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 710
    :cond_6
    cmpl-float v20, v16, v15

    if-lez v20, :cond_5

    .line 711
    move/from16 v16, v15

    goto :goto_2

    .line 720
    .end local v5           #activePointerIndex:I
    .end local v6           #deltaX:F
    .end local v10           #leftBound:F
    .end local v12           #oldScrollX:F
    .end local v15           #rightBound:F
    .end local v16           #scrollX:F
    .end local v19           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 722
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v9, v0

    .line 724
    .local v9, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v20

    mul-int/lit8 v16, v20, 0x3

    .line 727
    .local v16, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 728
    .local v13, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 729
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 730
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 731
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 732
    .local v17, totalDelta:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v9, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 733
    .local v11, nextPage:I
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 737
    .end local v11           #nextPage:I
    .end local v17           #totalDelta:I
    .end local v19           #x:F
    :goto_3
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 735
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 739
    .end local v5           #activePointerIndex:I
    .end local v9           #initialVelocity:I
    .end local v13           #pageOffset:F
    .end local v16           #scrollX:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mQuickReturn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {v20 .. v23}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 741
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 746
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 748
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 753
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 754
    .local v8, indexx:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 755
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 759
    .end local v8           #indexx:I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 761
    .local v14, pointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 763
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1005
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1006
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1009
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1013
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1014
    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 794
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 795
    int-to-float v0, p1

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrollX:F

    .line 796
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 797
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->manageLayers(F)V

    .line 798
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 473
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 427
    :cond_0
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    .line 428
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 429
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 191
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 192
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 202
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 210
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 213
    if-nez p3, :cond_0

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 214
    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 234
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 219
    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .line 220
    .local v1, dispatchSelected:Z
    :goto_1
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    .line 221
    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 222
    .local v0, destX:I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 225
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 228
    :cond_2
    if-eqz p2, :cond_4

    .line 229
    invoke-virtual {p0, v0, v2, p4}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_3
    move v1, v2

    .line 219
    goto :goto_1

    .line 231
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_4
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 232
    invoke-virtual {p0, v0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;)V
    .locals 0
    .parameter "cvb"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    .line 437
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 838
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadeDegree:F

    .line 841
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 834
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mFadeEnabled:Z

    .line 835
    return-void
.end method

.method setInternalPageChangeListener(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 270
    .local v0, oldListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 271
    return-object v0
.end method

.method public setOnClosedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

    .line 260
    return-void
.end method

.method public setOnOpenedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

    .line 256
    return-void
.end method

.method public setOnPageChangeListener(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 244
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mEnabled:Z

    .line 359
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 558
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mTouchMode:I

    .line 559
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->smoothScrollTo(III)V

    .line 369
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 381
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    .line 385
    .local v2, sx:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 386
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 387
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 388
    .local v5, dy:I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 389
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 390
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 400
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 403
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .line 404
    .local v11, width:I
    div-int/lit8 v9, v11, 0x2

    .line 405
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v12, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 406
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 407
    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 406
    add-float v7, v1, v12

    .line 409
    .local v7, distance:F
    const/4 v6, 0x0

    .line 410
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 411
    if-lez p3, :cond_4

    .line 412
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 418
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 420
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 421
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 414
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 415
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v12, 0x42c8

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 416
    const/16 v6, 0x258

    goto :goto_1
.end method
