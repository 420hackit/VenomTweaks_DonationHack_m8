.class public final enum Lcom/m0narx/tweaks/widgets/themeHelper$element;
.super Ljava/lang/Enum;
.source "themeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/themeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/widgets/themeHelper$element;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

.field public static final enum WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;


# instance fields
.field private externalRes:Ljava/lang/String;

.field private internalRes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "ALL"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 21
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "BATTERY"

    const-string v2, "stat_sys_battery"

    const-string v3, "battery"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 22
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "WIFI"

    const-string v2, "stat_sys_wifi_signal_3"

    const-string v3, "wifi"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 23
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "SIGNAL"

    const-string v2, "stat_sys_5signal_3"

    const-string v3, "signal"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 24
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "GPS"

    const-string v2, "stat_sys_gps_on"

    const-string v3, "gps"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 25
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "BLUETOOTH"

    const/4 v2, 0x5

    const-string v3, "stat_sys_data_bluetooth_connected"

    const-string v4, "bluetooth"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 26
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "ALARM"

    const/4 v2, 0x6

    const-string v3, "stat_notify_alarm"

    const-string v4, "alarm"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 27
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "HEADSET"

    const/4 v2, 0x7

    const-string v3, "stat_sys_headphones"

    const-string v4, "headset"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 28
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "SYNC"

    const/16 v2, 0x8

    const-string v3, "stat_sys_sync"

    const-string v4, "sync"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 29
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "VOLUME"

    const/16 v2, 0x9

    const-string v3, "stat_sys_ringer_silent"

    const-string v4, "volume"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 30
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "DATA"

    const/16 v2, 0xa

    const-string v3, "stat_sys_data_inandout_h"

    const-string v4, "data"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 31
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "EQS"

    const/16 v2, 0xb

    const-string v3, "eqs_tweaks_icon"

    const-string v4, "eqs_tweaks_icon"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 32
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    const-string v1, "HEQS"

    const/16 v2, 0xc

    const-string v3, "stat_tweaks"

    const-string v4, "stat_tweaks"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper$element;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    .line 19
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v1, v0, v6

    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v1, v0, v8

    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->GPS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BLUETOOTH:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALARM:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEADSET:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SYNC:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->VOLUME:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->EQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/m0narx/tweaks/widgets/themeHelper$element;->HEQS:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    aput-object v2, v0, v1

    sput-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/themeHelper$element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "internalRes"
    .parameter "externalRes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->internalRes:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->externalRes:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/themeHelper$element;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/widgets/themeHelper$element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/themeHelper$element;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/widgets/themeHelper$element;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getExternalRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->externalRes:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper$element;->internalRes:Ljava/lang/String;

    return-object v0
.end method
