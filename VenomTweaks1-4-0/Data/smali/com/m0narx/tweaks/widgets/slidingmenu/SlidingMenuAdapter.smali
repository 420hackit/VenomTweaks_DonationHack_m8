.class public Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SlidingMenuAdapter.java"


# static fields
.field private static final TYPES_COUNT:I = 0x2

.field private static final TYPE_DIVIDER:I = 0x1

.field private static final TYPE_ITEM:I


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method

.method private getItemType(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 140
    iget-object v0, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemView(Landroid/view/View;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;Z)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "item"
    .parameter "isDivider"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f060044

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 148
    if-eqz p3, :cond_1

    .line 149
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001e

    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    if-eqz p3, :cond_2

    .line 156
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 157
    .local v0, divider:Lcom/htc/widget/HtcListItemSeparator;
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 198
    .end local v0           #divider:Lcom/htc/widget/HtcListItemSeparator;
    :goto_1
    return-object p1

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030021

    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_2
    const v5, 0x7f060038

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 160
    .local v2, icon:Landroid/widget/ImageView;
    const v5, 0x7f060048

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    .local v1, groupicon:Landroid/widget/ImageView;
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 162
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f060047

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcToggleButtonLight;

    .line 164
    .local v4, toggle:Lcom/htc/widget/HtcToggleButtonLight;
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v6, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    iget-boolean v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->expanded:Z

    if-eqz v5, :cond_3

    const v5, 0x7f020006

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_3
    iget v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->iconres:I

    if-lez v5, :cond_5

    .line 173
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->iconres:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_4
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 181
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 182
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 184
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 189
    :goto_5
    iget-object v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v6, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->CheckableItem:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 190
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    .line 191
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setFocusable(Z)V

    .line 192
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 193
    iget-boolean v5, p2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->checked:Z

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto/16 :goto_1

    .line 167
    :cond_3
    const v5, 0x7f020007

    goto :goto_2

    .line 169
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 186
    :cond_6
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_5

    .line 195
    :cond_7
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 2
    .parameter "groupposition"
    .parameter "childposition"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 41
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->get(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupposition"
    .parameter "childposition"

    .prologue
    .line 69
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .parameter "groupposition"
    .parameter "childposition"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getItemType(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)I

    move-result v0

    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupposition"
    .parameter "childposition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChildType(II)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 135
    .local v1, isDivider:Z
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 136
    .local v0, child:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-direct {p0, p4, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getItemView(Landroid/view/View;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 134
    .end local v0           #child:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .end local v1           #isDivider:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupposition"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 75
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->size()I

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 3
    .parameter "groupposition"

    .prologue
    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 92
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    iget-boolean v2, v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    if-eqz v2, :cond_1

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    if-ne v0, p1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    goto :goto_1

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 102
    return v0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    iget-boolean v2, v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    if-eqz v2, :cond_1

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupposition"

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .parameter "groupposition"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getItemType(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)I

    move-result v0

    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupposition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroupType(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 128
    .local v1, isDivider:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getGroup(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 129
    .local v0, group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    invoke-direct {p0, p3, v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getItemView(Landroid/view/View;Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 127
    .end local v0           #group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .end local v1           #isDivider:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 2
    .parameter "groupposition"
    .parameter "childposition"

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->getChild(II)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    move-result-object v0

    iget-object v0, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Divider:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method
