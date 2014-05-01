.class Lcom/m0narx/tweaks/custompreferences/Prefs$2;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$2;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$2;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 284
    return-void
.end method
