.class Lcom/m0narx/tweaks/fragments/TabLockscreen$1;
.super Ljava/lang/Object;
.source "TabLockscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabLockscreen;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 120
    .local v1, TweakName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen$1;->this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 134
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    return-void

    .line 125
    :pswitch_0
    const-string v1, "tweaks_lockscreen_hide_date"

    .line 126
    goto :goto_0

    .line 128
    :pswitch_1
    const-string v1, "tweaks_lockscreen_hide_time"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    const-string v1, "tweaks_lockscreen_hide_ampm"

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
