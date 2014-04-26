.class Lcom/m0narx/tweaks/main$11$1;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/main$11;

.field private final synthetic val$sensitivy:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main$11;Lcom/htc/widget/HtcSeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$11$1;->this$1:Lcom/m0narx/tweaks/main$11;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$11$1;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "checked"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/m0narx/tweaks/main$11$1;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 972
    return-void
.end method
