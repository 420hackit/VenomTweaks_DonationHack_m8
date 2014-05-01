.class Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAdditionalViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->revertValue:I
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->access$1(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)I

    move-result v1

    #setter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->access$2(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;I)V

    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->access$3(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)I

    move-result v1

    iput v1, v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 177
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->mValue:I
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->access$3(Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->onColorChanged(IZ)V

    .line 178
    return-void
.end method
