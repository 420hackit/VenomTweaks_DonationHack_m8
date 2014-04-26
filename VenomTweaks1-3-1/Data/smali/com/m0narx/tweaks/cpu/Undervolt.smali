.class public Lcom/m0narx/tweaks/cpu/Undervolt;
.super Lcom/m0narx/tweaks/cpu/CPUSetting;
.source "Undervolt.java"


# static fields
.field private static MAX_UV:I = 0x0

.field private static final SETTING_GLOBAL_UV:Ljava/lang/String; = "global_uv"

.field private static final SETTING_SEPARA_UV:Ljava/lang/String; = "separate_uv"

.field private static final SETTING_UV_MAX:Ljava/lang/String; = "uv_max"

.field private static final UV_FACTOR:I = 0x3e8

.field private static final UV_INCREMENT:I = 0x19

.field private static final VOLTAGE_TABLE:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

.field private static voltage_slider_max:I


# instance fields
.field private FREQ:Ljava/lang/String;

.field private global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

.field private originalVDD:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private voltagesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x32

    sput v0, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    .line 30
    sget v0, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x19

    sput v0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/cpu/CPUSetting;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "Frequency: "

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->FREQ:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->FREQ:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private getOriginalVoltageLevels()Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 336
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 337
    .local v4, voltage:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT freq, orig_uv FROM vdd;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 343
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    iget-object v6, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 347
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "DELETE FROM vdd;"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 355
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 357
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-object v4

    .line 350
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    .local v1, freq:Ljava/lang/String;
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .local v3, uv:Ljava/lang/String;
    invoke-virtual {v4, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v5, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INSERT INTO vdd(freq, orig_uv,uv) VALUES(\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getVoltageLevels()Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 313
    .local v5, voltage:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 314
    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 315
    .local v3, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 326
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 328
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 316
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, values:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 318
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 319
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "mhz"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, freq:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v1, v4, v6

    .line 321
    .local v1, currentMv:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v5, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #currentMv:Ljava/lang/String;
    .end local v2           #freq:Ljava/lang/String;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #values:[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private refreshFreqs()V
    .locals 10

    .prologue
    .line 205
    invoke-static {}, Lcom/m0narx/tweaks/cpu/Undervolt;->getVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    .line 207
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 224
    return-void

    .line 209
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, freq:Ljava/lang/String;
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 211
    .local v7, vol:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "freq_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, key:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int v8, v9, v8

    div-int/lit8 v1, v8, 0x19

    .line 214
    .local v1, idx:I
    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 215
    .local v6, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    sget v8, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    invoke-virtual {v6, v8}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 216
    sget v8, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v5, v8, 0x19

    .line 217
    .local v5, origPos:I
    add-int v4, v5, v1

    .line 219
    .local v4, newPos:I
    invoke-virtual {v6, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    goto :goto_0
.end method

.method private refreshUVMaxSetting()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    sget v1, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setMax(I)V

    .line 197
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->setGlobalUV()V

    .line 199
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->refreshFreqs()V

    .line 201
    return-void
.end method

.method private resetGlobalUV()V
    .locals 6

    .prologue
    .line 282
    const-string v4, "global_uv"

    const-string v5, "0"

    invoke-virtual {p0, v4, v5}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    sget v5, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v5, v5, 0x19

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 284
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v5, "0 mV"

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, ""

    .line 288
    .local v2, resetCMD:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    return-void

    .line 289
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, freq:Ljava/lang/String;
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, uv:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "echo \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private resetSeparateUV()V
    .locals 5

    .prologue
    .line 297
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    return-void

    .line 299
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, freq:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mV"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    sget v3, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v3, v3, 0x19

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 303
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "freq"
    .parameter "uv"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 434
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE vdd SET uv=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE freq=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 437
    return-void
.end method

.method private setGlobalUV()V
    .locals 7

    .prologue
    .line 255
    const-string v4, "global_uv"

    invoke-virtual {p0, v4}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 256
    .local v3, uv:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, summary:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :cond_0
    sget v4, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v1, v4, 0x19

    .line 261
    .local v1, origValue:I
    div-int/lit8 v0, v3, 0x19

    .line 262
    .local v0, curIdx:I
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " mV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    add-int v5, v1, v0

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 264
    return-void
.end method

.method private setSeparateVDD(ZZ)V
    .locals 4
    .parameter "Enabled"
    .parameter "needReset"

    .prologue
    .line 267
    iget-object v3, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setEnabled(Z)V

    .line 268
    iget-object v2, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    if-nez p2, :cond_2

    .line 279
    :goto_2
    return-void

    .line 267
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 270
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, freq:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "freq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    .line 274
    .end local v0           #freq:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->resetGlobalUV()V

    goto :goto_2

    .line 277
    :cond_3
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->resetSeparateUV()V

    goto :goto_2
.end method

.method private setUnderVoltMax()V
    .locals 3

    .prologue
    .line 239
    const-string v2, "uv_max"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    const/16 v2, 0x32

    sput v2, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    .line 246
    :goto_0
    sget v2, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x19

    sput v2, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    .line 248
    const-string v2, "uv_max"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    .line 249
    .local v0, pref:Lcom/htc/preference/HtcListPreference;
    sget v2, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 252
    return-void

    .line 244
    .end local v0           #pref:Lcom/htc/preference/HtcListPreference;
    :cond_1
    const-string v2, "uv_max"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    goto :goto_0
.end method


# virtual methods
.method protected getApplyString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 363
    const-string v0, ""

    .line 365
    .local v0, cmd:Ljava/lang/String;
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 366
    .local v11, voltage:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/m0narx/tweaks/cpu/Undervolt;->getVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 369
    .local v1, currVoltage:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v12}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iput-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 370
    iget-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "SELECT freq, orig_uv, uv FROM vdd;"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 371
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 373
    :cond_0
    const/4 v12, 0x2

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, uv:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, orig:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 376
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 379
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_2

    .line 380
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v7           #orig:Ljava/lang/String;
    .end local v8           #uv:Ljava/lang/String;
    :cond_2
    const-string v12, "separate_uv"

    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "separate_uv"

    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 385
    :cond_3
    const-string v12, "global_uv"

    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "global_uv"

    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 386
    const-string v12, "global_uv"

    invoke-virtual {p0, v12}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v8, v12, 0x3e8

    .line 387
    .local v8, uv:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, uvStr:Ljava/lang/String;
    const/4 v6, 0x1

    .line 389
    .local v6, needApply:Z
    iget-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v12}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iput-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 390
    iget-object v12, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "SELECT freq, orig_uv FROM vdd;"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 391
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 393
    :cond_4
    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, volt:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, freq:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v5, v12, 0x3e8

    .line 396
    .local v5, ivolt:I
    add-int v13, v5, v8

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    if-ne v13, v12, :cond_5

    .line 397
    const/4 v6, 0x0

    .line 400
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    sget v13, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit16 v13, v13, 0x3e8

    add-int/2addr v13, v5

    if-le v12, v13, :cond_6

    .line 401
    const/4 v6, 0x0

    .line 403
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    sget v13, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit8 v13, v13, -0x1

    mul-int/lit16 v13, v13, 0x3e8

    add-int/2addr v13, v5

    if-ge v12, v13, :cond_7

    .line 404
    const/4 v6, 0x0

    .line 406
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 407
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_8

    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 411
    .end local v3           #freq:Ljava/lang/String;
    .end local v5           #ivolt:I
    .end local v10           #volt:Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_a

    .line 412
    if-lez v8, :cond_9

    .line 413
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "+"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 415
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "echo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .end local v6           #needApply:Z
    .end local v8           #uv:I
    .end local v9           #uvStr:Ljava/lang/String;
    :cond_a
    return-object v0

    .line 419
    :cond_b
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 420
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 421
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .restart local v3       #freq:Ljava/lang/String;
    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v10, v12, 0x3e8

    .line 423
    .local v10, volt:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "echo \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCategoryParams()Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;
    .locals 3

    .prologue
    .line 441
    new-instance v0, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;

    const-string v1, "uv"

    const v2, 0x7f0a0197

    invoke-direct {v0, p0, v1, v2}, Lcom/m0narx/tweaks/cpu/CPUSetting$CategoryParams;-><init>(Lcom/m0narx/tweaks/cpu/CPUSetting;Ljava/lang/String;I)V

    return-object v0
.end method

.method public isSupport()Z
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected onChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 20
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 53
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 54
    .local v4, bvar:Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 55
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, PKey:Ljava/lang/String;
    const-string v18, "freq_"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v5, p1

    .line 58
    check-cast v5, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 59
    .local v5, cur:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    const-string v18, "freq_"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, freq:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 61
    .local v12, origVolt:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 62
    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 65
    :cond_1
    sget v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v13, v18, 0x19

    .line 66
    .local v13, origVoltPosition:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, newPosition:I
    sub-int v18, v9, v13

    mul-int/lit8 v16, v18, 0x19

    .line 68
    .local v16, uv_value:I
    sget v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    sget v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit8 v18, v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    :cond_2
    const/16 v18, 0x0

    .line 112
    .end local v5           #cur:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    .end local v6           #freq:Ljava/lang/String;
    .end local v9           #newPosition:I
    .end local v12           #origVolt:Ljava/lang/String;
    .end local v13           #origVoltPosition:I
    .end local v16           #uv_value:I
    :goto_0
    return v18

    .line 70
    .restart local v5       #cur:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    .restart local v6       #freq:Ljava/lang/String;
    .restart local v9       #newPosition:I
    .restart local v12       #origVolt:Ljava/lang/String;
    .restart local v13       #origVoltPosition:I
    .restart local v16       #uv_value:I
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int v11, v18, v16

    .line 71
    .local v11, newVolt:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " mV"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/m0narx/tweaks/cpu/Undervolt;->saveUVSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v5           #cur:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    .end local v6           #freq:Ljava/lang/String;
    .end local v9           #newPosition:I
    .end local v11           #newVolt:I
    .end local v12           #origVolt:Ljava/lang/String;
    .end local v13           #origVoltPosition:I
    .end local v16           #uv_value:I
    :cond_4
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 73
    :cond_5
    const-string v18, "separate_uv"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 74
    const-string v18, "separate_uv"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_2
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSeparateVDD(ZZ)V

    goto :goto_1

    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 76
    :cond_7
    const-string v18, "global_uv"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 78
    .local v15, selectedPos:I
    sget v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v13, v18, 0x19

    .line 79
    .restart local v13       #origVoltPosition:I
    sub-int v18, v15, v13

    mul-int/lit8 v10, v18, 0x19

    .line 80
    .local v10, newValue:I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, val:Ljava/lang/String;
    const-string v18, "global_uv"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/cpu/Undervolt;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 82
    .local v14, prevValue:I
    if-lez v10, :cond_8

    .line 83
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "+"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 85
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " mV"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    sub-int v8, v10, v14

    .line 88
    .local v8, increment:I
    mul-int/lit16 v0, v8, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, incr:Ljava/lang/String;
    const-string v18, "global_uv"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-lez v8, :cond_9

    .line 93
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "+"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "echo "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 99
    .end local v7           #incr:Ljava/lang/String;
    .end local v8           #increment:I
    .end local v10           #newValue:I
    .end local v13           #origVoltPosition:I
    .end local v14           #prevValue:I
    .end local v15           #selectedPos:I
    .end local v17           #val:Ljava/lang/String;
    :cond_a
    const-string v18, "uv_max"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 100
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    .line 101
    sget v18, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v18, v18, 0x19

    sput v18, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    .line 103
    const-string v18, "uv_max"

    sget v19, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->resetGlobalUV()V

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->resetSeparateUV()V

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->refreshFreqs()V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->refreshUVMaxSetting()V

    goto/16 :goto_1
.end method

.method protected onSeekBarSlide(Lcom/htc/preference/HtcPreference;I)V
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, key:Ljava/lang/String;
    const-string v8, "freq_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    const-string v8, "freq_"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, freq:Ljava/lang/String;
    iget-object v8, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, origVolt:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_0

    .line 123
    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 126
    :cond_0
    sget v8, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v5, v8, 0x19

    .line 127
    .local v5, origVoltPosition:I
    sub-int v8, p2, v5

    mul-int/lit8 v6, v8, 0x19

    .line 128
    .local v6, uv_value:I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int v3, v8, v6

    .line 129
    .local v3, newVolt:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " mV"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    .end local v0           #freq:Ljava/lang/String;
    .end local v3           #newVolt:I
    .end local v4           #origVolt:Ljava/lang/String;
    .end local v5           #origVoltPosition:I
    .end local v6           #uv_value:I
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const-string v8, "global_uv"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    sget v8, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v5, v8, 0x19

    .line 132
    .restart local v5       #origVoltPosition:I
    sub-int v8, p2, v5

    mul-int/lit8 v2, v8, 0x19

    .line 133
    .local v2, newValue:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, val:Ljava/lang/String;
    if-lez v2, :cond_3

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " mV"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCurrent()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->setUnderVoltMax()V

    .line 230
    const-string v0, "separate_uv"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/cpu/Undervolt;->findPreference(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcSwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/cpu/Undervolt;->setSeparateVDD(ZZ)V

    .line 231
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->setGlobalUV()V

    .line 233
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->refreshUVMaxSetting()V

    .line 235
    return-void
.end method

.method protected setPreference()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 144
    invoke-static {}, Lcom/m0narx/tweaks/cpu/Undervolt;->getVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v10

    iput-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    .line 145
    invoke-direct {p0}, Lcom/m0narx/tweaks/cpu/Undervolt;->getOriginalVoltageLevels()Ljava/util/LinkedHashMap;

    move-result-object v10

    iput-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    .line 147
    new-instance v10, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v11, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->mContext:Landroid/content/Context;

    sget v12, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    invoke-direct {v10, v11, v12}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .line 148
    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const v11, 0x7f0a0198

    invoke-virtual {v10, v11}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(I)V

    .line 149
    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    const-string v11, "global_uv"

    invoke-virtual {v10, v11}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 151
    new-instance v7, Lcom/htc/preference/HtcSwitchPreference;

    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 152
    .local v7, sepuv:Lcom/htc/preference/HtcSwitchPreference;
    const-string v10, "separate_uv"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v7, v13}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 154
    const v10, 0x7f0a0199

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcSwitchPreference;->setTitle(I)V

    .line 155
    const v10, 0x7f0a019a

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcSwitchPreference;->setSummary(I)V

    .line 157
    new-instance v8, Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 158
    .local v8, uvMax:Lcom/htc/preference/HtcListPreference;
    const-string v10, "uv_max"

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setKey(Ljava/lang/String;)V

    .line 159
    const v10, 0x7f06004d

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 160
    const v10, 0x7f06004e

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 161
    const v10, 0x7f0a029e

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 162
    const v10, 0x7f0a029f

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(I)V

    .line 164
    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->global_uv:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/cpu/Undervolt;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 165
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/cpu/Undervolt;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 166
    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/cpu/Undervolt;->addPref(Lcom/htc/preference/HtcPreference;)V

    .line 168
    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 169
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 190
    return-void

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, freq:Ljava/lang/String;
    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->voltagesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 172
    .local v9, vol:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "freq_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, key:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->originalVDD:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int v10, v11, v10

    div-int/lit8 v1, v10, 0x19

    .line 175
    .local v1, idx:I
    new-instance v6, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    iget-object v10, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->mContext:Landroid/content/Context;

    sget v11, Lcom/m0narx/tweaks/cpu/Undervolt;->voltage_slider_max:I

    invoke-direct {v6, v10, v11}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;-><init>(Landroid/content/Context;I)V

    .line 176
    .local v6, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;
    invoke-virtual {v6, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setKey(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-lt v10, v11, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " mV"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/m0narx/tweaks/cpu/Undervolt;->FREQ:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MHz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setEnabled(Z)V

    .line 183
    sget v10, Lcom/m0narx/tweaks/cpu/Undervolt;->MAX_UV:I

    div-int/lit8 v5, v10, 0x19

    .line 184
    .local v5, origPos:I
    add-int v4, v5, v1

    .line 186
    .local v4, newPos:I
    invoke-virtual {v6, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 188
    invoke-virtual {p0, v6}, Lcom/m0narx/tweaks/cpu/Undervolt;->addPref(Lcom/htc/preference/HtcPreference;)V

    goto/16 :goto_0
.end method
