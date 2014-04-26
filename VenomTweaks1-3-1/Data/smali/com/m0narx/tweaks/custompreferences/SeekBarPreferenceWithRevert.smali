.class public Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
.super Lcom/htc/preference/HtcPreference;
.source "SeekBarPreferenceWithRevert.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    }
.end annotation


# instance fields
.field private defaultValue:I

.field private mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

.field private mMax:I

.field private mProgress:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "mContext"
    .parameter "m"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setLayoutResource(I)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "mContext"
    .parameter "as"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "mContext"
    .parameter "as"
    .parameter "paramInt"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v4, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->defaultValue:I

    .line 45
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010077

    aput v3, v2, v4

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, ta:Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 49
    .local v1, test:I
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setLayoutResource(I)V

    .line 52
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "isChanged"

    .prologue
    .line 61
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    if-le p1, v0, :cond_0

    .line 62
    iget p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    .line 64
    :cond_0
    if-gez p1, :cond_1

    .line 65
    const/4 p1, 0x0

    .line 67
    :cond_1
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 68
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    .line 69
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->persistInt(I)Z

    .line 70
    if-eqz p2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->notifyChanged()V

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "mView"

    .prologue
    const/4 v7, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 84
    const v5, 0x7f05003b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    .line 85
    .local v3, seekBar:Lcom/htc/widget/HtcSeekBar;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 86
    .local v2, padding:I
    invoke-virtual {v3, v2, v7, v2, v7}, Lcom/htc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 87
    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    iget v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 89
    iget v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 90
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 92
    const v5, 0x7f05003d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, btnDecrease:Landroid/widget/Button;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    const v5, 0x7f05003e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, btnIncrease:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v5, "<"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 100
    .local v4, title:Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 102
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mSummaryView:Landroid/widget/TextView;

    .line 103
    iget-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mSummaryView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 104
    const-string v5, "m0narX_seekbar"

    const-string v6, "mSummaryView is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCListBackground(Landroid/view/View;)V

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f05003e

    if-ne v1, v2, :cond_2

    .line 241
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->defaultValue:I

    .line 243
    .local v0, newVal:I
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    .line 244
    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 246
    :cond_1
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->callChangeListener(Ljava/lang/Object;)Z

    .line 250
    .end local v0           #newVal:I
    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "paramTypedArray"
    .parameter "paramInt"

    .prologue
    .line 113
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

    .line 117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 118
    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    const/16 v0, 0x46

    if-ne p2, v0, :cond_2

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 124
    :cond_1
    :goto_0
    return v1

    .line 120
    :cond_2
    const/16 v0, 0x45

    if-ne p2, v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "mSeekBar"
    .parameter "paramInt"
    .parameter "isChanged"

    .prologue
    .line 128
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->syncProgress(Landroid/widget/SeekBar;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    invoke-interface {v0, p0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;->onProgressChanged(Lcom/htc/preference/HtcPreference;I)V

    .line 134
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "paramParcelable"

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    .line 150
    .local v0, localSavedState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 151
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;->progress:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    .line 152
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;->max:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    .line 153
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->notifyChanged()V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 158
    .local v1, state:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    .local v0, sState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;->progress:I

    .line 161
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;->max:I

    .line 162
    move-object v1, v0

    .line 164
    .end local v0           #sState:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    :cond_0
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "setInit"
    .parameter "paramObject"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 173
    .end local p2
    :goto_0
    return-void

    .line 171
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "paramSeekBar"

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mTrackingTouch:Z

    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "paramSeekBar"

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mTrackingTouch:Z

    .line 181
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->syncProgress(Landroid/widget/SeekBar;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 186
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    if-eq p1, v0, :cond_0

    .line 187
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mMax:I

    .line 188
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->notifyChanged()V

    .line 190
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(IZ)V

    .line 194
    return-void
.end method

.method public setRevertToValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 57
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->defaultValue:I

    .line 58
    return-void
.end method

.method public setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    .line 30
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mTrackingTouch:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "mSeekBar"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 198
    .local v0, progress:I
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(IZ)V

    goto :goto_0
.end method
