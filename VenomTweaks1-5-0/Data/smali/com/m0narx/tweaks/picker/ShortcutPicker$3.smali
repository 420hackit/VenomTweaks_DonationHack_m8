.class Lcom/m0narx/tweaks/picker/ShortcutPicker$3;
.super Ljava/lang/Object;
.source "ShortcutPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/picker/ShortcutPicker;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$3;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    .line 82
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
    .line 87
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$3;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    #getter for: Lcom/m0narx/tweaks/picker/ShortcutPicker;->mShortcuts:Ljava/util/List;
    invoke-static {v3}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->access$2(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .local v0, localActivityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, localComponentName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v2, localIntent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v3, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$3;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method
