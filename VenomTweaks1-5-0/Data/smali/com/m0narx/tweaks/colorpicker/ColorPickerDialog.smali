.class public Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private filterHex:Landroid/text/InputFilter;

.field private hexMon:Landroid/text/TextWatcher;

.field private mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

.field private mHexColor:Landroid/widget/EditText;

.field private mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "initialColor"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;-><init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->hexMon:Landroid/text/TextWatcher;

    .line 102
    new-instance v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$2;-><init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->filterHex:Landroid/text/InputFilter;

    .line 36
    invoke-direct {p0, p2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->init(I)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Lcom/m0narx/tweaks/colorpicker/ColorPickerView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 45
    return-void
.end method

.method private setUp(I)V
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 55
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 57
    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    .line 58
    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    .line 59
    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    .line 60
    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    .line 62
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 63
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 65
    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 62
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 72
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 73
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v2, p1, v6}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 75
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->hexMon:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->filterHex:Landroid/text/InputFilter;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060034

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(IZ)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->dismiss()V

    .line 167
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 144
    return-void
.end method

.method public setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 153
    return-void
.end method
