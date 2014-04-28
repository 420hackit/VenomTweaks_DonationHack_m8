.class public Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;,
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "m0narX_tweaks_SlidingMenu"

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

.field private mCloseListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;

.field private mHandler:Landroid/os/Handler;

.field private mMenu:Lcom/htc/widget/HtcExpandableListView;

.field private mMenuClickListener:Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;

.field private mOpenListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

.field private mSecondaryOpenListner:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

.field private mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

.field private mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 200
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mActionbarOverlay:Z

    .line 967
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v4, behindParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v19, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    .line 205
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v3, aboveParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v19, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setCustomViewAbove(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    new-instance v20, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;

    invoke-direct/range {v20 .. v21}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$1;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V

    invoke-virtual/range {v19 .. v20}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setOnPageChangeListener(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;)V

    .line 236
    sget-object v19, Lcom/m0narx/tweaks/R$styleable;->SlidingMenu:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 238
    .local v13, ta:Landroid/content/res/TypedArray;
    const/16 v19, 0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 239
    .local v16, viewAbove:I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setContent(I)V

    .line 244
    :goto_0
    const/16 v19, 0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 245
    .local v17, viewBehind:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenu(I)V

    .line 251
    :goto_1
    const/16 v19, 0x6

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 252
    .local v14, touchModeAbove:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 253
    const/16 v19, 0x7

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 254
    .local v15, touchModeBehind:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchModeBehind(I)V

    .line 256
    const/16 v19, 0x3

    const/high16 v20, -0x4080

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 257
    .local v7, offsetBehind:I
    const/16 v19, 0x4

    const/high16 v20, -0x4080

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 258
    .local v18, widthBehind:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 259
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 242
    .end local v7           #offsetBehind:I
    .end local v14           #touchModeAbove:I
    .end local v15           #touchModeBehind:I
    .end local v17           #viewBehind:I
    .end local v18           #widthBehind:I
    :cond_0
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 248
    .restart local v17       #viewBehind:I
    :cond_1
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 260
    .restart local v7       #offsetBehind:I
    .restart local v14       #touchModeAbove:I
    .restart local v15       #touchModeBehind:I
    .restart local v18       #widthBehind:I
    :cond_2
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_5

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 267
    :goto_2
    const/16 v19, 0x5

    const v20, 0x3ea8f5c3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 268
    .local v8, scrollOffsetBehind:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindScrollScale(F)V

    .line 270
    const/16 v19, 0x8

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 271
    .local v11, shadowRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_3

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setShadowDrawable(I)V

    .line 275
    :cond_3
    const/16 v19, 0x9

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 276
    .local v12, shadowWidth:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setShadowWidth(I)V

    .line 278
    const/16 v19, 0xa

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 279
    .local v6, fadeEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setFadeEnabled(Z)V

    .line 281
    const/16 v19, 0xb

    const v20, 0x3ea8f5c3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 282
    .local v5, fadeDeg:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setFadeDegree(F)V

    .line 284
    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 285
    .local v9, selectorEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSelectorEnabled(Z)V

    .line 287
    const/16 v19, 0xd

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 288
    .local v10, selectorRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_4

    .line 289
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSelectorDrawable(I)V

    .line 290
    :cond_4
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    return-void

    .line 262
    .end local v5           #fadeDeg:F
    .end local v6           #fadeEnabled:Z
    .end local v8           #scrollOffsetBehind:F
    .end local v9           #selectorEnabled:Z
    .end local v10           #selectorRes:I
    .end local v11           #shadowRes:I
    .end local v12           #shadowWidth:I
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindWidth(I)V

    goto/16 :goto_2

    .line 265
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mOpenListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mCloseListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mSecondaryOpenListner:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
    .locals 1
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)Lcom/htc/widget/HtcExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 989
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    return-object v0
.end method

.method private onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenuClickListener:Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-boolean v0, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->checked:Z

    .line 1047
    .local v0, state:Z
    iget-boolean v1, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->toggleOnClick:Z

    if-eqz v1, :cond_2

    .line 1048
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent()V

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenuClickListener:Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;

    invoke-interface {v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;->onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V

    .line 1052
    iget-boolean v1, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->checked:Z

    if-eq v1, v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 824
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 301
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 10
    .parameter "activity"
    .parameter "slideStyle"
    .parameter "actionbarOverlay"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 311
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    .line 312
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 315
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "This SlidingMenu appears to already be attached"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 319
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 320
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    packed-switch p2, :pswitch_data_0

    .line 346
    :cond_2
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iput-boolean v9, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mActionbarOverlay:Z

    .line 325
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 326
    .local v4, decor:Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 328
    .local v5, decorChild:Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 329
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 334
    .end local v4           #decor:Landroid/view/ViewGroup;
    .end local v5           #decorChild:Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mActionbarOverlay:Z

    .line 336
    const v6, 0x1020002

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 337
    .local v3, contentParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, content:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 342
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    .line 343
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->clearIgnoredViews()V

    .line 840
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 956
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 957
    .local v1, leftPadding:I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 958
    .local v2, rightPadding:I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 959
    .local v3, topPadding:I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 960
    .local v0, bottomPadding:I
    iget-boolean v4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mActionbarOverlay:Z

    if-nez v4, :cond_0

    .line 962
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setPadding(IIII)V

    .line 964
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecondaryMenuShowing()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public manageLayers(F)V
    .locals 4
    .parameter "percentOpen"

    .prologue
    const/4 v1, 0x0

    .line 970
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f80

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/4 v0, 0x1

    .line 971
    .local v0, layer:Z
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 973
    .local v1, layerType:I
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 974
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;

    invoke-direct {v3, p0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$2;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    :cond_1
    return-void

    .end local v0           #layer:Z
    .end local v1           #layerType:I
    :cond_2
    move v0, v1

    .line 970
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 945
    move-object v0, p1

    check-cast v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;

    .line 946
    .local v0, ss:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 947
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 948
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 935
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 936
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 937
    .local v0, ss:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;
    return-object v0
.end method

.method public refreshMenu()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->notifyDataSetChanged()V

    .line 1067
    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 833
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setAboveOffset(I)V

    .line 596
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 605
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setAboveOffset(I)V

    .line 606
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setCanvasTransformer(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$CanvasTransformer;)V

    .line 684
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setWidthOffset(I)V

    .line 576
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 586
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 587
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 672
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setScrollScale(F)V

    .line 675
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 9
    .parameter "i"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 617
    .local v1, display:Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 618
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 619
    .local v5, parameterTypes:[Ljava/lang/Class;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 620
    .local v4, parameter:Landroid/graphics/Point;
    const-string v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 621
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #parameter:Landroid/graphics/Point;
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    .local v6, width:I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 627
    return-void

    .line 623
    .end local v6           #width:I
    :catch_0
    move-exception v2

    .line 624
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6       #width:I
    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 637
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setBehindWidth(I)V

    .line 638
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 365
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent()V

    .line 366
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setFadeDegree(F)V

    .line 779
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setFadeEnabled(Z)V

    .line 769
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;>;"
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 1059
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 393
    return-void
.end method

.method public setMenuListView(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    .line 996
    :cond_0
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    .line 998
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mAdapter:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1000
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$3;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1009
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$4;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1026
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$5;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 1034
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenu:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$6;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$6;-><init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 1041
    return-void
.end method

.method public setOnCloseListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mCloseListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnCloseListener;

    .line 871
    return-void
.end method

.method public setOnClosedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setOnClosedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnClosedListener;)V

    .line 889
    return-void
.end method

.method public setOnOpenListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mOpenListener:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    .line 850
    return-void
.end method

.method public setOnOpenedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setOnOpenedListener(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenedListener;)V

    .line 880
    return-void
.end method

.method public setOnSlidingMenuItemClickListener(Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mMenuClickListener:Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;

    .line 1063
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 411
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 421
    return-void
.end method

.method public setSecondaryOnOpenListner(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mSecondaryOpenListner:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$OnOpenListener;

    .line 861
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 797
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 815
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 788
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .parameter "pixels"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setShadowWidth(I)V

    .line 760
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setShadowWidth(I)V

    .line 751
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 439
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    .line 456
    if-eqz p1, :cond_0

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;)V

    .line 459
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 462
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;)V

    .line 463
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 703
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 704
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setTouchMode(I)V

    .line 709
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 719
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setTouchMode(I)V

    .line 724
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1
    .parameter "touchmodeMarginThreshold"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setMarginThreshold(I)V

    .line 663
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent(Z)V

    .line 506
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 515
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showMenu(Z)V

    .line 472
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 481
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showSecondaryMenu(Z)V

    .line 489
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->mViewAbove:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 499
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->toggle(Z)V

    .line 522
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showContent(Z)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
