.class Lcom/m0narx/tweaks/Donation$1;
.super Ljava/lang/Object;
.source "Donation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Donation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Donation;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Donation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Donation$1;->this$0:Lcom/m0narx/tweaks/Donation;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 324
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->getDonationTimeOut()I

    move-result v0

    .line 325
    .local v0, counter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Misc;->getDonationTimeOut()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 329
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/Donation$1;->this$0:Lcom/m0narx/tweaks/Donation;

    #getter for: Lcom/m0narx/tweaks/Donation;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/m0narx/tweaks/Donation;->access$0(Lcom/m0narx/tweaks/Donation;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x44c

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 327
    add-int/lit8 v0, v0, -0x1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
