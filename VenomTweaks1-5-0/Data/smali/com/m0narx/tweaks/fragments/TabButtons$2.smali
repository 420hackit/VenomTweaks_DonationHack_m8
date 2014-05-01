.class Lcom/m0narx/tweaks/fragments/TabButtons$2;
.super Ljava/lang/Object;
.source "TabButtons.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabButtons;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

.field private final synthetic val$AirplaneModeItems:[Z

.field private final synthetic val$AirplaneModeValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabButtons;[Z[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->val$AirplaneModeItems:[Z

    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->val$AirplaneModeValues:[Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 571
    const-string v1, ""

    .line 573
    .local v1, items:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->val$AirplaneModeItems:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 580
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    .line 582
    const-string v3, "tweaks_hide_navbaronpress"

    const-string v4, ""

    .line 581
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 590
    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabButtons;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->restartVenomNavBar(Landroid/content/Context;)V

    .line 591
    return-void

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->val$AirplaneModeItems:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->val$AirplaneModeValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$2;->this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabButtons;->Cr:Landroid/content/ContentResolver;

    .line 586
    const-string v3, "tweaks_hide_navbaronpress"

    .line 587
    const/4 v4, 0x0

    .line 588
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 587
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
