.class Lcom/m0narx/tweaks/BugreportService$1;
.super Landroid/os/FileObserver;
.source "BugreportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/BugreportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/BugreportService;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/BugreportService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/BugreportService$1;->this$0:Lcom/m0narx/tweaks/BugreportService;

    .line 66
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "path"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService$1;->this$0:Lcom/m0narx/tweaks/BugreportService;

    #getter for: Lcom/m0narx/tweaks/BugreportService;->SCREENSHOT_DIR:Ljava/io/File;
    invoke-static {v1}, Lcom/m0narx/tweaks/BugreportService;->access$0(Lcom/m0narx/tweaks/BugreportService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v0, changedFile:Ljava/io/File;
    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService$1;->this$0:Lcom/m0narx/tweaks/BugreportService;

    #getter for: Lcom/m0narx/tweaks/BugreportService;->screenshots:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/m0narx/tweaks/BugreportService;->access$1(Lcom/m0narx/tweaks/BugreportService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/m0narx/tweaks/BugreportService$1;->this$0:Lcom/m0narx/tweaks/BugreportService;

    #calls: Lcom/m0narx/tweaks/BugreportService;->removeScreenShotNotif()V
    invoke-static {v1}, Lcom/m0narx/tweaks/BugreportService;->access$2(Lcom/m0narx/tweaks/BugreportService;)V

    goto :goto_0
.end method
