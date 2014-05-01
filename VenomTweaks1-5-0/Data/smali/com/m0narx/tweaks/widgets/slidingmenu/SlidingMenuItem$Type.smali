.class public final enum Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;
.super Ljava/lang/Enum;
.source "SlidingMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CheckableItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

.field public static final enum Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

.field public static final enum Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

.field public static final enum Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const-string v1, "Group"

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const-string v1, "Divider"

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const-string v1, "Item"

    invoke-direct {v0, v1, v4}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    new-instance v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    const-string v1, "CheckableItem"

    invoke-direct {v0, v1, v5}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->CheckableItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->CheckableItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
