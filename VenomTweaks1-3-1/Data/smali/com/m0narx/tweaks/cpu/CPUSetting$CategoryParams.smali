.class public Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
.super Ljava/lang/Object;
.source "CPUSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/cpu/CPUSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CategoryParams"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/cpu/CPUSetting;

.field public title:I


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "title"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->this$0:Lcom/m0narx/tweaks/cpu/CPUSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->id:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->title:I

    .line 29
    iput-object p2, p0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->id:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->title:I

    .line 31
    return-void
.end method
