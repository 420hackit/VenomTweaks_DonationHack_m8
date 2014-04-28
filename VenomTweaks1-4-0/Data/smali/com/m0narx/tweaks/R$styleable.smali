.class public final Lcom/m0narx/tweaks/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final IconPreference:[I = null

.field public static final IconPreference_icon:I = 0x0

.field public static final SlidingMenu:[I = null

.field public static final SlidingMenu_behindOffset:I = 0x3

.field public static final SlidingMenu_behindScrollScale:I = 0x5

.field public static final SlidingMenu_behindWidth:I = 0x4

.field public static final SlidingMenu_fadeDegree:I = 0xb

.field public static final SlidingMenu_fadeEnabled:I = 0xa

.field public static final SlidingMenu_mode:I = 0x0

.field public static final SlidingMenu_selectorDrawable:I = 0xd

.field public static final SlidingMenu_selectorEnabled:I = 0xc

.field public static final SlidingMenu_shadowDrawable:I = 0x8

.field public static final SlidingMenu_shadowWidth:I = 0x9

.field public static final SlidingMenu_touchModeAbove:I = 0x6

.field public static final SlidingMenu_touchModeBehind:I = 0x7

.field public static final SlidingMenu_viewAbove:I = 0x1

.field public static final SlidingMenu_viewBehind:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1864
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1865
    const v2, 0x7f01000e

    aput v2, v0, v1

    .line 1864
    sput-object v0, Lcom/m0narx/tweaks/R$styleable;->IconPreference:[I

    .line 1913
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/m0narx/tweaks/R$styleable;->SlidingMenu:[I

    .line 2113
    return-void

    .line 1913
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
