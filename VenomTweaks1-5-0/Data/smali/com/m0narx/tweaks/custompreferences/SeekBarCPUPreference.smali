.class public Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SeekBarCPUPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;
    }
.end annotation


# instance fields
.field private incrValue:I

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
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setLayoutResource(I)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "mContext"
    .parameter "as"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "mContext"
    .parameter "as"
    .parameter "paramInt"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->incrValue:I

    .line 45
    new-array v1, v1, [I

    const v2, 0x1010077

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setLayoutResource(I)V

    .line 50
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "isChanged"

    .prologue
    .line 53
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 54
    iget p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    .line 56
    :cond_0
    if-gez p1, :cond_1

    .line 57
    const/4 p1, 0x0

    .line 59
    :cond_1
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 60
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    .line 61
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->persistInt(I)Z

    .line 62
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->notifyChanged()V

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "mView"

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 75
    const v5, 0x7f06003b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    .line 76
    .local v3, seekBar:Lcom/htc/widget/HtcSeekBar;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 77
    .local v2, padding:I
    invoke-virtual {v3, v2, v7, v2, v7}, Lcom/htc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 78
    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 80
    iget v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 81
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 83
    const v5, 0x7f06003d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    .local v0, btnDecrease:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v5, 0x7f06003e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, btnIncrease:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, title:Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 91
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mSummaryView:Landroid/widget/TextView;

    .line 92
    iget-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mSummaryView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 93
    const-string v5, "m0narX_seekbar"

    const-string v6, "mSummaryView is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCListBackground(Landroid/view/View;)V

    .line 98
    return-void

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, newVal:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f06003e

    if-ne v1, v2, :cond_3

    .line 234
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->incrValue:I

    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    add-int v0, v1, v2

    .line 238
    :cond_0
    :goto_0
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    .line 239
    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 241
    :cond_2
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

    .line 242
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 244
    return-void

    .line 235
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f06003d

    if-ne v1, v2, :cond_0

    .line 236
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->incrValue:I

    mul-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    add-int v0, v1, v2

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "paramTypedArray"
    .parameter "paramInt"

    .prologue
    .line 101
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

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 110
    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    const/16 v0, 0x46

    if-ne p2, v0, :cond_2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 116
    :cond_1
    :goto_0
    return v1

    .line 112
    :cond_2
    const/16 v0, 0x45

    if-ne p2, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "mSeekBar"
    .parameter "paramInt"
    .parameter "isChanged"

    .prologue
    .line 120
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    invoke-interface {v0, p0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;->onProgressChanged(Lcom/htc/preference/HtcPreference;I)V

    .line 126
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "paramParcelable"

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;

    .line 142
    .local v0, localSavedState:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 143
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;->progress:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    .line 144
    iget v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;->max:I

    iput v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    .line 145
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->notifyChanged()V

    .line 146
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 150
    .local v1, state:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 152
    .local v0, sState:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;->progress:I

    .line 153
    iget v2, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    iput v2, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;->max:I

    .line 154
    move-object v1, v0

    .line 156
    .end local v0           #sState:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference$SavedState;
    :cond_0
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "setInit"
    .parameter "paramObject"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 165
    .end local p2
    :goto_0
    return-void

    .line 163
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "paramSeekBar"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mTrackingTouch:Z

    .line 169
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "paramSeekBar"

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mTrackingTouch:Z

    .line 173
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 105
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->incrValue:I

    .line 106
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 178
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 179
    iput p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mMax:I

    .line 180
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->notifyChanged()V

    .line 182
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(IZ)V

    .line 186
    return-void
.end method

.method public setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mCallback:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;

    .line 31
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "mSeekBar"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 190
    .local v0, progress:I
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget v1, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(IZ)V

    goto :goto_0
.end method
