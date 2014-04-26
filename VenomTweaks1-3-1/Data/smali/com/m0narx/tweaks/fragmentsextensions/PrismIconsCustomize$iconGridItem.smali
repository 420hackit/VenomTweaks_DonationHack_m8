.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iconGridItem"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "icon"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->name:Ljava/lang/String;

    .line 421
    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$iconGridItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 422
    return-void
.end method
