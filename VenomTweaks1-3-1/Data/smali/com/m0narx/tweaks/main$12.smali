.class Lcom/m0narx/tweaks/main$12;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setSlidingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$12;->this$0:Lcom/m0narx/tweaks/main;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1020
    sget-object v0, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 1021
    iget-object v0, p0, Lcom/m0narx/tweaks/main$12;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->enterCarouselEditMode()V

    .line 1022
    return-void
.end method
