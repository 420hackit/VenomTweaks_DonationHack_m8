.class Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;
.super Ljava/lang/Object;
.source "Navbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/Navbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavbarItem"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field public resId:I

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/Navbar;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "icon"
    .parameter "resId"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/Navbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->name:Ljava/lang/String;

    .line 305
    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 306
    iput p4, p0, Lcom/m0narx/tweaks/fragmentsextensions/Navbar$NavbarItem;->resId:I

    .line 307
    return-void
.end method
