.class Lcom/m0narx/tweaks/Profiles$4$1;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/Profiles$4;

.field private final synthetic val$ListItem:Lcom/m0narx/tweaks/Profiles$ViewHolder;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles$4;Lcom/m0narx/tweaks/Profiles$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$4$1;->this$1:Lcom/m0narx/tweaks/Profiles$4;

    iput-object p2, p0, Lcom/m0narx/tweaks/Profiles$4$1;->val$ListItem:Lcom/m0narx/tweaks/Profiles$ViewHolder;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$4$1;->this$1:Lcom/m0narx/tweaks/Profiles$4;

    #getter for: Lcom/m0narx/tweaks/Profiles$4;->this$0:Lcom/m0narx/tweaks/Profiles;
    invoke-static {v0}, Lcom/m0narx/tweaks/Profiles$4;->access$0(Lcom/m0narx/tweaks/Profiles$4;)Lcom/m0narx/tweaks/Profiles;

    move-result-object v1

    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$4$1;->val$ListItem:Lcom/m0narx/tweaks/Profiles$ViewHolder;

    iget-object v0, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    #calls: Lcom/m0narx/tweaks/Profiles;->restoreProfile(Ljava/lang/Integer;)V
    invoke-static {v1, v0}, Lcom/m0narx/tweaks/Profiles;->access$6(Lcom/m0narx/tweaks/Profiles;Ljava/lang/Integer;)V

    .line 151
    return-void
.end method
