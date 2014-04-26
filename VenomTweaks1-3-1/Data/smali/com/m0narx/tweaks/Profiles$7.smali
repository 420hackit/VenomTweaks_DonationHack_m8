.class Lcom/m0narx/tweaks/Profiles$7;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles;->SaveProfile(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;

.field private final synthetic val$index:I

.field private final synthetic val$input:Lcom/htc/widget/HtcEditText;

.field private final synthetic val$isNew:Z


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles;Lcom/htc/widget/HtcEditText;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$7;->this$0:Lcom/m0narx/tweaks/Profiles;

    iput-object p2, p0, Lcom/m0narx/tweaks/Profiles$7;->val$input:Lcom/htc/widget/HtcEditText;

    iput-boolean p3, p0, Lcom/m0narx/tweaks/Profiles$7;->val$isNew:Z

    iput p4, p0, Lcom/m0narx/tweaks/Profiles$7;->val$index:I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$7;->val$input:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-boolean v0, p0, Lcom/m0narx/tweaks/Profiles$7;->val$isNew:Z

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$7;->this$0:Lcom/m0narx/tweaks/Profiles;

    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$7;->val$input:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/m0narx/tweaks/Profiles;->NewProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/Profiles;->access$7(Lcom/m0narx/tweaks/Profiles;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$7;->this$0:Lcom/m0narx/tweaks/Profiles;

    iget v1, p0, Lcom/m0narx/tweaks/Profiles$7;->val$index:I

    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles$7;->val$input:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/m0narx/tweaks/Profiles;->RenameProfile(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/m0narx/tweaks/Profiles;->access$8(Lcom/m0narx/tweaks/Profiles;ILjava/lang/String;)V

    goto :goto_0
.end method
