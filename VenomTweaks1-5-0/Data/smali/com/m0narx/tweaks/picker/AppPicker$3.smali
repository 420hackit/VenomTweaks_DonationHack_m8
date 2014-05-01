.class Lcom/m0narx/tweaks/picker/AppPicker$3;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/picker/AppPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/AppPicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/AppPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, -0x1

    .line 71
    const-string v3, "m0narX_tweaks"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Selected app: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/AppPicker;->mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, data:Landroid/content/Intent;
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/AppPicker;->mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, Package:[Ljava/lang/String;
    const-string v2, "package"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "activity"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/picker/AppPicker;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-virtual {v2, v5, v1}, Lcom/m0narx/tweaks/picker/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/picker/AppPicker;->finish()V

    .line 82
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/AppPicker$3;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/picker/AppPicker;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
