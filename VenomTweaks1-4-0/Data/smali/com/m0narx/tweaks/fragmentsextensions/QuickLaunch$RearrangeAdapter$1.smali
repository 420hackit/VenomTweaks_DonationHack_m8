.class Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;
.super Ljava/lang/Object;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;->val$position:I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    move-result-object v0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->removeItem(I)V

    .line 243
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;)Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    move-result-object v0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    .line 244
    return-void
.end method
