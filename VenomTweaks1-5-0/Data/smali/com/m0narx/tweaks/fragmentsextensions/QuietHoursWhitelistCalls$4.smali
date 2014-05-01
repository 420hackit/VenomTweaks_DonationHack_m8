.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;
.super Ljava/lang/Object;
.source "QuietHoursWhitelistCalls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->saveSettingsSystem()V
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;)V

    .line 152
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->finish()V

    .line 153
    return-void
.end method
