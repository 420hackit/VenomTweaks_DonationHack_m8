.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$3;
.super Ljava/lang/Object;
.source "fakeIMEI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "paramView"
    .parameter "position"
    .parameter "paramLong"
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
    .line 116
    .local p1, paramHtcAdapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$3;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->setIMEIDialog(I)V
    invoke-static {v0, p3}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;I)V

    .line 117
    return-void
.end method
