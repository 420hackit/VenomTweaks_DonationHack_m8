.class Lcom/m0narx/tweaks/fragments/TabHomescreen$8;
.super Ljava/lang/Object;
.source "TabHomescreen.java"

# interfaces
.implements Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabHomescreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabHomescreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$8;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectionChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tweakName"
    .parameter "newValue"

    .prologue
    .line 889
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 890
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabHomescreen$8;->this$0:Lcom/m0narx/tweaks/fragments/TabHomescreen;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragments/TabHomescreen;->updateButtons()V

    .line 891
    return-void
.end method
