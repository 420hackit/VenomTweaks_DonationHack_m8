.class public Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
.super Ljava/lang/Object;
.source "SlidingMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;
    }
.end annotation


# instance fields
.field public checked:Z

.field public expanded:Z

.field public extra:Ljava/lang/String;

.field public iconres:I

.field public final id:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public originalGroupPosition:I

.field public originalPosition:I

.field public summary:Ljava/lang/String;

.field public toggleOnClick:Z

.field public final type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

.field public visiable:Z


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "type"
    .parameter "id"
    .parameter "label"
    .parameter "summary"
    .parameter "iconres"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->iconres:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->checked:Z

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->extra:Ljava/lang/String;

    .line 17
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->toggleOnClick:Z

    .line 18
    iput-boolean v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    .line 25
    iput-boolean v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->expanded:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    .line 30
    iput p2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->id:I

    .line 31
    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->label:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->summary:Ljava/lang/String;

    .line 33
    iput p5, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->iconres:I

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method

.method public get(I)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 3
    .parameter "childposition"

    .prologue
    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 62
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    iget-boolean v2, v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    if-eqz v2, :cond_1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    if-ne v0, p1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getItemByExtra(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    .locals 3
    .parameter "extra"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    .line 75
    .local v0, item:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;
    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->extra:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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
    .line 70
    .local p1, tabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public size()I
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->type:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    sget-object v3, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->Group:Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 48
    :cond_0
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;

    iget-boolean v2, v2, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->visiable:Z

    if-eqz v2, :cond_2

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 44
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
