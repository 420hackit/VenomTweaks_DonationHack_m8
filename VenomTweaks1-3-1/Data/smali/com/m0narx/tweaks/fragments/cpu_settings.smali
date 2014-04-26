.class public Lcom/m0narx/tweaks/fragments/cpu_settings;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "cpu_settings.java"


# instance fields
.field private Modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/cpu/CPUSetting;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbh:Lcom/m0narx/tweaks/provider/DB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    .line 35
    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static applyAllSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "mContext"

    .prologue
    const/4 v8, 0x0

    .line 58
    new-instance v4, Lcom/m0narx/tweaks/provider/DB;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    .line 59
    .local v4, dbh:Lcom/m0narx/tweaks/provider/DB;
    invoke-virtual {v4}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 61
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 64
    .local v5, settings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "SELECT key, value FROM cpu;"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 65
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    :cond_0
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    const-string v6, "apply_on_boot"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 77
    const-string v6, "global_uv"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    const-string v6, "UPDATE cpu SET value=\'0\' WHERE key=\'global_uv\';"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    .line 83
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    new-instance v1, Lvenom/common/settings;

    invoke-direct {v1}, Lvenom/common/settings;-><init>()V

    .line 88
    .local v1, conf:Lvenom/common/settings;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lvenom/common/settings;->CPU_CORES:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sys/power/pnpmgr/hotplug/min_on_cpus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, CMD:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/CPUFreq;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/CPUFreq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/CPUFreq;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/Governor;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/Governor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/Governor;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "echo 0 > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sys/power/pnpmgr/hotplug/min_on_cpus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/IOSheduler;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/IOSheduler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/IOSheduler;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/BufferSize;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/BufferSize;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/BufferSize;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/GPUOC;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/GPUOC;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/GPUOC;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    const v6, 0x7f0a01a4

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :cond_4
    const-string v0, ""

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/m0narx/tweaks/cpu/Undervolt;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/cpu/Undervolt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/m0narx/tweaks/cpu/Undervolt;->getApplyStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    goto/16 :goto_0
.end method

.method private setApplyOnBoot()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "apply_on_boot"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 54
    .local v0, onb:Lcom/htc/preference/HtcSwitchPreference;
    const-string v1, "apply_on_boot"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/cpu_settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/m0narx/tweaks/provider/DB;->getCPUSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, val:Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 203
    return-object v0
.end method

.method public getXMLFile()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f040007

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "cpu"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 145
    new-instance v2, Lcom/m0narx/tweaks/provider/DB;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    .line 147
    const-string v2, "chmod 664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    const-string v2, "cpu_settings"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/cpu_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 154
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/IOSheduler;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/IOSheduler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/BufferSize;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/BufferSize;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/ZRAM;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/ZRAM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/Governor;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/Governor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/CPUFreq;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/CPUFreq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/GPUOC;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/GPUOC;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    new-instance v3, Lcom/m0narx/tweaks/cpu/Undervolt;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/m0narx/tweaks/cpu/Undervolt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    const-string v2, "apply_on_boot"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/fragments/cpu_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/cpu_settings;->setApplyOnBoot()V

    .line 177
    return-void

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/cpu/CPUSetting;

    .line 171
    .local v0, module:Lcom/m0narx/tweaks/cpu/CPUSetting;
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu/CPUSetting;->putPreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onPause()V

    .line 209
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    return-void

    .line 209
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/cpu/CPUSetting;

    .line 210
    .local v0, module:Lcom/m0narx/tweaks/cpu/CPUSetting;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onStop()V

    goto :goto_0
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    :cond_0
    const-string v2, "apply_on_boot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string v2, "apply_on_boot"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/fragments/cpu_settings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return v4
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 218
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->Modules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    return-void

    .line 218
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/cpu/CPUSetting;

    .line 219
    .local v0, module:Lcom/m0narx/tweaks/cpu/CPUSetting;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/cpu/CPUSetting;->onStart()V

    goto :goto_0
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 190
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1, p2}, Lcom/m0narx/tweaks/provider/DB;->setCPUSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/cpu_settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
