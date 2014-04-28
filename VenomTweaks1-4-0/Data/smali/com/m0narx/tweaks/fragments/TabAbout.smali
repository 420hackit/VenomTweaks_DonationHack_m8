.class public Lcom/m0narx/tweaks/fragments/TabAbout;
.super Landroid/app/Fragment;
.source "TabAbout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final EASTER_EGG_COUNT:I = 0x1e

.field private static final EASTER_EGG_DURATION:J = 0x4e20L

.field public static final LINK_THREAD:Ljava/lang/String; = "http://forum.xda-developers.com/showthread.php?t="

.field public static THREAD_ID:Ljava/lang/String;


# instance fields
.field private ITEM_BUGREPORT:I

.field private ITEM_DONATEAPP:I

.field private ITEM_PROFILES:I

.field public final LINK_DONATE:Ljava/lang/String;

.field public final LINK_MEMBER:Ljava/lang/String;

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

.field private mAdapter:Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;

.field private mEasterEggClickCount:I

.field private mEasterEggStart:J

.field private mListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const-string v0, "http://forum.xda-developers.com/member.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->LINK_MEMBER:Ljava/lang/String;

    .line 51
    const-string v0, "http://forum.xda-developers.com/donatetome.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->LINK_DONATE:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggClickCount:I

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggStart:J

    .line 48
    return-void
.end method

.method private CheckButtonState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 271
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 274
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 276
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 279
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 280
    :cond_2
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    .line 282
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 283
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 284
    :cond_3
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 286
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 287
    :cond_4
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 289
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private SetupHeader()V
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/m0narx/tweaks/main;

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/main;

    .line 298
    .local v0, mainActivity:Lcom/m0narx/tweaks/main;
    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 299
    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 300
    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    sget-object v1, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v2, Lcom/m0narx/tweaks/fragments/TabAbout$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabAbout$4;-><init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->CheckButtonState()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/TabAbout;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggClickCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragments/TabAbout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggClickCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/fragments/TabAbout;)J
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggStart:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/fragments/TabAbout;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mEasterEggStart:J

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/fragments/TabAbout;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->devs_ids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/fragments/TabAbout;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_PROFILES:I

    return v0
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/fragments/TabAbout;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_BUGREPORT:I

    return v0
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/fragments/TabAbout;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_DONATEAPP:I

    return v0
.end method


# virtual methods
.method public addChild(IIII)V
    .locals 2
    .parameter "GroupID"
    .parameter "TitleResID"
    .parameter "CommentResID"
    .parameter "imgId"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_comment:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_img:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

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

    .line 262
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

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

    .line 267
    return-void
.end method

.method public addGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "Title"
    .parameter "Comment"
    .parameter "imgID"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_img:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 186
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->SetupHeader()V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_img:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_comment:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_comment:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_img:Ljava/util/ArrayList;

    .line 197
    const/4 v11, 0x0

    .line 198
    .local v11, developers:I
    const-string v16, ""

    .line 199
    .local v16, romname:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, devices:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v1, v12

    if-lt v14, v1, :cond_1

    .line 209
    if-nez v11, :cond_0

    .line 210
    const v11, 0x7f050001

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, devs:[Ljava/lang/String;
    array-length v1, v13

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->devs_ids:[Ljava/lang/String;

    .line 215
    array-length v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_PROFILES:I

    .line 216
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_PROFILES:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_BUGREPORT:I

    .line 217
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_BUGREPORT:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_DONATEAPP:I

    .line 219
    const/4 v14, 0x0

    :goto_1
    array-length v1, v13

    if-lt v14, v1, :cond_3

    .line 225
    const v1, 0x7f0a0089

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/TabAbout;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    const v2, 0x7f0a008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    const v3, 0x7f02001d

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAbout;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    const v1, 0x7f0a01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/TabAbout;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    const v2, 0x7f0a01c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/m0narx/tweaks/fragments/TabAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    const v3, 0x7f02001c

    .line 228
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAbout;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->ITEM_PROFILES:I

    if-lt v14, v1, :cond_4

    .line 238
    new-instance v1, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups:Ljava/util/ArrayList;

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_comment:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->groups_img:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_comment:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->childs_img:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;-><init>(Lcom/m0narx/tweaks/fragments/TabAbout;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 238
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->mAdapter:Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;

    .line 240
    return-void

    .line 201
    .end local v13           #devs:[Ljava/lang/String;
    :cond_1
    aget-object v1, v12, v14

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 202
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

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "array"

    .line 204
    const-string v4, "com.m0narx.tweaks"

    .line 203
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 205
    const/4 v1, 0x2

    aget-object v1, v15, v1

    sput-object v1, Lcom/m0narx/tweaks/fragments/TabAbout;->THREAD_ID:Ljava/lang/String;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Viper"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 200
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 220
    .end local v15           #info:[Ljava/lang/String;
    .restart local v13       #devs:[Ljava/lang/String;
    :cond_3
    aget-object v1, v13, v14

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, dev:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v10, v1

    const/4 v2, 0x2

    aget-object v2, v10, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAbout;->addGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/fragments/TabAbout;->devs_ids:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v10, v2

    aput-object v2, v1, v14

    .line 219
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 232
    .end local v10           #dev:[Ljava/lang/String;
    :cond_4
    const v1, 0x7f0a000f

    const v2, 0x7f0a0010

    .line 233
    const v3, 0x7f020012

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAbout;->addChild(IIII)V

    .line 234
    const v1, 0x7f0a0011

    const v2, 0x7f0a0012

    .line 235
    const v3, 0x7f020039

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabAbout;->addChild(IIII)V

    .line 231
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

    .line 79
    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, view:Landroid/view/View;
    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, banner:Landroid/view/View;
    new-instance v2, Lcom/m0narx/tweaks/fragments/TabAbout$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/TabAbout$1;-><init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListView;

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    .line 140
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcExpandableListView;->setTextFilterEnabled(Z)V

    .line 141
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    .line 143
    new-instance v3, Lcom/m0narx/tweaks/fragments/TabAbout$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabAbout$2;-><init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v3, Lcom/m0narx/tweaks/fragments/TabAbout$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/TabAbout$3;-><init>(Lcom/m0narx/tweaks/fragments/TabAbout;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mListView:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabAbout;->mAdapter:Lcom/m0narx/tweaks/fragments/TabAbout$ExpandableListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 181
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 244
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabAbout;->SetupHeader()V

    .line 245
    return-void
.end method
