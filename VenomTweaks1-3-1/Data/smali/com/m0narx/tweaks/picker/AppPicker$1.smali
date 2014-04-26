.class Lcom/m0narx/tweaks/picker/AppPicker$1;
.super Landroid/os/Handler;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/picker/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/picker/AppPicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/picker/AppPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/AppPicker$1;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/AppPicker$1;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    #getter for: Lcom/m0narx/tweaks/picker/AppPicker;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/AppPicker;->access$0(Lcom/m0narx/tweaks/picker/AppPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/picker/AppPicker$1;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/picker/AppPicker;->mAdapter:Lcom/m0narx/tweaks/picker/AppPicker$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/AppPicker$1;->this$0:Lcom/m0narx/tweaks/picker/AppPicker;

    #getter for: Lcom/m0narx/tweaks/picker/AppPicker;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/picker/AppPicker;->access$1(Lcom/m0narx/tweaks/picker/AppPicker;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 103
    return-void
.end method
