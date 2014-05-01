.class public Lcom/m0narx/tweaks/custompreferences/IconPreference;
.super Lcom/htc/preference/HtcPreference;
.source "IconPreference.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    .line 25
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/IconPreference;->setLayoutResource(I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 31
    const v2, 0x7f060038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 33
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_0
    :goto_0
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, title:Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCStyledTextView(Landroid/widget/TextView;Z)V

    .line 43
    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Misc;->setHTCListBackground(Landroid/view/View;)V

    .line 44
    return-void

    .line 36
    .end local v1           #title:Landroid/widget/TextView;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 48
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/IconPreference;->icon:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/IconPreference;->notifyChanged()V

    .line 52
    :cond_2
    return-void
.end method
