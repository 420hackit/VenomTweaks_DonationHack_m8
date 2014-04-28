.class Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;
.super Ljava/lang/Object;
.source "TabPieLevelTwo_settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->setPieItem(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

.field private final synthetic val$index:Ljava/lang/String;

.field private final synthetic val$key:Lcom/htc/widget/HtcEditText;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;Lcom/htc/widget/HtcEditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->val$key:Lcom/htc/widget/HtcEditText;

    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->val$index:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v4, 0x19

    .line 127
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->val$key:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PieItem"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->val$index:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    const-string v3, " Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PieItem"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->val$index:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    const-string v3, " String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    #getter for: Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->SelectedPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->access$0(Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 135
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabPieLevelTwo_settings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 138
    return-void
.end method
