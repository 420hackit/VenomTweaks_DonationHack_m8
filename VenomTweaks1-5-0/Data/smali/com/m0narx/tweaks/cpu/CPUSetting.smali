.class public abstract Lcom/m0narx/tweaks/cpu/CPUSetting;
.super Ljava/lang/Object;
.source "CPUSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    }
.end annotation


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected dbh:Lcom/m0narx/tweaks/provider/DB;

.field protected mContext:Landroid/content/Context;

.field private moduleActive:Z

.field private prefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    .line 19
    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    .line 20
    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->moduleActive:Z

    .line 36
    iput-object p1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/m0narx/tweaks/provider/DB;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    .line 38
    return-void
.end method

.method private getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    move-result-object v0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method private getCategoryName()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    move-result-object v0

    iget v0, v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;->title:I

    return v0
.end method


# virtual methods
.method protected addPref(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method protected addPref(Lcom/htc/preference/HtcPreference;Z)V
    .locals 1
    .parameter "pref"
    .parameter "withOnClickListener"

    .prologue
    .line 160
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method protected findPreference(I)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "id"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method protected findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 3
    .parameter "name"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 144
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getApplyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getApplyString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected abstract getApplyString()Ljava/lang/String;
.end method

.method protected abstract getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
.end method

.method protected getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/m0narx/tweaks/provider/DB;->getCPUSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, val:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    return-object v0
.end method

.method public abstract isSupport()Z
.end method

.method protected abstract onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    .line 167
    .local v0, result:Z
    return v0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 172
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    .line 173
    .local v0, result:Z
    return v0
.end method

.method public onProgressChanged(Lcom/htc/preference/HtcPreference;I)V
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0
.end method

.method protected abstract onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->moduleActive:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->setCurrent()V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->moduleActive:Z

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onStart(Z)V

    .line 68
    return-void
.end method

.method protected onStart(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 77
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->moduleActive:Z

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onStop(Z)V

    .line 75
    return-void
.end method

.method protected onStop(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 78
    return-void
.end method

.method public putPreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->setPreference()V

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->prefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->moduleActive:Z

    .line 130
    invoke-virtual {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onStart()V

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 101
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 102
    .local v2, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 106
    .local v0, category:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 108
    .local v1, maybeCategory:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_3

    instance-of v4, v1, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 109
    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 118
    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 120
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 121
    instance-of v4, v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    if-eqz v4, :cond_4

    .line 122
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .end local v2           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    goto :goto_0

    .line 111
    .restart local v2       #pref:Lcom/htc/preference/HtcPreference;
    :cond_3
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceGroup;
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 112
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryName()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 115
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 123
    :cond_4
    instance-of v4, v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    if-eqz v4, :cond_0

    .line 124
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .end local v2           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    goto :goto_0

    .line 132
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v1           #maybeCategory:Lcom/htc/preference/HtcPreference;
    :cond_5
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 133
    .restart local v1       #maybeCategory:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 134
    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 135
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method protected abstract setCurrent()V
.end method

.method protected abstract setPreference()V
.end method

.method protected setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1, p2}, Lcom/m0narx/tweaks/provider/DB;->setCPUSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/CPUSetting;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    return-void
.end method
