.class public Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TabAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragments/TabAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private children_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private children_img:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groups_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groups_img:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabAbout;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragments/TabAbout;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, groups2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, groups_comment2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, groups_img2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p7, childs_comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p8, childs_img:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    .line 320
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 327
    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    .line 328
    iput-object p4, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    .line 329
    iput-object p5, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups_img:Ljava/util/ArrayList;

    .line 330
    iput-object p6, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    .line 331
    iput-object p7, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

    .line 332
    iput-object p8, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children_img:Ljava/util/ArrayList;

    .line 333
    return-void
.end method

.method public constructor <init>(Lcom/m0narx/tweaks/fragments/TabAbout;Lcom/m0narx/tweaks/fragments/TabAbout;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context2"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/m0narx/tweaks/fragments/TabAbout;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, groups2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, groups_comment2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, groups_img2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .local p7, childs_comment:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p8, childs_img:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/fragments/TabAbout;

    .line 335
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 342
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 364
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 436
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 435
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 437
    .local v0, child:I
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getChild_comment(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 438
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 437
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 439
    .local v1, child_comment:I
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getChild_img(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 440
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 439
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 442
    .local v2, child_img:I
    if-nez p4, :cond_0

    .line 443
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 444
    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 443
    check-cast v5, Landroid/view/LayoutInflater;

    .line 445
    .local v5, infalInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    .line 446
    const/4 v7, 0x0

    .line 445
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 449
    .end local v5           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f060011

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 448
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 451
    .local v3, childtxt:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f060012

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 450
    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 453
    .local v4, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 454
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 455
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 456
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 457
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 459
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 460
    return-object p4
.end method

.method public getChild_comment(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChild_img(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 397
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 403
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, group:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getGroup_Comment(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, group_comment:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->getGroup_img(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 407
    .local v3, group_img:I
    if-nez p3, :cond_0

    .line 408
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 409
    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 408
    check-cast v6, Landroid/view/LayoutInflater;

    .line 410
    .local v6, infalInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    .line 411
    const/4 v8, 0x0

    .line 410
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .end local v6           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v0, p3

    .line 413
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 415
    .local v0, Item:Lcom/htc/widget/HtcListItem;
    const v7, 0x7f060011

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 414
    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 417
    .local v5, grouptxt:Lcom/htc/widget/HtcListItem2LineText;
    const v7, 0x7f060012

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 416
    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 418
    .local v4, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 419
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 422
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 423
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 424
    if-eqz v3, :cond_1

    .line 425
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 426
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 428
    :cond_1
    return-object v0
.end method

.method public getGroup_Comment(I)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_img(I)Ljava/lang/Integer;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;->groups_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method
