.class Lcom/m0narx/tweaks/dialogs/WeatherSelector$1;
.super Ljava/lang/Object;
.source "WeatherSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/dialogs/WeatherSelector;->showSelector(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$1;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v1, "com.htc.Weather"

    const-string v2, "com.htc.Weather.AddCity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$1;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    #getter for: Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->access$0(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
