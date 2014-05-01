.class public Lcom/m0narx/tweaks/widgets/Customization$NewTab;
.super Ljava/lang/Object;
.source "Customization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/Customization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewTab"
.end annotation


# instance fields
.field public HasTheming:Z

.field public Name:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/Customization;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/widgets/Customization;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/Customization$NewTab;->HasTheming:Z

    return-void
.end method
