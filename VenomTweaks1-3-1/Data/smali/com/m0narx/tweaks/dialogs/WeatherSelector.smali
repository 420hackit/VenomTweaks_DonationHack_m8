.class public Lcom/m0narx/tweaks/dialogs/WeatherSelector;
.super Ljava/lang/Object;
.source "WeatherSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mCallback:Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mCallback:Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;

    return-object v0
.end method


# virtual methods
.method public getWeatherCityList()[[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 35
    iget-object v9, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 37
    .local v7, res:Landroid/content/res/Resources;
    const-string v9, "m0narX_tweaks"

    const-string v10, "getWeatherCityList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-array v0, v11, [Ljava/lang/String;

    const-string v9, "com.htc.htclocationservice"

    aput-object v9, v0, v12

    const-string v9, "com.htc.elroy.Weather"

    aput-object v9, v0, v13

    .line 42
    .local v0, apps:[Ljava/lang/String;
    iget-object v9, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 41
    invoke-static {v9, v0}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    .line 44
    .local v5, locations:[Lcom/htc/util/weather/WeatherLocation;
    array-length v9, v5

    add-int/lit8 v9, v9, 0x1

    filled-new-array {v11, v9}, [I

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .line 45
    .local v8, result:[[Ljava/lang/String;
    aget-object v9, v8, v12

    const-string v10, ""

    aput-object v10, v9, v12

    .line 46
    aget-object v9, v8, v13

    const v10, 0x7f0a01ba

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 48
    if-eqz v5, :cond_0

    array-length v9, v5

    if-nez v9, :cond_2

    .line 49
    :cond_0
    const-string v9, "m0narX_tweaks"

    const-string v10, "weather_locs is zero"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v8, 0x0

    .line 78
    .end local v8           #result:[[Ljava/lang/String;
    :cond_1
    return-object v8

    .line 53
    .restart local v8       #result:[[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->hasCurrentLocation()Z

    .line 54
    const v9, 0x7f0a01bb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, currentStr:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v5

    if-ge v3, v9, :cond_1

    .line 56
    aget-object v4, v5, v3

    .line 58
    .local v4, location:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, code:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 61
    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    if-eqz v6, :cond_3

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 63
    :cond_3
    move-object v6, v2

    .line 64
    const-string v1, "Current"

    .line 70
    :cond_4
    :goto_1
    const-string v9, "m0narX_tweaks"

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Add "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 73
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 74
    aget-object v9, v8, v12

    add-int/lit8 v10, v3, 0x1

    aput-object v1, v9, v10

    .line 75
    aget-object v9, v8, v13

    add-int/lit8 v10, v3, 0x1

    aput-object v6, v9, v10

    .line 55
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    const-string v1, "Current"

    goto :goto_1
.end method

.method public hasCurrentLocation()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSelector(Ljava/lang/String;Z)V
    .locals 8
    .parameter "tweakName"
    .parameter "DefaultIsCurrent"

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->getWeatherCityList()[[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, citys:[[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gtz v5, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 87
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, alertDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f0a03a8

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 92
    const v5, 0x7f0a03a9

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 94
    const v6, 0x7f0a0056

    .line 95
    new-instance v7, Lcom/m0narx/tweaks/dialogs/WeatherSelector$1;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector$1;-><init>(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)V

    .line 94
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 105
    const v6, 0x7f0a001d

    .line 106
    new-instance v7, Lcom/m0narx/tweaks/dialogs/WeatherSelector$2;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/dialogs/WeatherSelector$2;-><init>(Lcom/m0narx/tweaks/dialogs/WeatherSelector;)V

    .line 105
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 152
    .end local v0           #alertDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, selected:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 122
    if-nez p2, :cond_3

    .line 123
    const-string v4, ""

    .line 128
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 129
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    aget-object v5, v1, v6

    array-length v5, v5

    if-lt v2, v5, :cond_4

    .line 135
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const v6, 0x7f0a01b8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 137
    const/4 v6, 0x1

    aget-object v6, v1, v6

    .line 138
    new-instance v7, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;

    invoke-direct {v7, p0, v1, p1}, Lcom/m0narx/tweaks/dialogs/WeatherSelector$3;-><init>(Lcom/m0narx/tweaks/dialogs/WeatherSelector;[[Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v6, v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 125
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_3
    const-string v4, "Current"

    goto :goto_1

    .line 130
    .restart local v2       #i:I
    .restart local v3       #index:I
    :cond_4
    aget-object v5, v1, v6

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    move v3, v2

    .line 129
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
