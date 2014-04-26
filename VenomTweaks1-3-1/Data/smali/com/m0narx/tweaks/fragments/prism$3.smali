.class Lcom/m0narx/tweaks/fragments/prism$3;
.super Ljava/lang/Object;
.source "prism.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/prism;->makeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/prism;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/prism;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/prism$3;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism$3;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 172
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/prism$3;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    .line 171
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism$3;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/prism;->mContext:Landroid/content/Context;

    .line 176
    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    .line 175
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, animbg:Landroid/content/Intent;
    const-string v1, "tweak"

    .line 178
    const-string v2, "tweaks_rosie_customanim"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "toggle"

    .line 180
    const-string v2, "tweaks_rosie_customimage"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/prism$3;->this$0:Lcom/m0narx/tweaks/fragments/prism;

    .line 182
    const/4 v2, 0x4

    .line 181
    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragments/prism;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
