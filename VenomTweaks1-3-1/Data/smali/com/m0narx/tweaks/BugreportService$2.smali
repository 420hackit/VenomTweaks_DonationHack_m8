.class Lcom/m0narx/tweaks/BugreportService$2;
.super Landroid/os/CountDownTimer;
.source "BugreportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/BugreportService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/BugreportService;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/BugreportService;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/BugreportService$2;->this$0:Lcom/m0narx/tweaks/BugreportService;

    .line 173
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/m0narx/tweaks/BugreportService;->recordingFinished:Z

    .line 183
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 177
    sput-wide p1, Lcom/m0narx/tweaks/BugreportService;->timeRemaining:J

    .line 178
    return-void
.end method
