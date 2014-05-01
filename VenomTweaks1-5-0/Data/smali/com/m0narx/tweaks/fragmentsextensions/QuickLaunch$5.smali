.class Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$5;
.super Ljava/lang/Object;
.source "QuickLaunch.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$5;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "fromPos"
    .parameter "toPos"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$5;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;

    .line 154
    .local v0, Adapter:Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;
    if-eq p1, p2, :cond_0

    .line 155
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, pkg:Ljava/lang/String;
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, activity:Ljava/lang/String;
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, Name:Ljava/lang/String;
    iget-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 161
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->removeItem(I)V

    move v1, p2

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->insertItem(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    .line 165
    .end local v2           #pkg:Ljava/lang/String;
    .end local v3           #activity:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #Name:Ljava/lang/String;
    :cond_0
    return-void
.end method
