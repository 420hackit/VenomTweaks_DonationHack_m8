.class Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;
.super Ljava/lang/Object;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/custompreferences/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prefsCategory"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field prefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;->this$0:Lcom/m0narx/tweaks/custompreferences/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;->prefs:Ljava/util/ArrayList;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;->key:Ljava/lang/String;

    .line 171
    if-eqz p2, :cond_0

    .line 172
    iput-object p2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;->key:Ljava/lang/String;

    .line 174
    :cond_0
    return-void
.end method
