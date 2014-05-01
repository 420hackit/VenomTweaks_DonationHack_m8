.class Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;
.super Ljava/lang/Object;
.source "QuietHoursWhitelistCalls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    iput p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;->val$position:I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    iget v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->removeItem(I)V

    .line 344
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$AppAdapter;->notifyDataSetChanged()V

    .line 345
    return-void
.end method
