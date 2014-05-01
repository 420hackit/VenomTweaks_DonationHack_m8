.class Lcom/m0narx/tweaks/fragments/TabLockscreen$3;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 170
    .local v1, TweakName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 171
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x64

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 175
    .local v2, value:Ljava/lang/Integer;
    packed-switch p2, :pswitch_data_0

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;

    iget-object v3, v3, Lcom/m0narx/tweaks/fragments/TabLockscreen;->Cr:Landroid/content/ContentResolver;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 183
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabLockscreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabLockscreen;

    #calls: Lcom/m0narx/tweaks/fragments/TabLockscreen;->SetShortPressOnLockscreen()V
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/TabLockscreen;->access$0(Lcom/m0narx/tweaks/fragments/TabLockscreen;)V

    .line 187
    return-void

    .line 177
    :pswitch_0
    const-string v1, "tweaks_shortpress_home_ls"

    .line 178
    goto :goto_0

    .line 180
    :pswitch_1
    const-string v1, "tweaks_shortpress_back_ls"

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
