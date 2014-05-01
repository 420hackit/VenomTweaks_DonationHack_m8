.class public Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ColorPickerPreference.java"

# interfaces
.implements Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field colorResetView:Landroid/widget/LinearLayout;

.field infalInflater:Landroid/view/LayoutInflater;

.field private mAlphaSliderEnabled:Z

.field mDefaultValue:I

.field private mDensity:F

.field private mValue:I

.field mView:Landroid/view/View;

.field private revertValue:I

.field widgetFrameView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/high16 v0, -0x100

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 28
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v0, -0x100

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 28
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v0, -0x100

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 28
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)I
    .locals 1
    .parameter

    .prologue
    .line 315
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->revertValue:I

    return v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    return-void
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    return v0
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x1

    .line 260
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, alpha:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, red:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, green:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, blue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 11
    .parameter "argb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x10

    .line 293
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    const-string v4, "#"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 297
    :cond_0
    const/4 v0, -0x1

    .local v0, alpha:I
    const/4 v3, -0x1

    .local v3, red:I
    const/4 v2, -0x1

    .local v2, green:I
    const/4 v1, -0x1

    .line 299
    .local v1, blue:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 300
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 301
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 302
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 303
    const/16 v4, 0x8

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 312
    :cond_1
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 305
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 306
    const/16 v0, 0xff

    .line 307
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 308
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 309
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 187
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f8

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 188
    .local v3, d:I
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getValue()I

    move-result v2

    .line 189
    .local v2, color:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 191
    .local v7, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 192
    .local v4, h:I
    move v1, v2

    .line 193
    .local v1, c:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v7, :cond_0

    .line 203
    return-object v0

    .line 194
    :cond_0
    move v6, v5

    .local v6, j:I
    :goto_1
    if-lt v6, v4, :cond_1

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 195
    :cond_1
    if-le v5, v10, :cond_2

    if-le v6, v10, :cond_2

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_2

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_4

    :cond_2
    const v1, -0x777778

    .line 196
    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 197
    if-eq v5, v6, :cond_3

    .line 198
    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 194
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 195
    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 61
    .line 62
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 61
    iput-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->infalInflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    .line 67
    if-eqz p2, :cond_1

    .line 68
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "defaultValue"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, defaultValue:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :try_start_0
    invoke-static {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const-string v4, "alphaSlider"

    invoke-interface {p2, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 84
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 85
    return-void

    .line 72
    .restart local v0       #defaultValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "ColorPickerPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrong color: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, "#FF000000"

    invoke-static {v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "defaultValue"

    invoke-interface {p2, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 78
    .local v2, resourceId:I
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0
.end method

.method private setAdditionalViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 138
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    .line 144
    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    .line 145
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 146
    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 147
    iget-object v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    .line 143
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 151
    .local v1, count:I
    if-lez v1, :cond_2

    .line 153
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->colorResetView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 155
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->infalInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030008

    .line 160
    const/4 v5, 0x0

    .line 159
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->colorResetView:Landroid/widget/LinearLayout;

    .line 162
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->colorResetView:Landroid/widget/LinearLayout;

    const v4, 0x7f06002b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 164
    .local v2, iView:Landroid/widget/ImageView;
    new-instance v3, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    const/high16 v4, 0x40a0

    iget v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->colorResetView:Landroid/widget/LinearLayout;

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    .local v0, btn:Landroid/widget/Button;
    new-instance v3, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;-><init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->colorResetView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/ClassCastException;
    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 109
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    .line 114
    move-object v0, p0

    .line 116
    .local v0, colorChanged:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    new-instance v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;-><init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAdditionalViews()V

    .line 135
    return-void
.end method

.method public onColorChanged(IZ)V
    .locals 3
    .parameter "color"
    .parameter "force"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->persistInt(I)Z

    .line 223
    :cond_0
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 224
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAdditionalViews()V

    .line 225
    if-nez p2, :cond_1

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getValue()I

    move-result v0

    .end local p2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->onColorChanged(IZ)V

    .line 57
    return-void

    .line 56
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 252
    return-void
.end method

.method public setCurrentColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 88
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    .line 89
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 90
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->onColorChanged(IZ)V

    .line 91
    return-void
.end method

.method public setCurrentColor(Ljava/lang/String;)V
    .locals 5
    .parameter "color"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, value:I
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setCurrentColor(I)V

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "ColorPickerPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v2, "#FF000000"

    invoke-static {v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public setRevertToValue(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .parameter "defaultValue"
    .parameter "name"

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->revertValue:I

    .line 321
    return-void
.end method
