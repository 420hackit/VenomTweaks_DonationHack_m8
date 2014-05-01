.class Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$1;
.super Ljava/lang/Object;
.source "QuicksettingsDeleteAndRearrange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsDeleteAndRearrange;->finish()V

    return-void
.end method
