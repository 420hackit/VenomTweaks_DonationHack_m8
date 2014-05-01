.class Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;
.super Ljava/lang/Object;
.source "PrismIconsCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppItem"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I


# instance fields
.field public component:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

.field public type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I
    .locals 3

    .prologue
    .line 471
    sget-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->values()[Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->AllApps:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Icon:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Unlock:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->Workspase:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;Ljava/lang/String;Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "type"
    .parameter "component"
    .parameter "icon"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->name:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    .line 480
    iput-object p5, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 481
    iput-object p4, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    .line 482
    return-void
.end method


# virtual methods
.method public getResName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    invoke-static {}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->$SWITCH_TABLE$com$m0narx$tweaks$fragmentsextensions$PrismIconsCustomize$Types()[I

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->type:Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$Types;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 499
    const-string v0, ""

    :goto_0
    return-object v0

    .line 487
    :pswitch_0
    const-string v0, "ic_allapps"

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, resName:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/PrismIconsCustomize$AppItem;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 493
    goto :goto_0

    .line 495
    .end local v0           #resName:Ljava/lang/String;
    :pswitch_2
    const-string v0, "ic_allapps_pressed"

    goto :goto_0

    .line 497
    :pswitch_3
    const-string v0, "unlock"

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
