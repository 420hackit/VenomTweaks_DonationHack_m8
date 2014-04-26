.class Lcom/m0narx/tweaks/main$11$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/main$11;

.field private final synthetic val$cBox:Landroid/widget/CheckBox;

.field private final synthetic val$sPref:Landroid/content/SharedPreferences;

.field private final synthetic val$sensitivy:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main$11;Lcom/htc/widget/HtcSeekBar;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$11$2;->this$1:Lcom/m0narx/tweaks/main$11;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$11$2;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    iput-object p3, p0, Lcom/m0narx/tweaks/main$11$2;->val$sPref:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/m0narx/tweaks/main$11$2;->val$cBox:Landroid/widget/CheckBox;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 984
    iget-object v1, p0, Lcom/m0narx/tweaks/main$11$2;->val$sensitivy:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, 0x19

    .line 986
    .local v0, value:I
    iget-object v1, p0, Lcom/m0narx/tweaks/main$11$2;->val$sPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sensitiy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    iget-object v1, p0, Lcom/m0narx/tweaks/main$11$2;->val$sPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable"

    iget-object v3, p0, Lcom/m0narx/tweaks/main$11$2;->val$cBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 989
    sget-object v1, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v2, p0, Lcom/m0narx/tweaks/main$11$2;->val$cBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 990
    sget-object v1, Lcom/m0narx/tweaks/main;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 992
    return-void
.end method
