.class Lcom/m0narx/tweaks/picker/ThemePicker$3;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/picker/ThemePicker;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/ThemePicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, -0x1

    .line 77
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Selected theme: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/ThemePicker;->mAdapter:Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, data:Landroid/content/Intent;
    const-string v2, "theme"

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/ThemePicker;->mAdapter:Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/picker/ThemePicker;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-virtual {v1, v4, v0}, Lcom/m0narx/tweaks/picker/ThemePicker;->setResult(ILandroid/content/Intent;)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/picker/ThemePicker;->finish()V

    .line 86
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$3;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/picker/ThemePicker;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
