.class Lcom/m0narx/tweaks/fragments/TabMisc$3;
.super Ljava/lang/Object;
.source "TabMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabMisc;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabMisc$3;->this$0:Lcom/m0narx/tweaks/fragments/TabMisc;

    .line 169
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
    .line 172
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 174
    .local v1, TweakName:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 190
    :goto_1
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMisc$3;->this$0:Lcom/m0narx/tweaks/fragments/TabMisc;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    return-void

    .line 172
    .end local v0           #BVar:Ljava/lang/Integer;
    .end local v1           #TweakName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    .restart local v0       #BVar:Ljava/lang/Integer;
    .restart local v1       #TweakName:Ljava/lang/String;
    :pswitch_0
    const-string v1, "tweaks_apm_hotreboot"

    .line 178
    goto :goto_1

    .line 180
    :pswitch_1
    const-string v1, "tweaks_apm_safemode"

    .line 181
    goto :goto_1

    .line 183
    :pswitch_2
    const-string v1, "tweaks_apm_recovery"

    .line 184
    goto :goto_1

    .line 186
    :pswitch_3
    const-string v1, "tweaks_apm_bootloader"

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
