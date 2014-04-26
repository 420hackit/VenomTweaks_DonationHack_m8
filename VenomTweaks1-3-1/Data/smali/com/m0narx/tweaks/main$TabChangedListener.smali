.class Lcom/m0narx/tweaks/main$TabChangedListener;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/main;Lcom/m0narx/tweaks/main$TabChangedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/main$TabChangedListener;-><init>(Lcom/m0narx/tweaks/main;)V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    #calls: Lcom/m0narx/tweaks/main;->updateSlidingMenu(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/m0narx/tweaks/main;->access$3(Lcom/m0narx/tweaks/main;Ljava/lang/String;)V

    .line 728
    const-string v0, "m0narX_tweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current tab is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    #calls: Lcom/m0narx/tweaks/main;->setResetVisibility()V
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$4(Lcom/m0narx/tweaks/main;)V

    .line 730
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->showDialog(Landroid/content/Context;)V

    .line 731
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->donation:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/main;->access$2(Lcom/m0narx/tweaks/main;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/main$TabChangedListener;->this$0:Lcom/m0narx/tweaks/main;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/main;->finish()V

    .line 736
    :cond_1
    return-void
.end method
