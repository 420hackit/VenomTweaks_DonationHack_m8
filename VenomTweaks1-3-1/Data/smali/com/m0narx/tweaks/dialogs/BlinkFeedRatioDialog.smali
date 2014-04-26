.class public Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;
.super Lcom/htc/dialog/HtcAlertDialog;
.source "BlinkFeedRatioDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DEFAULT_RATIO_NEWS:I = 0x32

.field public static final DEFAULT_RATIO_SOCIAL:I = 0x26


# instance fields
.field private mLocal:Lcom/htc/widget/HtcSeekBar;

.field private mLocalTitle:Landroid/widget/TextView;

.field private mNews:Lcom/htc/widget/HtcSeekBar;

.field private mNewsProgress:I

.field private mNewsTitle:Landroid/widget/TextView;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSocial:Lcom/htc/widget/HtcSeekBar;

.field private mSocialProgress:I

.field private mSocialTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog$1;-><init>(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->updateProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    return v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    return v0
.end method

.method private updateProgress()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    iget v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    rsub-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    sub-int v0, v3, v4

    .line 107
    .local v0, localProgress:I
    if-gez v0, :cond_0

    .line 120
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0411

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;

    iget v4, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 114
    iget-object v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0410

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;

    iget v4, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 117
    iget-object v3, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocalTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0412

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocal:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    move v1, v2

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_blinkfeed_ratio_social"

    iget v2, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_blinkfeed_ratio_news"

    iget v2, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->dismiss()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    .line 68
    const v0, 0x7f0a040e

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setTitle(I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setCancelable(Z)V

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialTitle:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsTitle:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocalTitle:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcSeekBar;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;

    .line 79
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcSeekBar;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;

    .line 80
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcSeekBar;

    iput-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocal:Lcom/htc/widget/HtcSeekBar;

    .line 82
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocial:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNews:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 87
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocal:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 89
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_blinkfeed_ratio_social"

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialProgress:I

    .line 90
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_blinkfeed_ratio_news"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsProgress:I

    .line 92
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocal:Lcom/htc/widget/HtcSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mSocialTitle:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/m0narx/framework/HTCStyleUtil;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 95
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mNewsTitle:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/m0narx/framework/HTCStyleUtil;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 96
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mLocalTitle:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/m0narx/framework/HTCStyleUtil;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 97
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/m0narx/framework/HTCStyleUtil;->setHTCListBackground(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->setView(Landroid/view/View;)V

    .line 100
    invoke-super {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/m0narx/tweaks/dialogs/BlinkFeedRatioDialog;->updateProgress()Z

    .line 103
    return-void
.end method
