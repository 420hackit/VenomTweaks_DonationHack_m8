.class Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$2;->this$0:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "fromPos"
    .parameter "toPos"
    .parameter "dest"
    .parameter "destStart"
    .parameter "destEnd"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x7

    const/4 v1, 0x0

    .line 105
    if-gt p6, v2, :cond_0

    if-le p5, v2, :cond_2

    :cond_0
    const-string p1, ""

    .line 132
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 106
    .restart local p1
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    if-gt p6, v4, :cond_3

    if-le p5, v4, :cond_4

    :cond_3
    const-string p1, ""

    goto :goto_0

    .line 109
    :cond_4
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 111
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object p1, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_6

    .line 114
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x62

    if-eq v2, v3, :cond_6

    .line 115
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_6

    .line 116
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_6

    .line 117
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_6

    .line 118
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_7

    :cond_6
    move-object p1, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_8

    .line 121
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_8

    .line 122
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x43

    if-eq v2, v3, :cond_8

    .line 123
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_8

    .line 124
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_8

    .line 125
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_9

    :cond_8
    move-object p1, v1

    .line 126
    goto/16 :goto_0

    .line 127
    :cond_9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_a

    if-nez p5, :cond_a

    move-object p1, v1

    .line 128
    goto/16 :goto_0

    .line 109
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method
