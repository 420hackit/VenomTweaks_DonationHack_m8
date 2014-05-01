.class Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;
.super Ljava/lang/Object;
.source "KeyboardSkin.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "id"
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
    .line 108
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Selected theme: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_ime_skin"

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->currentTheme:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;Ljava/lang/String;)V

    .line 111
    const-string v0, "pkill com.htc.android.htcime;"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/KeyboardSkin$AppListAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
