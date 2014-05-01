.class Lcom/m0narx/tweaks/fragments/TabHomescreen$3;
.super Ljava/lang/Object;
.source "TabHomescreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabHomescreen;->makeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 169
    const/4 v3, 0x3

    .line 168
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 172
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabHomescreen;->mContext:Landroid/content/Context;

    .line 173
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    .line 172
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, animbg:Landroid/content/Intent;
    const-string v1, "tweak"

    .line 175
    const-string v2, "tweaks_rosie_customanim"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "toggle"

    .line 177
    const-string v2, "tweaks_rosie_customimage"

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$3;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 179
    const/4 v2, 0x4

    .line 178
    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
