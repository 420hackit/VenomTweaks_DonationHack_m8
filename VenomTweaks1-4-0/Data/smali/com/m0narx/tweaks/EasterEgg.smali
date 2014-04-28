.class public Lcom/m0narx/tweaks/EasterEgg;
.super Landroid/app/Activity;
.source "EasterEgg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/EasterEgg;->requestWindowFeature(I)Z

    .line 19
    invoke-virtual {p0}, Lcom/m0narx/tweaks/EasterEgg;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 22
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/EasterEgg;->setContentView(I)V

    .line 24
    return-void
.end method
