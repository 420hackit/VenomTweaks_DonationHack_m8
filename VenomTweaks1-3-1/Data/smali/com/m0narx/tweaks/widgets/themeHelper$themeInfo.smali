.class public Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
.super Ljava/lang/Object;
.source "themeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/themeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "themeInfo"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public packageName:Ljava/lang/String;

.field public themeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/themeHelper;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/widgets/themeHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->this$0:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
