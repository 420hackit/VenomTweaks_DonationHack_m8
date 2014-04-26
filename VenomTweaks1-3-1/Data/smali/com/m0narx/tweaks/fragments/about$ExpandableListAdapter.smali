.class public Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "about.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragments/about;
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

.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/about;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragments/about;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
    .line 334
    .local p3, groups2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, groups_comment2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, groups_img2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p7, childs_comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p8, childs_img:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/fragments/about;

    .line 329
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 336
    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    .line 337
    iput-object p4, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    .line 338
    iput-object p5, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups_img:Ljava/util/ArrayList;

    .line 339
    iput-object p6, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    .line 340
    iput-object p7, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

    .line 341
    iput-object p8, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children_img:Ljava/util/ArrayList;

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/m0narx/tweaks/fragments/about;Lcom/m0narx/tweaks/fragments/about;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
            "Lcom/m0narx/tweaks/fragments/about;",
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
    .line 349
    .local p3, groups2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, groups_comment2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, groups_img2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .local p7, childs_comment:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p8, childs_img:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/fragments/about;

    .line 344
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 351
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

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
    .line 359
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

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
    .line 373
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

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 445
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 444
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 446
    .local v0, child:I
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getChild_comment(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 447
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 446
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 448
    .local v1, child_comment:I
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getChild_img(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 449
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 448
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 451
    .local v2, child_img:I
    if-nez p4, :cond_0

    .line 452
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 453
    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 452
    check-cast v5, Landroid/view/LayoutInflater;

    .line 454
    .local v5, infalInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    .line 455
    const/4 v7, 0x0

    .line 454
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 458
    .end local v5           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f050012

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 457
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 460
    .local v3, childtxt:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f050013

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 459
    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 462
    .local v4, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 463
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 464
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 465
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 466
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 468
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 469
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
    .line 364
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

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
    .line 369
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children_img:Ljava/util/ArrayList;

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
    .line 386
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 406
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

    .line 412
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, group:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getGroup_Comment(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, group_comment:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->getGroup_img(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 416
    .local v3, group_img:I
    if-nez p3, :cond_0

    .line 417
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 418
    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 417
    check-cast v6, Landroid/view/LayoutInflater;

    .line 419
    .local v6, infalInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    .line 420
    const/4 v8, 0x0

    .line 419
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .end local v6           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v0, p3

    .line 422
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 424
    .local v0, Item:Lcom/htc/widget/HtcListItem;
    const v7, 0x7f050012

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 423
    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 426
    .local v5, grouptxt:Lcom/htc/widget/HtcListItem2LineText;
    const v7, 0x7f050013

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 425
    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 427
    .local v4, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 428
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 431
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 432
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 433
    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 435
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 437
    :cond_1
    return-object v0
.end method

.method public getGroup_Comment(I)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_img(I)Ljava/lang/Integer;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;->groups_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method
