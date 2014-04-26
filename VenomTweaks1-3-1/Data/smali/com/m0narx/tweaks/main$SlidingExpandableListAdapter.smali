.class public Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingExpandableListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private groupChilds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/main;Landroid/app/Activity;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p3, listDataHeader:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, listChildData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/main;

    .line 748
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 751
    iput-object p2, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;

    .line 752
    iput-object p3, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupHeaders:Ljava/util/List;

    .line 753
    iput-object p4, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupChilds:Ljava/util/HashMap;

    .line 754
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;

    .line 755
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 754
    iput-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 756
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;)Lcom/m0narx/tweaks/main;
    .locals 1
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/main;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupChilds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 765
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 773
    .local v1, tab:Ljava/lang/String;
    move v0, p1

    .line 775
    .local v0, position:I
    const/4 v2, 0x0

    .line 776
    .local v2, text:Landroid/widget/TextView;
    if-nez p4, :cond_0

    .line 777
    iget-object v3, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 778
    const v4, 0x7f03001f

    const/4 v5, 0x0

    .line 777
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 780
    :cond_0
    const v3, 0x7f050051

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #text:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 781
    .restart local v2       #text:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    new-instance v3, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter$1;-><init>(Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;ILjava/lang/String;I)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupChilds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->groupHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 845
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    .local v0, headerTitle:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 855
    iget-object v2, p0, Lcom/m0narx/tweaks/main$SlidingExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001e

    .line 856
    const/4 v4, 0x0

    .line 855
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 859
    :cond_0
    const v2, 0x7f050050

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 858
    check-cast v1, Landroid/widget/TextView;

    .line 861
    .local v1, lblListHeader:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 835
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 836
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 840
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 841
    return-void
.end method
