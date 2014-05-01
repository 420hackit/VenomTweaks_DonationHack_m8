.class Lcom/m0narx/tweaks/BugreportService$IncomingHandler;
.super Landroid/os/Handler;
.source "BugreportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/BugreportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/BugreportService;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/BugreportService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/m0narx/tweaks/BugreportService$IncomingHandler;->this$0:Lcom/m0narx/tweaks/BugreportService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    return-void
.end method
