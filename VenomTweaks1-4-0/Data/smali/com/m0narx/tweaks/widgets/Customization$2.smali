.class Lcom/m0narx/tweaks/widgets/Customization$2;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Customization;->addCheckBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/Customization;

.field private final synthetic val$restart:Ljava/lang/String;

.field private final synthetic val$tweak:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->val$tweak:Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->val$restart:Ljava/lang/String;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg0"
    .parameter "val"

    .prologue
    const/4 v1, 0x1

    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 473
    .local v0, newvalue:I
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    #getter for: Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Customization;->access$0(Lcom/m0narx/tweaks/widgets/Customization;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->val$tweak:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/Customization$2;->val$restart:Ljava/lang/String;

    #calls: Lcom/m0narx/tweaks/widgets/Customization;->setReboot(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/m0narx/tweaks/widgets/Customization;->access$1(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 475
    return v1

    .line 472
    .end local v0           #newvalue:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
