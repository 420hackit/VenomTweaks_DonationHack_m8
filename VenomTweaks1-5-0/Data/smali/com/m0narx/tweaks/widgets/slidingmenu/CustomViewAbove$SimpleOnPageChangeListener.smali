.class public Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "CustomViewAbove.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 135
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 127
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 131
    return-void
.end method
