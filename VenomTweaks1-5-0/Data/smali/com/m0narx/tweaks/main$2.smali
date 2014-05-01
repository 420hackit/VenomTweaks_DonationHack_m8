.class Lcom/m0narx/tweaks/main$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->SetupActionBar()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/main$2;->this$0:Lcom/m0narx/tweaks/main;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/m0narx/tweaks/main$2;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v0, v0, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->toggle()V

    .line 213
    return-void
.end method
