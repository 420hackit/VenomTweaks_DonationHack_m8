.class Lcom/m0narx/tweaks/fragments/lockscreen$5;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/lockscreen;->onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

.field private final synthetic val$o:Ljava/lang/Object;

.field private final synthetic val$preference:Lcom/htc/preference/HtcPreference;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/lockscreen;Ljava/lang/Object;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$preference:Lcom/htc/preference/HtcPreference;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 731
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/lockscreen;->mContext:Landroid/content/Context;

    const-class v2, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragments/lockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 747
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/lockscreen;->mContext:Landroid/content/Context;

    const-class v2, Lcom/m0narx/tweaks/picker/ShortcutPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    const/16 v2, 0x6a

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragments/lockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 742
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->this$0:Lcom/m0narx/tweaks/fragments/lockscreen;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_motion_up"

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$o:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 744
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$preference:Lcom/htc/preference/HtcPreference;

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/lockscreen$5;->val$o:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
