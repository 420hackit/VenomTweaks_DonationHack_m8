.class public Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;
.super Landroid/app/Activity;
.source "PieTutorial.java"


# instance fields
.field private gifView:Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 25
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->setContentView(I)V

    .line 26
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->gifView:Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;

    .line 28
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->gifView:Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;->clearCache(Z)V

    .line 29
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->gifView:Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;

    const-string v1, "file:///android_asset/pie_tutorial.gif"

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;->setGifAssetPath(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;->gifView:Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorialView;->setBackgroundColor(I)V

    .line 32
    return-void
.end method
