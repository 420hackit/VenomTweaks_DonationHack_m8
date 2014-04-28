.class Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/picker/ThemePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field public mIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTheme:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/picker/ThemePicker;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/picker/ThemePicker;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    .line 135
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/picker/ThemePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 136
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "title"
    .parameter "packageName"
    .parameter "Theme"
    .parameter "Icon"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x1c

    const/4 v5, 0x4

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, holder:Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    if-nez p2, :cond_8

    .line 165
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 166
    new-instance v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;-><init>()V

    .line 167
    .restart local v0       #holder:Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    const v2, 0x7f060011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 168
    const v2, 0x7f060012

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_0
    iget-object v3, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v3, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 176
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 177
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 180
    :cond_3
    iget-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    .line 182
    :cond_5
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    .line 183
    :cond_6
    iget-object v2, p0, Lcom/m0narx/tweaks/picker/ThemePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/picker/ThemePicker;

    iget-object v2, v2, Lcom/m0narx/tweaks/picker/ThemePicker;->tFilter:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    sget-object v3, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    .line 184
    :cond_7
    return-object p2

    .line 171
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/picker/ThemePicker$ViewHolder;
    goto/16 :goto_0
.end method
