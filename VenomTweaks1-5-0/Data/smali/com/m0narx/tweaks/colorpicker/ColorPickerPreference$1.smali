.class Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

.field private final synthetic val$colorChanged:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    iput-object p2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->val$colorChanged:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 121
    new-instance v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 122
    .local v0, picker:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->val$colorChanged:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 124
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->access$0(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->show()V

    .line 129
    return-void
.end method
