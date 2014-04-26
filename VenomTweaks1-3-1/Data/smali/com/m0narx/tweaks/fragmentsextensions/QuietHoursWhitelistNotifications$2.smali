.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications$2;
.super Ljava/lang/Object;
.source "QuietHoursWhitelistNotifications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistNotifications;->finish()V

    return-void
.end method
