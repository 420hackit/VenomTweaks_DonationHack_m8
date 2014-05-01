.class public Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "m0narX_tweaks_CustomViewBehind"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mMarginThreshold:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTransformer:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

.field private mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTouchMode:I

    .line 249
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorEnabled:Z

    .line 40
    const/high16 v0, 0x4240

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    .line 41
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 290
    .local v0, y:I
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 291
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTransformer:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTransformer:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 120
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "content"
    .parameter "canvas"
    .parameter "openPercent"

    .prologue
    .line 254
    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, tag:Ljava/lang/String;
    const-string v4, "m0narX_tweaks_CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 260
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 262
    .local v1, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 263
    .local v2, right:I
    sub-int v0, v2, v1

    .line 264
    .local v0, left:I
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v5

    invoke-virtual {p2, v0, v4, v2, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 265
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "content"
    .parameter "canvas"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 245
    .local v0, left:I
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 2
    .parameter "content"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 1
    .parameter "content"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    return v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 2
    .parameter "content"
    .parameter "page"

    .prologue
    .line 194
    packed-switch p2, :pswitch_data_0

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 2
    .parameter "page"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    if-le p1, v1, :cond_2

    const/4 p1, 0x2

    .line 178
    :cond_0
    :goto_0
    if-le p1, v1, :cond_1

    move p1, v0

    .line 181
    .end local p1
    :cond_1
    return p1

    .line 177
    .restart local p1
    :cond_2
    if-ge p1, v1, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 2
    .parameter "content"
    .parameter "x"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 213
    .local v0, left:I
    if-lt p2, v0, :cond_0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 1
    .parameter "dx"

    .prologue
    .line 235
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 1
    .parameter "dx"

    .prologue
    .line 239
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .parameter "content"
    .parameter "currPage"
    .parameter "x"

    .prologue
    .line 221
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 1
    .parameter "content"
    .parameter "currPage"
    .parameter "x"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 128
    sub-int v1, p4, p2

    .line 129
    .local v1, width:I
    sub-int v0, p5, p3

    .line 130
    .local v0, height:I
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 131
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-static {v5, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 138
    .local v3, width:I
    invoke-static {v5, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 139
    .local v2, height:I
    invoke-virtual {p0, v3, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setMeasuredDimension(II)V

    .line 140
    iget v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 141
    .local v1, contentWidth:I
    invoke-static {p2, v5, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 142
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 143
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 145
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 2
    .parameter "content"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, vis:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x3

    if-lt p2, v1, :cond_0

    const/4 v0, 0x4

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v1, p3}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->scrollTo(II)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setVisibility(I)V

    .line 191
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTransformer:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->invalidate()V

    .line 103
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTransformer:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;

    .line 49
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mChildrenEnabled:Z

    .line 96
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public setCustomViewAbove(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)V
    .locals 0
    .parameter "customViewAbove"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    .line 45
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0
    .parameter "marginThreshold"

    .prologue
    .line 57
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    .line 58
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_1
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .parameter "scrollScale"

    .prologue
    .line 159
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mScrollScale:F

    .line 160
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f06001f

    .line 277
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 279
    iput-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 281
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string v1, "m0narX_tweaks_CustomViewBehindSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 284
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->invalidate()V

    .line 286
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 296
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->refreshDrawableState()V

    .line 297
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mSelectorEnabled:Z

    .line 274
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->invalidate()V

    .line 169
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 172
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mShadowWidth:I

    .line 173
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->invalidate()V

    .line 174
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 217
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mTouchMode:I

    .line 218
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 52
    iput p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->mWidthOffset:I

    .line 53
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->requestLayout()V

    .line 54
    return-void
.end method
