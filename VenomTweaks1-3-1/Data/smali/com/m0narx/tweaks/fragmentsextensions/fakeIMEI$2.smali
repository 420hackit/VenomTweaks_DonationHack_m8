.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;
.super Ljava/lang/Object;
.source "fakeIMEI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    .line 90
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Properties;->clear()V

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 97
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Ljava/util/Properties;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tmp.prop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "Venom Tweaks fake IMEI list"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox cp -f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tmp.prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data/system/fakeimei.prop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    const-string v5, "chmod 666 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data/system/fakeimei.prop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->finish()V

    .line 103
    return-void

    .line 92
    :cond_0
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, v0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->mIMEI:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, imei:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->apps:Ljava/util/Properties;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
