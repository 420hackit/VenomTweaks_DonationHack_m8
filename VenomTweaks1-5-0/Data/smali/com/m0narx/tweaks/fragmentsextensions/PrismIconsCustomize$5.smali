.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->LoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

.field private final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;->val$pm:Landroid/content/pm/PackageManager;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 339
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, firstName:Ljava/lang/String;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, secondName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$5;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
