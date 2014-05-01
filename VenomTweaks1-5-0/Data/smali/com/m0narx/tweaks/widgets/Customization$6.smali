.class Lcom/m0narx/tweaks/widgets/Customization$6;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Customization;->addRevertableSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->val$tweak:Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->val$restart:Ljava/lang/String;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "val"

    .prologue
    .line 544
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 545
    .local v0, newvalue:I
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    #getter for: Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Customization;->access$0(Lcom/m0narx/tweaks/widgets/Customization;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->val$tweak:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/Customization$6;->val$restart:Ljava/lang/String;

    #calls: Lcom/m0narx/tweaks/widgets/Customization;->setReboot(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/m0narx/tweaks/widgets/Customization;->access$1(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x1

    return v1
.end method
