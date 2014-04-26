.class public Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;
.super Ljava/lang/Object;
.source "QuietHoursWhitelistCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactItem"
.end annotation


# instance fields
.field public Image:Landroid/graphics/drawable/Drawable;

.field public Name:Ljava/lang/String;

.field public PhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "number"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->PhoneNumber:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->Name:Ljava/lang/String;

    .line 270
    iput-object p4, p0, Lcom/m0narx/tweaks/fragmentsextensions/QuietHoursWhitelistCalls$ContactItem;->Image:Landroid/graphics/drawable/Drawable;

    .line 271
    return-void
.end method
