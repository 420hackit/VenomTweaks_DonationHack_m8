.class Lcom/m0narx/tweaks/fragments/systemui$1;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/systemui;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/systemui$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    packed-switch p2, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    .line 95
    const/4 v3, 0x1

    .line 94
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    .line 99
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    .line 98
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, animbg:Landroid/content/Intent;
    const-string v1, "tweak"

    .line 101
    const-string v2, "tweaks_statusbar_customanim"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "toggle"

    .line 103
    const-string v2, "tweaks_statusbar_customimage"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui$1;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragments/systemui;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
