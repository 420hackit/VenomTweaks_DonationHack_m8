.class public Lcom/m0narx/tweaks/widgets/themeHelper;
.super Ljava/lang/Object;
.source "themeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/themeHelper$element;,
        Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private systemuiPackage:Ljava/lang/String;

.field private themePkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "Cont"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    .line 17
    const-string v0, "venom.systemui.theme."

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public getCurrentDrawable(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "themeName"
    .parameter "elem"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, res:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/m0narx/tweaks/widgets/themeHelper$element;->getExternalRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v1, ""

    if-ne p1, v1, :cond_2

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/m0narx/tweaks/widgets/themeHelper$element;->getInternalRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    :cond_2
    return-object v0
.end method

.method public getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "packageName"
    .parameter "resName"

    .prologue
    .line 140
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    .local v0, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 143
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 144
    const-string v3, "drawable"

    invoke-virtual {v1, p2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, resId:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    .end local v2           #resId:I
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v3

    .line 149
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getThemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "themeName"

    .prologue
    .line 113
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    .local v0, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 116
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const-string v3, ""

    if-eq p1, v3, :cond_0

    .line 118
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    const-string v3, "theme_name"

    const-string v4, "string"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, resId:I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    .end local v2           #resId:I
    :goto_0
    return-object v3

    .line 121
    :catch_0
    move-exception v3

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    const v3, 0x7f0a00d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getThemes(Lcom/m0narx/tweaks/widgets/themeHelper$element;)Ljava/util/ArrayList;
    .locals 11
    .parameter "Filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/m0narx/tweaks/widgets/themeHelper$element;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 64
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 65
    .local v5, res:Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v7, themes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;>;"
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;-><init>(Lcom/m0narx/tweaks/widgets/themeHelper;)V

    .line 69
    .local v0, defTheme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    if-eqz p1, :cond_0

    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne p1, v8, :cond_1

    .line 70
    :cond_0
    const v8, 0x7f020026

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    :goto_0
    const-string v8, ""

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    .line 75
    const-string v8, ""

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    .line 76
    const v8, 0x7f0a00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 101
    return-object v7

    .line 72
    .end local v1           #i:I
    :cond_1
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m0narx/tweaks/widgets/themeHelper$element;->getInternalRes()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 80
    .restart local v1       #i:I
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 81
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "venom.systemui.theme."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 83
    :try_start_0
    new-instance v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;-><init>(Lcom/m0narx/tweaks/widgets/themeHelper;)V

    .line 84
    .local v6, theme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    .line 85
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    .line 86
    if-eqz p1, :cond_3

    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne p1, v8, :cond_6

    .line 87
    :cond_3
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_4
    :goto_2
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 95
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "venom.systemui.theme."

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v6           #theme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .restart local v6       #theme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    :cond_6
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m0narx/tweaks/widgets/themeHelper$element;->getExternalRes()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 90
    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->WIFI:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-eq p1, v8, :cond_7

    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->SIGNAL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne p1, v8, :cond_8

    :cond_7
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 91
    :cond_8
    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->BATTERY:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne p1, v8, :cond_9

    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 92
    :cond_9
    sget-object v8, Lcom/m0narx/tweaks/widgets/themeHelper$element;->DATA:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-ne p1, v8, :cond_4

    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 98
    .end local v6           #theme:Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method public isThemeContainResource(Ljava/lang/String;Lcom/m0narx/tweaks/widgets/themeHelper$element;)Z
    .locals 3
    .parameter "theme"
    .parameter "Filter"

    .prologue
    const/4 v0, 0x1

    .line 57
    sget-object v1, Lcom/m0narx/tweaks/widgets/themeHelper$element;->ALL:Lcom/m0narx/tweaks/widgets/themeHelper$element;

    if-eq p2, v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "venom.systemui.theme."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/m0narx/tweaks/widgets/themeHelper$element;->getExternalRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method
