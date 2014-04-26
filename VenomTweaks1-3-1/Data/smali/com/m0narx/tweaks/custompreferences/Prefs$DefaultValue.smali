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
.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 598
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 599
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 600
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 601
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 602
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 591
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 592
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 593
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 594
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 595
    return-void

    .line 592
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
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 584
    iput-object p3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    .line 585
    iput-object p4, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    .line 586
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    .line 587
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 588
    return-void
.end method


# virtual methods
.method public getBoolean()Z
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Value:Ljava/lang/String;

    return-object v0
.end method
