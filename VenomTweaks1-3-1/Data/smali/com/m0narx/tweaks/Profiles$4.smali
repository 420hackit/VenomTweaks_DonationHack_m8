.class Lcom/m0narx/tweaks/Profiles$4;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$4;->this$0:Lcom/m0narx/tweaks/Profiles;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Profiles$4;)Lcom/m0narx/tweaks/Profiles;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$4;->this$0:Lcom/m0narx/tweaks/Profiles;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;

    .line 144
    .local v0, ListItem:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/Profiles$4;->this$0:Lcom/m0narx/tweaks/Profiles;

    #getter for: Lcom/m0narx/tweaks/Profiles;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/m0narx/tweaks/Profiles;->access$5(Lcom/m0narx/tweaks/Profiles;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const v2, 0x7f0a03d9

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 146
    const v2, 0x7f0a03da

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 147
    const v2, 0x7f0a0056

    .line 148
    new-instance v3, Lcom/m0narx/tweaks/Profiles$4$1;

    invoke-direct {v3, p0, v0}, Lcom/m0narx/tweaks/Profiles$4$1;-><init>(Lcom/m0narx/tweaks/Profiles$4;Lcom/m0narx/tweaks/Profiles$ViewHolder;)V

    .line 147
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 153
    const v2, 0x7f0a001d

    .line 154
    new-instance v3, Lcom/m0narx/tweaks/Profiles$4$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/Profiles$4$2;-><init>(Lcom/m0narx/tweaks/Profiles$4;)V

    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 162
    return-void
.end method
