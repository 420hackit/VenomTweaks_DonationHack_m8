.class Lcom/m0narx/tweaks/fragments/colors_settings$2;
.super Ljava/lang/Object;
.source "colors_settings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/colors_settings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/colors_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/colors_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/colors_settings$2;->this$0:Lcom/m0narx/tweaks/fragments/colors_settings;

    .line 619
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
    .line 630
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f050017

    if-ne v0, v1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/colors_settings$2;->this$0:Lcom/m0narx/tweaks/fragments/colors_settings;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/colors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_transp_home"

    .line 632
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 631
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/colors_settings$2;->this$0:Lcom/m0narx/tweaks/fragments/colors_settings;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/colors_settings;->updateHeader()V

    .line 639
    return-void

    .line 633
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f050018

    if-ne v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/colors_settings$2;->this$0:Lcom/m0narx/tweaks/fragments/colors_settings;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/colors_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_transp_app"

    .line 635
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 634
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 626
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 622
    return-void
.end method
