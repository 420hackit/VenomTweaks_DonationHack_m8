.class Lcom/m0narx/tweaks/Bugreport$2$2;
.super Ljava/lang/Object;
.source "Bugreport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Bugreport$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/Bugreport$2;

.field private final synthetic val$filter:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Bugreport$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Bugreport$2$2;->this$1:Lcom/m0narx/tweaks/Bugreport$2;

    iput p2, p0, Lcom/m0narx/tweaks/Bugreport$2$2;->val$filter:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport$2$2;->this$1:Lcom/m0narx/tweaks/Bugreport$2;

    #getter for: Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;
    invoke-static {v2}, Lcom/m0narx/tweaks/Bugreport$2;->access$0(Lcom/m0narx/tweaks/Bugreport$2;)Lcom/m0narx/tweaks/Bugreport;

    move-result-object v2

    #getter for: Lcom/m0narx/tweaks/Bugreport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/m0narx/tweaks/Bugreport;->access$3(Lcom/m0narx/tweaks/Bugreport;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, duration:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screenrecord --bit-rate 4000000 --time-limit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /sdcard/Venom/BugReports/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Screenrecord.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/framework/ShellInterface;->runBgSU(Ljava/lang/String;)Ljava/lang/Process;

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport$2$2;->this$1:Lcom/m0narx/tweaks/Bugreport$2;

    #getter for: Lcom/m0narx/tweaks/Bugreport$2;->this$0:Lcom/m0narx/tweaks/Bugreport;
    invoke-static {v2}, Lcom/m0narx/tweaks/Bugreport$2;->access$0(Lcom/m0narx/tweaks/Bugreport$2;)Lcom/m0narx/tweaks/Bugreport;

    move-result-object v2

    iget v3, p0, Lcom/m0narx/tweaks/Bugreport$2$2;->val$filter:I

    #calls: Lcom/m0narx/tweaks/Bugreport;->startRecording(II)V
    invoke-static {v2, v3, v0}, Lcom/m0narx/tweaks/Bugreport;->access$4(Lcom/m0narx/tweaks/Bugreport;II)V

    .line 124
    return-void
.end method
