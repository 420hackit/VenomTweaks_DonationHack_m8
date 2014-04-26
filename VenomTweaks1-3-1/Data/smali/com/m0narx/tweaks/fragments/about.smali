.class public Lcom/m0narx/tweaks/fragments/about;
.super Landroid/app/Fragment;
.source "about.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final EASTER_EGG_COUNT:I = 0x1e

.field private static final EASTER_EGG_DURATION:J = 0x4e20L


# instance fields
.field private ITEM_BUGREPORT:I

.field private ITEM_DONATEAPP:I

.field private ITEM_PROFILES:I

.field public final LINK_DONATE:Ljava/lang/String;

.field public final LINK_MEMBER:Ljava/lang/String;

.field private final LINK_THREAD:Ljava/lang/String;

.field private THREAD_ID:Ljava/lang/String;

.field private childs:Ljava/util/ArrayList;
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

.field private childs_comment:Ljava/util/ArrayList;
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

.field private childs_img:Ljava/util/ArrayList;
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

.field private devs_ids:[Ljava/lang/String;

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

.field private mAdapter:Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;

.field private mEasterEggClickCount:I

.field private mEasterEggStart:J

.field private mListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const-string v0, "http://forum.xda-developers.com/showthread.php?t="

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->LINK_THREAD:Ljava/lang/String;

    .line 51
    const-string v0, "http://forum.xda-developers.com/member.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->LINK_MEMBER:Ljava/lang/String;

    .line 52
    const-string v0, "http://forum.xda-developers.com/donatetome.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->LINK_DONATE:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J

    .line 49
    return-void
.end method

.method private CheckButtonState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 272
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/about;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 275
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 277
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 280
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 281
    :cond_2
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    .line 283
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 284
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 285
    :cond_3
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 287
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 288
    :cond_4
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 290
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private SetupHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 295
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 296
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 297
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/about;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/fragments/about$4;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragments/about$4;-><init>(Lcom/m0narx/tweaks/fragments/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 308
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 309
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionMenuButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/fragments/about$5;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragments/about$5;-><init>(Lcom/m0narx/tweaks/fragments/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/about;->CheckButtonState()V

    .line 318
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/about;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragments/about;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragments/about;)J
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragments/about;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragments/about;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->devs_ids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragments/about;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/m0narx/tweaks/fragments/about;->ITEM_PROFILES:I

    return v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/fragments/about;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/m0narx/tweaks/fragments/about;->ITEM_BUGREPORT:I

    return v0
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/fragments/about;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/m0narx/tweaks/fragments/about;->ITEM_DONATEAPP:I

    return v0
.end method

.method static synthetic access$8(Lcom/m0narx/tweaks/fragments/about;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->THREAD_ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addChild(IIII)V
    .locals 2
    .parameter "GroupID"
    .parameter "TitleResID"
    .parameter "CommentResID"
    .parameter "imgId"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_comment:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_img:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 265
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public addGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "Title"
    .parameter "Comment"
    .parameter "imgID"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->groups_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/about;->groups_img:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 187
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/about;->SetupHeader()V

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->groups:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->groups_img:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->groups_comment:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->childs_comment:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->childs_img:Ljava/util/ArrayList;

    .line 198
    const/4 v11, 0x0

    .line 199
    .local v11, developers:I
    const-string v16, ""

    .line 200
    .local v16, romname:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/about;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, devices:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v1, v12

    if-lt v14, v1, :cond_1

    .line 210
    if-nez v11, :cond_0

    .line 211
    const v11, 0x7f060001

    .line 213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/about;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, devs:[Ljava/lang/String;
    array-length v1, v13

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->devs_ids:[Ljava/lang/String;

    .line 216
    array-length v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_PROFILES:I

    .line 217
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_PROFILES:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_BUGREPORT:I

    .line 218
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_BUGREPORT:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_DONATEAPP:I

    .line 220
    const/4 v14, 0x0

    :goto_1
    array-length v1, v13

    if-lt v14, v1, :cond_3

    .line 226
    const v1, 0x7f0a0089

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/about;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    const v2, 0x7f0a008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/fragments/about;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    const v3, 0x7f02001e

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/about;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    const v1, 0x7f0a01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/about;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    const v2, 0x7f0a01c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/fragments/about;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    const v3, 0x7f02001d

    .line 229
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/about;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/about;->ITEM_PROFILES:I

    if-lt v14, v1, :cond_4

    .line 239
    new-instance v1, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/m0narx/tweaks/fragments/about;->groups:Ljava/util/ArrayList;

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/fragments/about;->groups_comment:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/m0narx/tweaks/fragments/about;->groups_img:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/m0narx/tweaks/fragments/about;->childs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/m0narx/tweaks/fragments/about;->childs_comment:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/m0narx/tweaks/fragments/about;->childs_img:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;-><init>(Lcom/m0narx/tweaks/fragments/about;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 239
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->mAdapter:Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;

    .line 241
    return-void

    .line 202
    .end local v13           #devs:[Ljava/lang/String;
    :cond_1
    aget-object v1, v12, v14

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, info:[Ljava/lang/String;
    sget-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Viper"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/about;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "array"

    .line 205
    const-string v4, "com.m0narx.tweaks"

    .line 204
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 206
    const/4 v1, 0x2

    aget-object v1, v15, v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->THREAD_ID:Ljava/lang/String;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Viper"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 201
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 221
    .end local v15           #info:[Ljava/lang/String;
    .restart local v13       #devs:[Ljava/lang/String;
    :cond_3
    aget-object v1, v13, v14

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 222
    .local v10, dev:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v10, v1

    const/4 v2, 0x2

    aget-object v2, v10, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/about;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/fragments/about;->devs_ids:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v10, v2

    aput-object v2, v1, v14

    .line 220
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 233
    .end local v10           #dev:[Ljava/lang/String;
    :cond_4
    const v1, 0x7f0a000f

    const v2, 0x7f0a0010

    .line 234
    const v3, 0x7f020010

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/about;->addChild(IIII)V

    .line 235
    const v1, 0x7f0a0011

    const v2, 0x7f0a0012

    .line 236
    const v3, 0x7f020037

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/about;->addChild(IIII)V

    .line 232
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 80
    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, view:Landroid/view/View;
    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, banner:Landroid/view/View;
    new-instance v2, Lcom/m0narx/tweaks/fragments/about$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/about$1;-><init>(Lcom/m0narx/tweaks/fragments/about;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListView;

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    .line 141
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcExpandableListView;->setTextFilterEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    .line 143
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    .line 144
    new-instance v3, Lcom/m0narx/tweaks/fragments/about$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/about$2;-><init>(Lcom/m0narx/tweaks/fragments/about;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v3, Lcom/m0narx/tweaks/fragments/about$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/about$3;-><init>(Lcom/m0narx/tweaks/fragments/about;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about;->mAdapter:Lcom/m0narx/tweaks/fragments/about$ExpandableListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 182
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/about;->SetupHeader()V

    .line 246
    return-void
.end method
