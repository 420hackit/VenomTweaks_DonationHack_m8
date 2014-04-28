.class public Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;
.super Ljava/lang/Object;
.source "Customization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/Customization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreensParams"
.end annotation


# instance fields
.field public add:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/Customization$NewTab;",
            ">;"
        }
    .end annotation
.end field

.field public remove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/Customization;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/widgets/Customization;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->remove:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;->add:Ljava/util/ArrayList;

    return-void
.end method
