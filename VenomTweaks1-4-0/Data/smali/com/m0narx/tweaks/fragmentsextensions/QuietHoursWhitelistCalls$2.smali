.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$2;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method
