.class Lcom/m0narx/tweaks/widgets/Customization$9;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Customization;->addInputBox(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->val$tweak:Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->val$restart:Ljava/lang/String;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "arg0"
    .parameter "val"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    #getter for: Lcom/m0narx/tweaks/widgets/Customization;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Customization;->access$0(Lcom/m0narx/tweaks/widgets/Customization;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->val$tweak:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 607
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization$9;->val$restart:Ljava/lang/String;

    #calls: Lcom/m0narx/tweaks/widgets/Customization;->setReboot(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Customization;->access$1(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x1

    return v0
.end method
