.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

.field private final synthetic val$chooser:Lcom/htc/widget/HtcAlertDialog;

.field private final synthetic val$icons:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;

.field private final synthetic val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

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
    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

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

.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;Lcom/htc/widget/HtcAlertDialog;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$chooser:Lcom/htc/widget/HtcAlertDialog;

    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iput-object p4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$icons:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "iconPos"
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
    .line 200
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$chooser:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 201
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->customIcons:Ljava/util/Properties;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$8(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->getResName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$icons:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;

    invoke-virtual {v2, p3}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridAdapter;->getItem(I)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;

    move-result-object v2

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v0

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->saveCustomIcons()V
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    .line 204
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    .line 228
    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->equals(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v0

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAdapter:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppListAdapter;->notifyDataSetChanged()V

    .line 232
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->getResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultAllAppsIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->getResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultWorkspaceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 221
    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->mAppIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$4(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->getResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v0, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->val$item:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4$1;->this$1:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$4;)Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->getDefaultUnlockIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
