.class public Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "TabHomescreenMenu_settings.java"


# static fields
.field private static final CUSTOM_APP:I = 0x64


# instance fields
.field res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    return-void
.end method

.method private getDefaultMenuValueByNumber(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 182
    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 185
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private refreshSummary()V
    .locals 23

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->res:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f050074

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, itemsValues:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->res:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f050073

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, itemsEntries:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, count:I
    :goto_0
    const/16 v20, 0xa

    move/from16 v0, v20

    if-lt v4, v0, :cond_0

    .line 178
    return-void

    .line 118
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "entry_"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, key:Ljava/lang/String;
    const-string v18, "tweaks_prism_menu"

    .line 122
    .local v18, tweaksKey:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_type"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, tweaksEntry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->getDefaultMenuValueByNumber(I)I

    move-result v21

    .line 125
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 129
    .local v19, type:I
    const/16 v20, 0x0

    aget-object v15, v9, v20

    .line 131
    .local v15, summary:Ljava/lang/String;
    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->Cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_entry"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, tweaksData:Ljava/lang/String;
    const-string v20, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, entries:[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v0, v6

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 140
    const/16 v20, 0x0

    aget-object v12, v6, v20

    .line 142
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 146
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 151
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    .end local v15           #summary:Ljava/lang/String;
    :cond_1
    check-cast v15, Ljava/lang/String;

    .line 154
    .restart local v15       #summary:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #entries:[Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #tweaksData:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 147
    .restart local v6       #entries:[Ljava/lang/String;
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    .restart local v16       #tweaksData:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 148
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 159
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #entries:[Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #tweaksData:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 161
    .local v8, index:I
    array-length v0, v10

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 174
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 161
    :cond_4
    aget-object v14, v10, v20

    .line 162
    .local v14, s:Ljava/lang/String;
    const-string v22, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 161
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 165
    :cond_5
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 167
    .local v7, i:I
    if-ltz v7, :cond_6

    .line 168
    add-int/lit8 v20, v8, 0x1

    aget-object v15, v9, v20

    .line 169
    goto :goto_4

    .line 171
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f040016

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "prism_menu"

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->res:Landroid/content/res/Resources;

    .line 94
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a03c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, titleStr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->refreshSummary()V

    .line 110
    return-void

    .line 98
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "entry_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tweaks_prism_menu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, tweaksKey:Ljava/lang/String;
    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 102
    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->getDefaultMenuValueByNumber(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 101
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 105
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/16 v6, 0x64

    .line 64
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->getActivity()Landroid/app/Activity;

    .line 67
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v1, "tweaks_prism_menu"

    .line 73
    .local v1, tweaksKey:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_entry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, data:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->Cr:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entry_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->refreshSummary()V

    goto :goto_0
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, PKey:Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, item:[Ljava/lang/String;
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    .local v1, index:I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 45
    .local v5, value:I
    const/16 v7, 0x64

    if-ne v5, v7, :cond_0

    .line 47
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->mContext:Landroid/content/Context;

    const-class v7, Lcom/m0narx/tweaks/picker/AppPicker;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v1}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    const/4 v6, 0x0

    .line 60
    .end local v3           #myIntent:Landroid/content/Intent;
    :goto_0
    return v6

    .line 54
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tweaks_prism_menu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, tweaksKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->refreshSummary()V

    goto :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 208
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public setHeader()V
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/TabHomescreenMenu_settings;->enableBackButton(Lcom/htc/widget/ActionBarContainer;)V

    .line 202
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
