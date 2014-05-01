.class public Lcom/m0narx/tweaks/AdbService$LocalBinder;
.super Landroid/os/Binder;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/AdbService;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/AdbService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/m0narx/tweaks/AdbService$LocalBinder;->this$0:Lcom/m0narx/tweaks/AdbService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/m0narx/tweaks/AdbService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/AdbService$LocalBinder;->this$0:Lcom/m0narx/tweaks/AdbService;

    return-object v0
.end method
