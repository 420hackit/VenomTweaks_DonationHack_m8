.class Lcom/m0narx/tweaks/main$4$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main$4;->onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/main$4;

.field private final synthetic val$cBox:Landroid/widget/CheckBox;

.field private final synthetic val$sensitivy:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main$4;Lcom/htc/widget/HtcSeekBar;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$4$2;->this$1:Lcom/m0narx/tweaks/main$4;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$4$2;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    iput-object p3, p0, Lcom/m0narx/tweaks/main$4$2;->val$cBox:Landroid/widget/CheckBox;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4$2;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    .line 480
    invoke-virtual {v1}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v1

    .line 479
    add-int/lit8 v0, v1, 0x19

    .line 483
    .local v0, value:I
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4$2;->this$1:Lcom/m0narx/tweaks/main$4;

    #getter for: Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;
    invoke-static {v1}, Lcom/m0narx/tweaks/main$4;->access$0(Lcom/m0narx/tweaks/main$4;)Lcom/m0narx/tweaks/main;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 484
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 485
    const-string v2, "sensitiy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4$2;->this$1:Lcom/m0narx/tweaks/main$4;

    #getter for: Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;
    invoke-static {v1}, Lcom/m0narx/tweaks/main$4;->access$0(Lcom/m0narx/tweaks/main$4;)Lcom/m0narx/tweaks/main;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 491
    const-string v2, "enable"

    .line 492
    iget-object v3, p0, Lcom/m0narx/tweaks/main$4$2;->val$cBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 490
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 493
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 495
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4$2;->this$1:Lcom/m0narx/tweaks/main$4;

    #getter for: Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;
    invoke-static {v1}, Lcom/m0narx/tweaks/main$4;->access$0(Lcom/m0narx/tweaks/main$4;)Lcom/m0narx/tweaks/main;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 496
    iget-object v2, p0, Lcom/m0narx/tweaks/main$4$2;->val$cBox:Landroid/widget/CheckBox;

    .line 497
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 496
    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    .line 498
    iget-object v1, p0, Lcom/m0narx/tweaks/main$4$2;->this$1:Lcom/m0narx/tweaks/main$4;

    #getter for: Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;
    invoke-static {v1}, Lcom/m0narx/tweaks/main$4;->access$0(Lcom/m0narx/tweaks/main$4;)Lcom/m0narx/tweaks/main;

    move-result-object v1

    iget-object v1, v1, Lcom/m0narx/tweaks/main;->mSlidingMenu:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;

    .line 499
    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 501
    return-void
.end method
