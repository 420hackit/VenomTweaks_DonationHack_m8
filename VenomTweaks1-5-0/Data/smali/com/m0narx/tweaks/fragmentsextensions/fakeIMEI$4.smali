.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;
.super Ljava/lang/Object;
.source "fakeIMEI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->setIMEIDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

.field private final synthetic val$input:Lcom/htc/widget/HtcEditText;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;Lcom/htc/widget/HtcEditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->val$input:Lcom/htc/widget/HtcEditText;

    iput p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->val$position:I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->val$input:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, imei:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    iget v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->val$position:I

    const-string v3, "random"

    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->setIMEI(ILjava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->mAppAdapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    iget v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$4;->val$position:I

    invoke-virtual {v1, v2, v0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->setIMEI(ILjava/lang/String;)V

    goto :goto_0
.end method
