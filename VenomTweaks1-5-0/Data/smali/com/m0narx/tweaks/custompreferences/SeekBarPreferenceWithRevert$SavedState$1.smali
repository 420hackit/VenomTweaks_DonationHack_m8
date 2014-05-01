.class Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarPreferenceWithRevert.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 211
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    invoke-direct {v0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;
    .locals 1
    .parameter "paramInt"

    .prologue
    .line 215
    new-array v0, p1, [Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState$1;->newArray(I)[Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert$SavedState;

    move-result-object v0

    return-object v0
.end method
