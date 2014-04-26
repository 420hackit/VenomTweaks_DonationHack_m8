.class Lcom/m0narx/tweaks/main$11;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setSlidingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;

.field private final synthetic val$menuSettingsContex:Landroid/content/Context;

.field private final synthetic val$sPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$11;->this$0:Lcom/m0narx/tweaks/main;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$11;->val$sPref:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/m0narx/tweaks/main$11;->val$menuSettingsContex:Landroid/content/Context;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    .line 954
    iget-object v4, p0, Lcom/m0narx/tweaks/main$11;->this$0:Lcom/m0narx/tweaks/main;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/main;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030020

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 955
    .local v3, view:Landroid/view/View;
    const v4, 0x7f050052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 957
    .local v0, cBox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/m0narx/tweaks/main$11;->val$sPref:Landroid/content/SharedPreferences;

    const-string v5, "enable"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 959
    const v4, 0x7f050053

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSeekBar;

    .line 961
    .local v2, sensitivy:Lcom/htc/widget/HtcSeekBar;
    const/16 v4, 0x12c

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 962
    iget-object v4, p0, Lcom/m0narx/tweaks/main$11;->val$sPref:Landroid/content/SharedPreferences;

    const-string v5, "sensitiy"

    const/16 v6, 0x17

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x19

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 964
    new-instance v4, Lcom/m0narx/tweaks/main$11$1;

    invoke-direct {v4, p0, v2}, Lcom/m0narx/tweaks/main$11$1;-><init>(Lcom/m0narx/tweaks/main$11;Lcom/htc/widget/HtcSeekBar;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 975
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/m0narx/tweaks/main$11;->val$menuSettingsContex:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    const v5, 0x7f0a035e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 977
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 978
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 979
    const v5, 0x7f0a0056

    new-instance v6, Lcom/m0narx/tweaks/main$11$2;

    iget-object v7, p0, Lcom/m0narx/tweaks/main$11;->val$sPref:Landroid/content/SharedPreferences;

    invoke-direct {v6, p0, v2, v7, v0}, Lcom/m0narx/tweaks/main$11$2;-><init>(Lcom/m0narx/tweaks/main$11;Lcom/htc/widget/HtcSeekBar;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 993
    const v5, 0x7f0a001d

    new-instance v6, Lcom/m0narx/tweaks/main$11$3;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/main$11$3;-><init>(Lcom/m0narx/tweaks/main$11;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 1000
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1002
    .local v1, menuSettings:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1004
    return-void
.end method
