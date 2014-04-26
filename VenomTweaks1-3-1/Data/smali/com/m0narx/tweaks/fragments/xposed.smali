.class public Lcom/m0narx/tweaks/fragments/xposed;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "xposed.java"


# static fields
.field private static final INSTALL_XPOSED:I = 0x3

.field private static final OPEN_MODULE:I = 0x0

.field private static final UNINSTALL_MODULE:I = 0x1

.field private static final UNINSTALL_XPOSED:I = 0x4


# instance fields
.field private dic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moduleDialog:Lcom/htc/widget/HtcAlertDialog;

.field private pm:Landroid/content/pm/PackageManager;

.field screen:Lcom/htc/preference/HtcPreferenceScreen;

.field private xposedPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 54
    const-string v0, "de.robv.android.xposed.installer"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/fragments/xposed;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/xposed;->moduleDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private getModules(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 8
    .parameter "cat"

    .prologue
    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/m0narx/tweaks/fragments/xposed;->dic:Ljava/util/Map;

    .line 275
    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 279
    .local v0, count:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 298
    return-void

    .line 279
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 281
    .local v3, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 282
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "xposedmodule"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "module_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, key:Ljava/lang/String;
    new-instance v1, Lcom/m0narx/tweaks/custompreferences/IconPreference;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/m0narx/tweaks/custompreferences/IconPreference;-><init>(Landroid/content/Context;)V

    .line 287
    .local v1, iconPref:Lcom/m0narx/tweaks/custompreferences/IconPreference;
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/m0narx/tweaks/custompreferences/IconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/m0narx/tweaks/custompreferences/IconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/IconPreference;->setKey(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 292
    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/xposed;->dic:Ljava/util/Map;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/fragments/xposed;->OnClickListener([Ljava/lang/String;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private refresModules()V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v1, "xposed_modules"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/xposed;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 266
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 268
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/xposed;->getModules(Lcom/htc/preference/HtcPreferenceCategory;)V

    goto :goto_0
.end method

.method private setModules()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, cat:Lcom/htc/preference/HtcPreferenceCategory;
    const v1, 0x7f0a034a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 304
    const-string v1, "xposed_modules"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 307
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/xposed;->getModules(Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 308
    return-void
.end method

.method private setupPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 230
    .local v0, installed:Z
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 231
    new-instance v2, Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, xposedInstaller:Lcom/htc/preference/HtcPreference;
    const-string v3, "xposed_installer"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 234
    if-nez v0, :cond_0

    .line 236
    const v3, 0x7f0a0346

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 237
    const v3, 0x7f0a0347

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 238
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 257
    :goto_0
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "xposed_installer"

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/xposed;->OnClickListener([Ljava/lang/String;)V

    .line 258
    return-void

    .line 243
    :cond_0
    const v3, 0x7f0a034b

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 244
    const v3, 0x7f0a034c

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 245
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 247
    new-instance v1, Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, xposedFramework:Lcom/htc/preference/HtcPreference;
    const-string v3, "xposed_framework"

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 249
    const v3, 0x7f0a0348

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 250
    const v3, 0x7f0a0349

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 252
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 253
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "xposed_framework"

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/xposed;->OnClickListener([Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/xposed;->setModules()V

    goto :goto_0
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f04001d

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-string v0, "xposed"

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    .line 222
    const-string v0, "xposed"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/xposed;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/xposed;->screen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 223
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/xposed;->setupPreferences()V

    .line 224
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/xposed;->getActivity()Landroid/app/Activity;

    .line 206
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/xposed;->updateButtons()V

    .line 216
    return-void

    .line 209
    :pswitch_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/xposed;->setupPreferences()V

    .line 211
    :pswitch_2
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/xposed;->refresModules()V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 25
    .parameter "preference"

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, PKey:Ljava/lang/String;
    const-string v21, "module_"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 86
    move-object/from16 v12, p1

    .line 88
    .local v12, modulePref:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->dic:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->dic:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 92
    .local v15, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 96
    .local v11, intent:Landroid/content/Intent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 100
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/String;

    .line 102
    .local v5, applicationName:Ljava/lang/String;
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    .line 104
    const v22, 0x7f06006b

    const/16 v23, -0x1

    .line 105
    new-instance v24, Lcom/m0narx/tweaks/fragments/xposed$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v15, v12}, Lcom/m0narx/tweaks/fragments/xposed$1;-><init>(Lcom/m0narx/tweaks/fragments/xposed;Landroid/content/Intent;Ljava/lang/String;Lcom/htc/preference/HtcPreference;)V

    .line 104
    invoke-virtual/range {v21 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    .line 140
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v21

    .line 102
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/m0narx/tweaks/fragments/xposed;->moduleDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 194
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v5           #applicationName:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #modulePref:Lcom/htc/preference/HtcPreference;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_0
    :goto_2
    const/16 v21, 0x1

    return v21

    .line 97
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v12       #modulePref:Lcom/htc/preference/HtcPreference;
    .restart local v15       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 98
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 100
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v5, "(unknown)"

    goto :goto_1

    .line 145
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #modulePref:Lcom/htc/preference/HtcPreference;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_2
    const-string v21, "xposed_installer"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 151
    .local v6, assetManager:Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 152
    .local v10, in:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 155
    .local v13, out:Ljava/io/OutputStream;
    :try_start_1
    const-string v21, "XposedInstaller.apk"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 157
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/XposedInstaller.apk"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, filePath:Ljava/lang/String;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v13           #out:Ljava/io/OutputStream;
    .local v14, out:Ljava/io/OutputStream;
    const/16 v21, 0x400

    :try_start_2
    move/from16 v0, v21

    new-array v7, v0, [B

    .line 163
    .local v7, buffer:[B
    :goto_3
    invoke-virtual {v10, v7}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, read:I
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 167
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 168
    const/4 v10, 0x0

    .line 170
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 171
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    const/4 v13, 0x0

    .line 174
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :try_start_3
    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "file:///"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 176
    const-string v23, "application/vnd.android.package-archive"

    .line 175
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 177
    .local v17, promptInstall:Landroid/content/Intent;
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/fragments/xposed;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 179
    .end local v7           #buffer:[B
    .end local v9           #filePath:Ljava/lang/String;
    .end local v17           #promptInstall:Landroid/content/Intent;
    .end local v18           #read:I
    :catch_1
    move-exception v21

    goto/16 :goto_2

    .line 164
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #buffer:[B
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #read:I
    :cond_3
    const/16 v21, 0x0

    :try_start_4
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v14, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 179
    .end local v7           #buffer:[B
    .end local v18           #read:I
    :catch_2
    move-exception v21

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 183
    .end local v6           #assetManager:Landroid/content/res/AssetManager;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v13           #out:Ljava/io/OutputStream;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "package:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 184
    .local v16, packageURI:Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.DELETE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v19, uninstallIntent:Landroid/content/Intent;
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/fragments/xposed;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 188
    .end local v16           #packageURI:Landroid/net/Uri;
    .end local v19           #uninstallIntent:Landroid/content/Intent;
    :cond_5
    const-string v21, "xposed_framework"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 190
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v20, xposed:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/xposed;->xposedPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "de.robv.android.xposed.installer.WelcomeActivity"

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/fragments/xposed;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/xposed;->refresModules()V

    .line 201
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 329
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/xposed;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 75
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/xposed;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 70
    return-void
.end method
