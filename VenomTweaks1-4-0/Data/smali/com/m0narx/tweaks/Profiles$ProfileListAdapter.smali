.class Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Profiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/Profiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/Profiles;)V
    .locals 1
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->this$0:Lcom/m0narx/tweaks/Profiles;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    .line 427
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/Profiles;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 428
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "tag"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->notifyDataSetChanged()V

    .line 450
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 468
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, holder:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    if-nez p2, :cond_0

    .line 475
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 476
    new-instance v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/Profiles$ViewHolder;-><init>()V

    .line 477
    .restart local v0       #holder:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    const v1, 0x7f060011

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v1, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 478
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 483
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 485
    return-object p2

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/Profiles$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/Profiles$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method

.method public renameItem(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "NewName"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Profiles$ProfileListAdapter;->notifyDataSetChanged()V

    .line 444
    return-void
.end method
