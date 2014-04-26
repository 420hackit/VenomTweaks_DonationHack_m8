.class Lcom/m0narx/tweaks/fragments/systemui$4;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/systemui;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/systemui$4;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectionChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tweakName"
    .parameter "newValue"

    .prologue
    .line 671
    return-void
.end method
