.class Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;
    invoke-static {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->access$0(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->access$1(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;
    invoke-static {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->access$2(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$1;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    #getter for: Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mHexColor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->access$1(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 98
    return-void
.end method
