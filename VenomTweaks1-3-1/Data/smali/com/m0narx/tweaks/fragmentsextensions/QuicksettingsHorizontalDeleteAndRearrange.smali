.class public Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;
.super Landroid/app/Activity;
.source "QuicksettingsHorizontalDeleteAndRearrange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;,
        Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$ViewHolder;
    }
.end annotation


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field EqsMode:I

.field private QSList:Lcom/htc/widget/HtcReorderListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field TweakName:Ljava/lang/String;

.field TweakNameFull:Ljava/lang/String;

.field inflater:Landroid/view/LayoutInflater;

.field protected mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "tweaks_hquicksettings"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakName:Ljava/lang/String;

    .line 44
    const-string v0, "tweaks_hquicksettings_full"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakNameFull:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)Lcom/htc/widget/HtcReorderListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    .line 51
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->inflater:Landroid/view/LayoutInflater;

    .line 52
    const v14, 0x7f0a004d

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 53
    const v14, 0x7f03000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->setContentView(I)V

    .line 55
    const v14, 0x7f05000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v15, 0x7f0a0056

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 57
    new-instance v14, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    .line 59
    const v14, 0x7f05000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v15, 0x7f0a001d

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v15, 0x20800a3

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v15, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v15, 0x20800a7

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v15, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$2;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v6, Lvenom/common/settings;

    invoke-direct {v6}, Lvenom/common/settings;-><init>()V

    .line 108
    .local v6, conf:Lvenom/common/settings;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06008b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, names:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06008c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, qs_id:[Ljava/lang/String;
    iget-boolean v14, v6, Lvenom/common/settings;->HAS_NFC:Z

    if-nez v14, :cond_0

    .line 111
    const/4 v5, -0x1

    .line 112
    .local v5, NFC:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v14, v12

    if-lt v7, v14, :cond_5

    .line 118
    const/4 v14, -0x1

    if-eq v5, v14, :cond_0

    .line 119
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 120
    .local v13, qs_id_nonfc:[Ljava/lang/String;
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v11, v14, [Ljava/lang/String;

    .line 121
    .local v11, names_nonfc:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 122
    .local v8, j:I
    const/4 v7, 0x0

    :goto_1
    array-length v14, v12

    if-lt v7, v14, :cond_7

    .line 129
    move-object v10, v11

    .line 130
    move-object v12, v13

    .line 133
    .end local v5           #NFC:I
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v11           #names_nonfc:[Ljava/lang/String;
    .end local v13           #qs_id_nonfc:[Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 134
    .local v1, ActiveIds:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakName:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v3, ""

    .line 136
    .local v3, AllIds:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakNameFull:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_1

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 140
    :cond_1
    const/4 v14, 0x0

    aget-object v3, v12, v14

    .line 141
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_2
    array-length v14, v12

    if-lt v7, v14, :cond_9

    .line 144
    move-object v1, v3

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakNameFull:Ljava/lang/String;

    invoke-static {v14, v15, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->TweakName:Ljava/lang/String;

    invoke-static {v14, v15, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    .end local v7           #i:I
    :cond_2
    if-eqz v1, :cond_3

    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object v1, v3

    .line 153
    :cond_4
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_3
    array-length v14, v12

    if-lt v7, v14, :cond_a

    .line 158
    const-string v14, "REAR"

    const-string v15, "CHECKED!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, ArrAllIds:[Ljava/lang/String;
    const-string v2, ""

    .line 162
    .local v2, Added:Ljava/lang/String;
    const/4 v7, 0x0

    :goto_4
    array-length v14, v4

    if-lt v7, v14, :cond_c

    .line 185
    const v14, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    const v15, 0x7f05000f

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setVisibility(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v15, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$3;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v15, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$4;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    invoke-virtual {v14}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->notifyDataSetChanged()V

    .line 218
    return-void

    .line 113
    .end local v1           #ActiveIds:Ljava/lang/String;
    .end local v2           #Added:Ljava/lang/String;
    .end local v3           #AllIds:Ljava/lang/String;
    .end local v4           #ArrAllIds:[Ljava/lang/String;
    .restart local v5       #NFC:I
    :cond_5
    aget-object v14, v12, v7

    const-string v15, "NFC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 114
    move v5, v7

    .line 112
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 123
    .restart local v8       #j:I
    .restart local v11       #names_nonfc:[Ljava/lang/String;
    .restart local v13       #qs_id_nonfc:[Ljava/lang/String;
    :cond_7
    if-eq v7, v5, :cond_8

    .line 124
    aget-object v14, v12, v7

    aput-object v14, v13, v8

    .line 125
    aget-object v14, v10, v7

    aput-object v14, v11, v8

    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 122
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 142
    .end local v5           #NFC:I
    .end local v8           #j:I
    .end local v11           #names_nonfc:[Ljava/lang/String;
    .end local v13           #qs_id_nonfc:[Ljava/lang/String;
    .restart local v1       #ActiveIds:Ljava/lang/String;
    .restart local v3       #AllIds:Ljava/lang/String;
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 154
    :cond_a
    aget-object v14, v12, v7

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_b

    .line 155
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 164
    .restart local v2       #Added:Ljava/lang/String;
    .restart local v4       #ArrAllIds:[Ljava/lang/String;
    :cond_c
    aget-object v14, v4, v7

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_d

    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    const/4 v9, -0x1

    .line 167
    .local v9, nameindex:I
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_5
    array-length v14, v12

    if-lt v8, v14, :cond_e

    .line 174
    :goto_6
    const/4 v14, -0x1

    if-eq v9, v14, :cond_d

    .line 175
    aget-object v14, v4, v7

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_10

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    aget-object v15, v4, v7

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aget-object v17, v10, v9

    invoke-virtual/range {v14 .. v17}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 162
    .end local v8           #j:I
    .end local v9           #nameindex:I
    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 168
    .restart local v8       #j:I
    .restart local v9       #nameindex:I
    :cond_e
    aget-object v14, v12, v8

    aget-object v15, v4, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 169
    move v9, v8

    .line 170
    goto :goto_6

    .line 167
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 178
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange;->mRearrangeAdapter:Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;

    aget-object v15, v4, v7

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aget-object v17, v10, v9

    invoke-virtual/range {v14 .. v17}, Lcom/m0narx/tweaks/fragmentsextensions/QuicksettingsHorizontalDeleteAndRearrange$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_7
.end method
