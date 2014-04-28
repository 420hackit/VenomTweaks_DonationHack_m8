.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;
.super Ljava/lang/Object;
.source "fakeIMEI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    const-class v2, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
