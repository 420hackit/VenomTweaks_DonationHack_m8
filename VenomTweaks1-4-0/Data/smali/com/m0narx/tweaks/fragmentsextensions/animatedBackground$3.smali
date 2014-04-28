.class Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;
.super Ljava/lang/Object;
.source "animatedBackground.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    .line 94
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
    .line 97
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Selected theme: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->TweakName:Ljava/lang/String;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->ToggleTweak:Ljava/lang/String;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->currentTheme:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$AppListAdapter;->notifyDataSetChanged()V

    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;

    const/4 v1, -0x1

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->quit(I)V
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;->access$6(Lcom/m0narx/tweaks/fragmentsextensions/animatedBackground;I)V

    .line 104
    return-void
.end method
