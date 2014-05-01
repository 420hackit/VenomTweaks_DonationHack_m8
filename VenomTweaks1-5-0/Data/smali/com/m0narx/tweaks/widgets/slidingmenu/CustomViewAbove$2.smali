.class Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;
.super Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    .line 163
    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove$2;->this$0:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;

    #getter for: Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->mViewBehind:Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;->access$0(Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewAbove;)Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
