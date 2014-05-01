.class Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;
.super Ljava/lang/Object;
.source "BlinkFeedRatioDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekbar"
    .parameter "progress"
    .parameter "userChanged"

    .prologue
    .line 35
    if-eqz p3, :cond_2

    .line 36
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$0(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #setter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I
    invoke-static {v0, p2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$1(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #calls: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->updateProgress()Z
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$4(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$0(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I
    invoke-static {v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$5(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    #setter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$1(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V

    .line 47
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #calls: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->updateProgress()Z
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$4(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Z

    .line 50
    :cond_2
    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$2(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #setter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I
    invoke-static {v0, p2}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$3(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$2(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;->this$0:Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;

    #getter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I
    invoke-static {v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$6(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    #setter for: Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->access$3(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 53
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 56
    return-void
.end method
