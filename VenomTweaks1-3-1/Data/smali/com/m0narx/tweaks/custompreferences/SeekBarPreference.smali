.class public Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

.field private mMax:I

.field private mProgress:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "mContext"
    .parameter "as"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "mContext"
    .parameter "as"
    .parameter "paramInt"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010077

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setMax(I)V

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "isChanged"

    .prologue
    .line 48
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 49
    iget p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    .line 51
    :cond_0
    if-gez p1, :cond_1

    .line 52
    const/4 p1, 0x0

    .line 54
    :cond_1
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 55
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->persistInt(I)Z

    .line 57
    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->notifyChanged()V

    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "mView"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v3, 0x7f05003b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    .line 71
    .local v1, seekBar:Lcom/htc/widget/HtcSeekBar;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 72
    .local v0, padding:I
    invoke-virtual {v1, v0, v5, v0, v5}, Lcom/htc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 73
    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    iget v3, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 75
    iget v3, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 76
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 78
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, title:Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 81
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    .line 82
    iget-object v3, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 83
    const-string v3, "m0narX_seekbar"

    const-string v4, "mSummaryView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCListBackground(Landroid/view/View;)V

    .line 88
    return-void

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "paramTypedArray"
    .parameter "paramInt"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "mView"
    .parameter "keyCode"
    .parameter "KE"

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 96
    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    const/16 v0, 0x46

    if-ne p2, v0, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 102
    :cond_1
    :goto_0
    return v1

    .line 98
    :cond_2
    const/16 v0, 0x45

    if-ne p2, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "mSeekBar"
    .parameter "paramInt"
    .parameter "isChanged"

    .prologue
    .line 106
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    invoke-interface {v0, p0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;->onProgressChanged(Lcom/htc/preference/HtcPreference;I)V

    .line 112
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "paramParcelable"

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;

    .line 128
    .local v0, localSavedState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 129
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    .line 130
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    .line 131
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->notifyChanged()V

    .line 132
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 136
    .local v1, state:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    .local v0, sState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->progress:I

    .line 139
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->max:I

    .line 140
    move-object v1, v0

    .line 142
    .end local v0           #sState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;
    :cond_0
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "setInit"
    .parameter "paramObject"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, val:I
    if-eqz p1, :cond_0

    .line 149
    :try_start_0
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getPersistedInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 155
    return-void

    .line 151
    .restart local p2
    :cond_0
    :try_start_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "paramSeekBar"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mTrackingTouch:Z

    .line 159
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "paramSeekBar"

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mTrackingTouch:Z

    .line 163
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 168
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 169
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mMax:I

    .line 170
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->notifyChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(IZ)V

    .line 176
    return-void
.end method

.method public setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    .line 28
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "mSeekBar"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 180
    .local v0, progress:I
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0
.end method
