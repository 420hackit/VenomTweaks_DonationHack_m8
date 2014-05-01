.class Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;
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

.field private final synthetic val$citys:[[Ljava/lang/String;

.field private final synthetic val$tweakName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/dialogs/WeatherSelector;[[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    iput-object p2, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$citys:[[Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$tweakName:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v0, "m0narX_tweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$citys:[[Ljava/lang/String;

    aget-object v2, v2, v3

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    #getter for: Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->access$0(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$tweakName:Ljava/lang/String;

    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$citys:[[Ljava/lang/String;

    aget-object v2, v2, v3

    aget-object v2, v2, p2

    .line 143
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    #getter for: Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mCallback:Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->access$1(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    #getter for: Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mCallback:Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;
    invoke-static {v0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->access$1(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$tweakName:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;->val$citys:[[Ljava/lang/String;

    aget-object v2, v2, v3

    aget-object v2, v2, p2

    .line 146
    invoke-interface {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;->selectionChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 150
    return-void
.end method
