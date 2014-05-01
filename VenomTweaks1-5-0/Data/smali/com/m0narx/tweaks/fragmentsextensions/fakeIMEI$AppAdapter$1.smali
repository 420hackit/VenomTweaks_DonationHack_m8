.class Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;
.super Ljava/lang/Object;
.source "fakeIMEI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;->val$position:I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->removeItem(I)V

    .line 222
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/fakeIMEI$AppAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method
