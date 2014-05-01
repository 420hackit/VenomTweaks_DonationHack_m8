.class Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->progress:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->max:I

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "paramParcelable"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 212
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return-void
.end method
