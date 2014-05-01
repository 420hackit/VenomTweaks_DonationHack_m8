.class Lcom/m0narx/tweaks/fragments/TabButtons$1;
.super Ljava/lang/Object;
.source "TabButtons.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabButtons;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

.field private final synthetic val$AirplaneModeItems:[Z


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabButtons;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabButtons$1;->this$0:Lcom/m0narx/tweaks/fragments/TabButtons;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/TabButtons$1;->val$AirplaneModeItems:[Z

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/TabButtons$1;->val$AirplaneModeItems:[Z

    aput-boolean p3, v0, p2

    .line 564
    return-void
.end method
