.class public final enum Lcom/m0narx/tweaks/widgets/Reboot$Action;
.super Ljava/lang/Enum;
.source "Reboot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/Reboot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/widgets/Reboot$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field public static final enum FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field public static final enum HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field public static final enum SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field public static final enum SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

.field public static final enum SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const-string v1, "SENSE"

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Reboot$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    new-instance v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const-string v1, "SYSTEMUI"

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/Reboot$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    new-instance v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const-string v1, "HOT_RESTART"

    invoke-direct {v0, v1, v4}, Lcom/m0narx/tweaks/widgets/Reboot$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    new-instance v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const-string v1, "SYSTEMUI_N_SENSE"

    invoke-direct {v0, v1, v5}, Lcom/m0narx/tweaks/widgets/Reboot$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    new-instance v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    const-string v1, "FULL_RESTART"

    invoke-direct {v0, v1, v6}, Lcom/m0narx/tweaks/widgets/Reboot$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/m0narx/tweaks/widgets/Reboot$Action;

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/Reboot$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/Reboot$Action;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/widgets/Reboot$Action;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/Reboot$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
