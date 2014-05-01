.class Lcom/m0narx/tweaks/picker/ShortcutPicker$1;
.super Landroid/os/Handler;
.source "ShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/picker/ShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/ShortcutPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    #getter for: Lcom/m0narx/tweaks/picker/ShortcutPicker;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->access$0(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/ShortcutPicker;->mAdapter:Lcom/m0narx/tweaks/picker/ShortcutPicker$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ShortcutPicker$1;->this$0:Lcom/m0narx/tweaks/picker/ShortcutPicker;

    #getter for: Lcom/m0narx/tweaks/picker/ShortcutPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/ShortcutPicker;->access$1(Lcom/m0narx/tweaks/picker/ShortcutPicker;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 142
    return-void
.end method
