.class Lcom/m0narx/tweaks/main$14;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/main$14;->this$0:Lcom/m0narx/tweaks/main;

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/m0narx/tweaks/main$14;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/m0narx/tweaks/custompreferences/Prefs;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/m0narx/tweaks/main$14;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1054
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 1055
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->resetToDefaults()V

    .line 1057
    :cond_0
    return-void
.end method
