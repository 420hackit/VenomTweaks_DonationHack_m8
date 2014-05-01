.class public Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;
.super Ljava/lang/Object;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValue"
.end annotation


# instance fields
.field public Name:Ljava/lang/String;

.field public Tweak:Ljava/lang/String;

.field public Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;F)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 620
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 621
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 622
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 623
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 624
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 614
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 615
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 616
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 617
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 618
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 607
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 608
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 611
    return-void

    .line 608
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 600
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 601
    iput-object p4, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 602
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 604
    return-void
.end method


# virtual methods
.method public getBoolean()Z
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    return-object v0
.end method
