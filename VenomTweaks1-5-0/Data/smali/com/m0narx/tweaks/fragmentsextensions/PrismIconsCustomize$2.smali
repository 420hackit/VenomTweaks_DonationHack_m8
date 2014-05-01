.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    #calls: Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->saveCustomIcons()V
    invoke-static {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->access$5(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;)V

    .line 99
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 100
    iget-object v0, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$2;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;->finish()V

    .line 101
    return-void
.end method
