.class Lcom/m0narx/tweaks/custompreferences/Prefs$1;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;->resetToDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/custompreferences/Prefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$1;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$1;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    #calls: Lcom/m0narx/tweaks/custompreferences/Prefs;->performResetToDefaults()V
    invoke-static {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->access$0(Lcom/m0narx/tweaks/custompreferences/Prefs;)V

    .line 100
    return-void
.end method
