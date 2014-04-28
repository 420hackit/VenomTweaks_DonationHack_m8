.class Lcom/m0narx/tweaks/dialogs/WeatherSelector$2;
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
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector$2;->this$0:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 111
    return-void
.end method
