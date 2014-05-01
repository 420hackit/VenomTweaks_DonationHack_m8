.class Lcom/m0narx/tweaks/Profiles$5;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles;->restartPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$5;->this$0:Lcom/m0narx/tweaks/Profiles;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    const-string v0, "setprop ctl.restart zygote"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->cancel(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method
