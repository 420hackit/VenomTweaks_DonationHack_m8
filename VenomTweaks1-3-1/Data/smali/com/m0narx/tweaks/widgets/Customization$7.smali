.class Lcom/m0narx/tweaks/widgets/Customization$7;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/Customization;->addCPUSeekbar(Lcom/htc/preference/HtcPreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/Customization;

.field private final synthetic val$summary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/Customization;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/Customization$7;->this$0:Lcom/m0narx/tweaks/widgets/Customization;

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/Customization$7;->val$summary:Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/htc/preference/HtcPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/Customization$7;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    return-void
.end method
