.class Lcom/m0narx/tweaks/fragments/TabColors$2;
.super Ljava/lang/Object;
.source "TabColors.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabColors;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabColors;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabColors;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabColors$2;->this$0:Lcom/m0narx/tweaks/fragments/TabColors;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f060016

    if-ne v0, v1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabColors$2;->this$0:Lcom/m0narx/tweaks/fragments/TabColors;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabColors;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_transp_home"

    .line 752
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 751
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabColors$2;->this$0:Lcom/m0narx/tweaks/fragments/TabColors;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabColors;->updateHeader()V

    .line 759
    return-void

    .line 753
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f060017

    if-ne v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabColors$2;->this$0:Lcom/m0narx/tweaks/fragments/TabColors;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabColors;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_transp_app"

    .line 755
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 754
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 746
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 742
    return-void
.end method
