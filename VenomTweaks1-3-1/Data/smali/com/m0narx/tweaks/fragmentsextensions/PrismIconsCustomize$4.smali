.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->values()[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "arg1"
    .parameter "appPos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    move-result-object v8

    .line 127
    .local v8, item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$3(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030011

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, dialogM:Landroid/view/View;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    const v10, 0x7f0a0151

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 131
    invoke-virtual {v9, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 133
    .local v2, chooserB:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 136
    .local v1, chooser:Lcom/htc/widget/HtcAlertDialog;
    const v9, 0x7f050037

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcGridView;

    .line 137
    .local v0, IconGrid:Lcom/htc/widget/HtcGridView;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcGridView;->setSmoothScrollbarEnabled(Z)V

    .line 138
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcGridView;->setDrawingCacheEnabled(Z)V

    .line 139
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcGridView;->setSmoothScrollbarEnabled(Z)V

    .line 140
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcGridView;->setScrollingCacheEnabled(Z)V

    .line 141
    new-instance v7, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;

    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;)V

    .line 147
    .local v7, icons:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;
    :try_start_0
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I

    move-result-object v9

    iget-object v10, v8, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v10

    aget v9, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v9, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAllIcons:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$7(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 196
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    new-instance v9, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;

    invoke-direct {v9, p0, v1, v8, v7}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;-><init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;Lcom/htc/widget/HtcAlertDialog;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;)V

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 239
    return-void

    .line 149
    :pswitch_0
    :try_start_1
    const-string v9, ""

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultAllAppsIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v9

    const-string v10, "ic_allapps_pressed"

    invoke-virtual {v9, v10}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 153
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    .line 154
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v9

    const-string v10, "allapp_selected"

    invoke-virtual {v9, v10}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 156
    if-eqz v5, :cond_0

    .line 157
    const-string v9, "allapp_selected"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 160
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v9, "ic_allapps_pressed"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 164
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const-string v9, ""

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$6(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v8, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v9, ""

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultWorkspaceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v9

    const-string v10, "ic_allapps"

    invoke-virtual {v9, v10}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 171
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_3

    .line 172
    iget-object v9, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v9}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v9

    const-string v10, "allapp"

    invoke-virtual {v9, v10}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_0

    .line 175
    const-string v9, "allapp"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 178
    :cond_3
    const-string v9, "ic_allapps"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 182
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :pswitch_3
    const-string v9, ""

    iget-object v10, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultUnlockIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 188
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 190
    .local v6, icon:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 192
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
