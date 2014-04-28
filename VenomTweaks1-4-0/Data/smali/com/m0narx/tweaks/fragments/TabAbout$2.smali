.class Lcom/m0narx/tweaks/fragments/TabAbout$2;
.super Ljava/lang/Object;
.source "TabAbout.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabAbout;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabAbout;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout$2;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "GroupPos"
    .parameter "ItemPos"
    .parameter "arg4"

    .prologue
    .line 148
    if-nez p4, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://forum.xda-developers.com/donatetome.php?u="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout$2;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    #getter for: Lcom/m0narx/tweaks/fragments/TabAbout;->devs_ids:[Ljava/lang/String;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->access$4(Lcom/m0narx/tweaks/fragments/TabAbout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, URL:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabAbout$2;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->startActivity(Landroid/content/Intent;)V

    .line 155
    const/4 v1, 0x0

    return v1

    .line 151
    .end local v0           #URL:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://forum.xda-developers.com/member.php?u="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout$2;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    #getter for: Lcom/m0narx/tweaks/fragments/TabAbout;->devs_ids:[Ljava/lang/String;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->access$4(Lcom/m0narx/tweaks/fragments/TabAbout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #URL:Ljava/lang/String;
    goto :goto_0
.end method
