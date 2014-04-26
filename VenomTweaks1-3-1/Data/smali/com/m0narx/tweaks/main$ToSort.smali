.class public Lcom/m0narx/tweaks/main$ToSort;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToSort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/m0narx/tweaks/main$ToSort;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private order:I

.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/main;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "order"
    .parameter "name"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/m0narx/tweaks/main$ToSort;->this$0:Lcom/m0narx/tweaks/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p2, p0, Lcom/m0narx/tweaks/main$ToSort;->order:I

    .line 1131
    iput-object p3, p0, Lcom/m0narx/tweaks/main$ToSort;->name:Ljava/lang/String;

    .line 1132
    return-void
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/main$ToSort;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/m0narx/tweaks/main$ToSort;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/m0narx/tweaks/main$ToSort;)I
    .locals 2
    .parameter "f"

    .prologue
    .line 1136
    iget v0, p0, Lcom/m0narx/tweaks/main$ToSort;->order:I

    iget v1, p1, Lcom/m0narx/tweaks/main$ToSort;->order:I

    if-le v0, v1, :cond_0

    .line 1137
    const/4 v0, 0x1

    .line 1141
    :goto_0
    return v0

    .line 1138
    :cond_0
    iget v0, p0, Lcom/m0narx/tweaks/main$ToSort;->order:I

    iget v1, p1, Lcom/m0narx/tweaks/main$ToSort;->order:I

    if-ge v0, v1, :cond_1

    .line 1139
    const/4 v0, -0x1

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/m0narx/tweaks/main$ToSort;

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/main$ToSort;->compareTo(Lcom/m0narx/tweaks/main$ToSort;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/m0narx/tweaks/main$ToSort;->name:Ljava/lang/String;

    return-object v0
.end method
