.class public Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 918
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState$1;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState$1;-><init>()V

    .line 917
    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 926
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->mItem:I

    .line 903
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "item"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 897
    iput p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->mItem:I

    .line 898
    return-void
.end method


# virtual methods
.method public getItem()I
    .locals 1

    .prologue
    .line 906
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->mItem:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 913
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 914
    iget v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenu$SavedState;->mItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    return-void
.end method
