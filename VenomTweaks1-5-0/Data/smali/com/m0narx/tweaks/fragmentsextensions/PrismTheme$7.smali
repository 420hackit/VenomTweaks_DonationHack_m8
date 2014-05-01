.class Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;
.super Ljava/lang/Object;
.source "PrismTheme.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme$7;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismTheme;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    const/4 v2, 0x1

    return v2
.end method
