.class final enum Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;
.super Ljava/lang/Enum;
.source "PrismIconsCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

.field public static final enum Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

.field public static final enum Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

.field public static final enum Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    const-string v1, "Icon"

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    const-string v1, "AllApps"

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    const-string v1, "Workspase"

    invoke-direct {v0, v1, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    new-instance v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    const-string v1, "Unlock"

    invoke-direct {v0, v1, v5}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    .line 411
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    aput-object v1, v0, v2

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    aput-object v1, v0, v3

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    aput-object v1, v0, v4

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    aput-object v1, v0, v5

    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ENUM$VALUES:[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ENUM$VALUES:[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
