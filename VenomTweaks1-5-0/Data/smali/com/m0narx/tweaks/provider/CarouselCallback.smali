.class public interface abstract Lcom/m0narx/tweaks/provider/CarouselCallback;
.super Ljava/lang/Object;
.source "CarouselCallback.java"


# virtual methods
.method public abstract onCarouselLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCurrentTabChanged(Ljava/lang/String;)V
.end method

.method public abstract onExitEditMode()V
.end method
