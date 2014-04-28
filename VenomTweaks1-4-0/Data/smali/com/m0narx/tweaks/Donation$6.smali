.class Lcom/m0narx/tweaks/Donation$6;
.super Ljava/lang/Object;
.source "Donation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Donation;->createDonationDialog()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/Donation$6;->this$0:Lcom/m0narx/tweaks/Donation;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/m0narx/tweaks/Donation$6;->this$0:Lcom/m0narx/tweaks/Donation;

    iget-object v0, v0, Lcom/m0narx/tweaks/Donation;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/m0narx/tweaks/Donation;->showSelectDonationApp(Landroid/app/Activity;)V

    .line 399
    return-void
.end method
