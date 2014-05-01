.class Lcom/m0narx/tweaks/fragments/TabMisc$5;
.super Ljava/lang/Object;
.source "TabMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabMisc;->makeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabMisc;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabMisc$5;->this$0:Lcom/m0narx/tweaks/fragments/TabMisc;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 217
    const-wide/high16 v2, 0x4000

    .line 218
    add-int/lit8 v4, p2, 0x1

    int-to-double v4, v4

    .line 217
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    .line 219
    .local v1, flag:I
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMisc$5;->this$0:Lcom/m0narx/tweaks/fragments/TabMisc;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 220
    const-string v3, "tweaks_allowed_rotations"

    .line 221
    const/16 v4, 0xb

    .line 219
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, currentflags:I
    if-eqz p3, :cond_0

    .line 223
    or-int/2addr v0, v1

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMisc$5;->this$0:Lcom/m0narx/tweaks/fragments/TabMisc;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/TabMisc;->Cr:Landroid/content/ContentResolver;

    .line 228
    const-string v3, "tweaks_allowed_rotations"

    .line 227
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    return-void

    .line 225
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_0
.end method
