.class Lcom/m0narx/tweaks/widgets/Misc$1;
.super Ljava/lang/Object;
.source "Misc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mContext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Misc$1;->val$mContext:Landroid/app/Activity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Misc$1;->val$mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 224
    return-void
.end method
