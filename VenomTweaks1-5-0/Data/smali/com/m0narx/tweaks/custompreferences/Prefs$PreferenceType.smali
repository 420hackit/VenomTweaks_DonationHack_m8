.class public final enum Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;
.super Ljava/lang/Enum;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum ColorNoAlpha:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum SeekBarCPU:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field public static final enum SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "List"

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "ListWithAutoSummary"

    invoke-direct {v0, v1, v4}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "SeekBar"

    invoke-direct {v0, v1, v5}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "Color"

    invoke-direct {v0, v1, v6}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "ColorNoAlpha"

    invoke-direct {v0, v1, v7}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ColorNoAlpha:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "SeekBarCPU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarCPU:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "SeekBarWithRevert"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "Input"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "CheckBox"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "NoneInt"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const-string v1, "NoneString"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 392
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ColorNoAlpha:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarCPU:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ENUM$VALUES:[Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ENUM$VALUES:[Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
