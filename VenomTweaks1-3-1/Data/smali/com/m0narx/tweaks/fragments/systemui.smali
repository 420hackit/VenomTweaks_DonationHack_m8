.class public Lcom/m0narx/tweaks/fragments/systemui;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "systemui.java"


# static fields
.field private static final BG_ANIM:I = 0x3

.field private static final BG_CAPTION:I = 0x2

.field private static final BG_STATUSBAR:I = 0x1

.field private static final BG_STATUSBARICON:I = 0x0

.field private static COL_DEFAULT:I = 0x0

.field private static COL_MAX:I = 0x0

.field private static COL_MIN:I = 0x0

.field private static final COL_STEP:I = 0x1

.field private static final DIALOG_ICONS:I = 0x1

.field private static final DIALOG_SELECT_BACKGROUND:I = 0x2

.field private static final ICON_ADB:I = 0x6

.field private static final ICON_ALARM:I = 0x0

.field private static final ICON_BEATS:I = 0xb

.field private static final ICON_BLUETOOTH:I = 0x5

.field private static final ICON_DATA:I = 0x8

.field private static final ICON_GPS:I = 0x1

.field private static final ICON_HEADPHONES:I = 0x2

.field private static final ICON_INPUT:I = 0x9

.field private static final ICON_SIGNAL:I = 0x7

.field private static final ICON_SOUND:I = 0x3

.field private static final ICON_SPRINT_GPS:I = 0xc

.field private static final ICON_USB:I = 0xa

.field private static final ICON_WIFI:I = 0x4

.field private static final ICON_WIFI_CALLING:I = 0xd

.field private static final REQUEST_CROP:I = 0xa


# instance fields
.field private initDone:Z

.field private mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x2

    sput v0, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    .line 75
    const/4 v0, 0x5

    sput v0, Lcom/m0narx/tweaks/fragments/systemui;->COL_MAX:I

    .line 76
    const/4 v0, 0x3

    sput v0, Lcom/m0narx/tweaks/fragments/systemui;->COL_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    .line 44
    return-void
.end method

.method private checkContactsWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_notif_contact_widget"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-string v0, "contacts_widget_preferences"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 747
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v0, "contacts_widget_preferences"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkHQS()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_horizontal_qs"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, value:I
    if-nez v0, :cond_0

    .line 282
    const-string v1, "quicklauncher"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 283
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 284
    const-string v1, "heqs_size"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 285
    const-string v1, "hhrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 286
    const-string v1, "eqs_singleflashtoggle"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 287
    const-string v1, "heqs_location"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 289
    iget-boolean v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 291
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_widget_switch"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    :cond_0
    if-ne v0, v4, :cond_1

    .line 297
    const-string v1, "quicklauncher"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 298
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 299
    const-string v1, "heqs_size"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 300
    const-string v1, "hhrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 301
    const-string v1, "heqs_location"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 302
    const-string v1, "eqs_singleflashtoggle"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 303
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 304
    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 305
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 306
    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 308
    iget-boolean v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 310
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_widget_switch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_1
    if-ne v0, v6, :cond_2

    .line 316
    const-string v1, "quicklauncher"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 317
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 318
    const-string v1, "heqs_size"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 319
    const-string v1, "hhrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 320
    const-string v1, "heqs_location"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 321
    const-string v1, "eqs_singleflashtoggle"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 322
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 323
    const v2, 0x7f06004b

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 324
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 325
    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 327
    iget-boolean v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 329
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_widget_switch"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    :cond_2
    if-ne v0, v7, :cond_3

    .line 335
    const-string v1, "quicklauncher"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 336
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 337
    const-string v1, "heqs_size"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 338
    const-string v1, "hhrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 339
    const-string v1, "heqs_location"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 340
    const-string v1, "eqs_singleflashtoggle"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 341
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 342
    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 343
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 344
    const v2, 0x7f060048

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 346
    iget-boolean v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    if-eqz v1, :cond_3

    .line 347
    const-string v1, "widget_switch"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 348
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_widget_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_3
    return-void
.end method

.method private checkQS()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_qs_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, style:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 249
    const-string v1, "neqs_columns_slider"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 250
    const-string v1, "super_quick_settings"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 251
    const-string v1, "quick_pulldown"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 252
    const-string v1, "hide_qs"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 253
    const-string v1, "hrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 254
    const-string v1, "super_quick_settings"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 255
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_auto_quick_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    :goto_0
    return-void

    .line 257
    :cond_0
    if-ne v0, v4, :cond_1

    .line 258
    const-string v1, "neqs_columns_slider"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 259
    const-string v1, "quick_pulldown"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 260
    const-string v1, "super_quick_settings"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 261
    const-string v1, "hide_qs"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 262
    const-string v1, "hrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 264
    :cond_1
    const-string v1, "neqs_columns_slider"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 265
    const-string v1, "quick_pulldown"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 266
    const-string v1, "super_quick_settings"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 267
    const-string v1, "hide_qs"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 268
    const-string v1, "hrquick_pref"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 270
    const-string v1, "super_quick_settings"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .line 271
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_auto_quick_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private initSliders()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    .line 751
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_eqs_columns"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 753
    .local v2, value:I
    const-string v3, "neqs_columns_slider"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 755
    .local v0, pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 756
    sget v3, Lcom/m0narx/tweaks/fragments/systemui;->COL_MAX:I

    sget v4, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 757
    div-int/lit8 v3, v2, 0x1

    .line 758
    sget v4, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    div-int/lit8 v4, v4, 0x1

    .line 757
    sub-int v1, v3, v4

    .line 759
    .local v1, progress:I
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 763
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_notif_bgalpha"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 765
    const-string v3, "notif_bgalpha"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 767
    .restart local v0       #pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 768
    invoke-virtual {v0, v6}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 769
    move v1, v2

    .line 770
    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 775
    return-void
.end method

.method private resetNotHandledPrefs()V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method private showDialog(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 85
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 87
    const v2, 0x7f060064

    .line 88
    new-instance v3, Lcom/m0narx/tweaks/fragments/systemui$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/systemui$1;-><init>(Lcom/m0narx/tweaks/fragments/systemui;)V

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x0

    .line 113
    .local v0, SWIcons:[Z
    const/16 v1, 0xe

    new-array v0, v1, [Z

    .line 115
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_show_alarm_icon"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    aput-boolean v1, v0, v3

    .line 116
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_show_gps_icon"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_2
    aput-boolean v1, v0, v2

    .line 117
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    .line 118
    const-string v5, "tweaks_show_headset_icon"

    .line 117
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_3
    aput-boolean v1, v0, v4

    .line 119
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_volume_icons"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_4
    aput-boolean v1, v0, v4

    .line 121
    const/4 v4, 0x4

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_wifi_icon"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_5
    aput-boolean v1, v0, v4

    .line 122
    const/4 v4, 0x5

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    .line 123
    const-string v5, "tweaks_show_bluetooth_icon"

    .line 122
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_6
    aput-boolean v1, v0, v4

    .line 124
    const/4 v4, 0x6

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_adb_icon"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_7
    aput-boolean v1, v0, v4

    .line 125
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_signal_icon"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_8
    aput-boolean v1, v0, v4

    .line 127
    const/16 v4, 0x8

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_data_icon"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_9
    aput-boolean v1, v0, v4

    .line 128
    const/16 v4, 0x9

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_keyboardicon"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 129
    if-ne v1, v2, :cond_9

    move v1, v2

    .line 128
    :goto_a
    aput-boolean v1, v0, v4

    .line 130
    const/16 v4, 0xa

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_usbicon"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_b
    aput-boolean v1, v0, v4

    .line 131
    const/16 v4, 0xb

    .line 132
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_beats_icon"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 131
    if-ne v1, v2, :cond_b

    move v1, v2

    :goto_c
    aput-boolean v1, v0, v4

    .line 135
    const/16 v4, 0xc

    .line 136
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_show_sprintgps_icon"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    if-nez v1, :cond_c

    move v1, v2

    :goto_d
    aput-boolean v1, v0, v4

    .line 140
    const/16 v1, 0xd

    .line 141
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_wifi_calling"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 140
    if-ne v4, v2, :cond_d

    :goto_e
    aput-boolean v2, v0, v1

    .line 144
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 146
    const v2, 0x7f060020

    .line 147
    new-instance v3, Lcom/m0narx/tweaks/fragments/systemui$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/systemui$2;-><init>(Lcom/m0narx/tweaks/fragments/systemui;)V

    .line 146
    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 231
    const v2, 0x7f0a0056

    .line 232
    new-instance v3, Lcom/m0narx/tweaks/fragments/systemui$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/fragments/systemui$3;-><init>(Lcom/m0narx/tweaks/fragments/systemui;)V

    .line 231
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    :cond_0
    move v1, v3

    .line 114
    goto/16 :goto_1

    :cond_1
    move v1, v3

    .line 116
    goto/16 :goto_2

    :cond_2
    move v1, v3

    .line 117
    goto/16 :goto_3

    :cond_3
    move v1, v3

    .line 119
    goto/16 :goto_4

    :cond_4
    move v1, v3

    .line 121
    goto/16 :goto_5

    :cond_5
    move v1, v3

    .line 122
    goto/16 :goto_6

    :cond_6
    move v1, v3

    .line 124
    goto/16 :goto_7

    :cond_7
    move v1, v3

    .line 125
    goto/16 :goto_8

    :cond_8
    move v1, v3

    .line 127
    goto/16 :goto_9

    :cond_9
    move v1, v3

    .line 129
    goto/16 :goto_a

    :cond_a
    move v1, v3

    .line 130
    goto :goto_b

    :cond_b
    move v1, v3

    .line 131
    goto :goto_c

    :cond_c
    move v1, v3

    .line 135
    goto :goto_d

    :cond_d
    move v2, v3

    .line 140
    goto :goto_e

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getWeatherCityList()[[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 415
    .local v7, res:Landroid/content/res/Resources;
    const-string v9, "m0narX_tweaks"

    const-string v10, "getWeatherCityList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-array v0, v11, [Ljava/lang/String;

    const-string v9, "com.htc.htclocationservice"

    aput-object v9, v0, v12

    const-string v9, "com.htc.elroy.Weather"

    aput-object v9, v0, v13

    .line 420
    .local v0, apps:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 419
    invoke-static {v9, v0}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    .line 422
    .local v5, locations:[Lcom/htc/util/weather/WeatherLocation;
    array-length v9, v5

    add-int/lit8 v9, v9, 0x1

    filled-new-array {v11, v9}, [I

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .line 423
    .local v8, result:[[Ljava/lang/String;
    aget-object v9, v8, v12

    const-string v10, ""

    aput-object v10, v9, v12

    .line 424
    aget-object v9, v8, v13

    const v10, 0x7f0a01ba

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 426
    if-eqz v5, :cond_0

    array-length v9, v5

    if-nez v9, :cond_2

    .line 427
    :cond_0
    const-string v9, "m0narX_tweaks"

    const-string v10, "weather_locs is zero"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v8, 0x0

    .line 456
    .end local v8           #result:[[Ljava/lang/String;
    :cond_1
    return-object v8

    .line 431
    .restart local v8       #result:[[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui;->hasCurrentLocation()Z

    .line 432
    const v9, 0x7f0a01bb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, currentStr:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v5

    if-ge v3, v9, :cond_1

    .line 434
    aget-object v4, v5, v3

    .line 436
    .local v4, location:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, code:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 439
    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 440
    if-eqz v6, :cond_3

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 441
    :cond_3
    move-object v6, v2

    .line 442
    const-string v1, "Current"

    .line 448
    :cond_4
    :goto_1
    const-string v9, "m0narX_tweaks"

    .line 449
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

    .line 448
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 451
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 452
    aget-object v9, v8, v12

    add-int/lit8 v10, v3, 0x1

    aput-object v1, v9, v10

    .line 453
    aget-object v9, v8, v13

    add-int/lit8 v10, v3, 0x1

    aput-object v6, v9, v10

    .line 433
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
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

    .line 445
    const-string v1, "Current"

    goto :goto_1
.end method

.method public getXMLFile()I
    .locals 1

    .prologue
    .line 778
    const v0, 0x7f040019

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    const-string v0, "systemui"

    return-object v0
.end method

.method public hasCurrentLocation()Z
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    .line 461
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    .line 460
    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 650
    const-string v0, "super_quick_settings"

    const-string v1, "tweaks_auto_quick_settings"

    .line 651
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 650
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 653
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "hide_noti"

    aput-object v1, v0, v5

    const-string v1, "clock_options_pref"

    aput-object v1, v0, v6

    .line 654
    const-string v1, "traffic_options_pref"

    aput-object v1, v0, v4

    const-string v1, "theme"

    aput-object v1, v0, v3

    .line 653
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->OnClickListener([Ljava/lang/String;)V

    .line 655
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "battery_options_pref"

    aput-object v1, v0, v5

    const-string v1, "quicklauncher"

    aput-object v1, v0, v6

    .line 656
    const-string v1, "statusbarcaption_options"

    aput-object v1, v0, v4

    const-string v1, "contacts_widget_preferences"

    aput-object v1, v0, v3

    .line 655
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->OnClickListener([Ljava/lang/String;)V

    .line 658
    const-string v0, "statusbar_custombg"

    const-string v1, "tweaks_statusbar_customimage"

    .line 659
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 658
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 660
    const-string v0, "statusbar_icon"

    const-string v1, "tweaks_status_icon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 662
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.Weather"

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "systemui_weather"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->OnClickListener([Ljava/lang/String;)V

    .line 666
    new-instance v0, Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    .line 667
    new-instance v2, Lcom/m0narx/tweaks/fragments/systemui$4;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/fragments/systemui$4;-><init>(Lcom/m0narx/tweaks/fragments/systemui;)V

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/dialogs/WeatherSelector$OnWeatherSelected;)V

    .line 666
    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    .line 679
    :goto_0
    const-string v0, "cm_brightness_control"

    .line 680
    const-string v1, "tweaks_cm_brightness_control"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 679
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 681
    const-string v0, "recentapps_style"

    const-string v1, "tweaks_recentapps_style"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const-string v0, "pref_statusbar_caption"

    .line 684
    const-string v1, "tweaks_custom_statusbartext"

    const-string v2, ""

    .line 683
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v0, "carrier_icon"

    const-string v1, "tweaks_carrier_icon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 686
    const-string v0, "widget_switch"

    const-string v1, "tweaks_widget_switch"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string v0, "systemui_notificationcount"

    .line 688
    const-string v1, "tweaks_systemui_notificationcount"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 687
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 689
    const-string v0, "systemui_volume"

    const-string v1, "tweaks_systemui_volume"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v0, "systemui_shake"

    const-string v1, "tweaks_systemui_shake"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v0, "heqs_size"

    const-string v1, "tweaks_heqs_size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v0, "quick_pulldown"

    const-string v1, "tweaks_quick_pulldown"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v0, "horizontal_qs_setttings"

    const-string v1, "tweaks_horizontal_qs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v0, "hide_qs"

    const-string v1, "tweaks_hide_qs"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v0, "qs_style"

    const-string v1, "tweaks_qs_style"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string v0, "eqs_autoclose"

    const-string v1, "tweaks_eqs_autoclose"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 701
    const-string v0, ""

    const-string v1, "tweaks_eqs_columns"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v0, "neqs_columns_slider"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    .line 704
    sget v3, Lcom/m0narx/tweaks/fragments/systemui;->COL_DEFAULT:I

    div-int/lit8 v3, v3, 0x1

    .line 705
    sget v4, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    div-int/lit8 v4, v4, 0x1

    .line 704
    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 703
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 708
    const-string v0, "contacts_widget"

    const-string v1, "tweaks_notif_contact_widget"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 710
    const-string v0, "signal_left"

    const-string v1, "tweaks_signal_left"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 711
    const-string v0, "battery_left"

    const-string v1, "tweaks_battery_left"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 713
    const-string v0, "hide_rammeter"

    const-string v1, "tweaks_hide_rammeter"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 716
    const-string v0, "notif_bgalpha"

    const-string v1, ""

    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 718
    const-string v0, "statusbar_doubletap"

    const-string v1, "tweaks_statusbar_doubletap"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 720
    const-string v0, "systemui_dim"

    const-string v1, "tweaks_systemui_dim"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    const-string v0, "eqs_singleflashtoggle"

    const-string v1, "tweaks_eqs_singleflashtoggle"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 724
    const-string v0, "heqs_location"

    const-string v1, "tweaks_heqs_location"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    const-string v0, "status_bar_size"

    const-string v1, "tweaks_status_bar_size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkQS()V

    .line 731
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkHQS()V

    .line 732
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->initSliders()V

    .line 734
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkContactsWidget()V

    .line 736
    iput-boolean v6, p0, Lcom/m0narx/tweaks/fragments/systemui;->initDone:Z

    .line 737
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    const-string v1, "notification_pulldown_tweaks"

    .line 676
    const-string v2, "systemui_weather"

    .line 675
    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/Customization;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 357
    const-string v0, "m0narX_tweaks"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult() result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 364
    const-string v0, "statusbar_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 368
    :cond_2
    const-string v9, ""

    .line 369
    .local v9, TweakName:Ljava/lang/String;
    const-string v7, ""

    .line 370
    .local v7, PrefName:Ljava/lang/String;
    const-string v6, ""

    .line 371
    .local v6, FileName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 372
    .local v8, SourceURI:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 402
    :goto_1
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/system/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v0, v8, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 376
    :sswitch_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x438

    const/16 v4, 0x780

    const/16 v5, 0xa

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBgCrop(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;Landroid/net/Uri;III)V

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 383
    .local v10, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    const-string v1, "/data/system/background_pulldown.png"

    invoke-static {v10, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->CopyImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_statusbar_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    const-string v0, "statusbar_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 389
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    :sswitch_2
    const-string v9, "tweaks_status_icon"

    .line 390
    const-string v7, "statusbar_icon"

    .line 391
    const-string v6, "status_icon.png"

    .line 392
    goto :goto_1

    .line 394
    :sswitch_3
    const-string v9, "tweaks_carrier_icon"

    .line 395
    const-string v7, "carrier_icon"

    .line 396
    const-string v6, "carrier_icon.png"

    goto :goto_1

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 481
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    .line 482
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    :cond_0
    const-string v5, "super_quick_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_auto_quick_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v3, v4

    .line 614
    :goto_1
    return v3

    .line 487
    :cond_2
    const-string v5, "h_icon_replace"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 488
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_h_icon"

    .line 489
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 488
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 490
    :cond_3
    const-string v5, "statusbar_custombg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 491
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    .line 492
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_customanim"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 495
    :cond_4
    invoke-direct {p0, v7}, Lcom/m0narx/tweaks/fragments/systemui;->showDialog(I)V

    goto :goto_1

    .line 499
    :cond_5
    const-string v5, "cm_brightness_control"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 500
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_cm_brightness_control"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 501
    :cond_6
    const-string v5, "recentapps_style"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 502
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_recentapps_style"

    .line 503
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 502
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 505
    :cond_7
    const-string v5, "statusbar_icon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 506
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    .line 507
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_status_icon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 509
    :cond_8
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v3}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 512
    :cond_9
    const-string v5, "carrier_icon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 513
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_a

    .line 514
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_carrier_icon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 516
    :cond_a
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v7}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Lcom/m0narx/tweaks/custompreferences/Prefs;Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 519
    :cond_b
    const-string v3, "pref_statusbar_caption"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 520
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_custom_statusbartext"

    .line 521
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 523
    :cond_c
    const-string v3, "widget_switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 524
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_widget_switch"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 525
    :cond_d
    const-string v3, "systemui_weather"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 526
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_weather"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 527
    :cond_e
    const-string v3, "systemui_notificationcount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 528
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_notificationcount"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 530
    :cond_f
    const-string v3, "systemui_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 531
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_volume"

    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 531
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 533
    :cond_10
    const-string v3, "systemui_shake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 534
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_shake"

    .line 535
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 534
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 536
    :cond_11
    const-string v3, "overlay_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 538
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 540
    .local v2, val:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_stock_eqs_overlay_color"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 543
    .end local v2           #val:Ljava/lang/Integer;
    :cond_12
    const-string v3, "heqs_size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 544
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_heqs_size"

    .line 545
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 544
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 546
    :cond_13
    const-string v3, "quick_pulldown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 547
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_quick_pulldown"

    .line 548
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 547
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 549
    :cond_14
    const-string v3, "horizontal_qs_setttings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 550
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_horizontal_qs"

    .line 551
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 550
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkHQS()V

    goto/16 :goto_0

    .line 553
    :cond_15
    const-string v3, "hide_qs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 554
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_qs"

    .line 555
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 554
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 556
    :cond_16
    const-string v3, "qs_style"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 557
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_qs_style"

    .line 558
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 557
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkQS()V

    goto/16 :goto_0

    .line 561
    :cond_17
    const-string v3, "eqs_autoclose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 562
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_eqs_autoclose"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 563
    :cond_18
    const-string v3, "neqs_columns_slider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 566
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v5, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    .line 567
    div-int/lit8 v5, v5, 0x1

    .line 566
    add-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_eqs_columns"

    .line 573
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 572
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 576
    .end local v2           #val:Ljava/lang/String;
    :cond_19
    const-string v3, "contacts_widget"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 577
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_notif_contact_widget"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkContactsWidget()V

    .line 579
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 581
    :cond_1a
    const-string v3, "signal_left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 582
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_signal_left"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 585
    :cond_1b
    const-string v3, "battery_left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 586
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_battery_left"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 589
    :cond_1c
    const-string v3, "hide_rammeter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 590
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_hide_rammeter"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 592
    :cond_1d
    const-string v3, "statusbar_doubletap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 593
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_statusbar_doubletap"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 595
    :cond_1e
    const-string v3, "notif_bgalpha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 596
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_notif_bgalpha"

    .line 597
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 596
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 600
    :cond_1f
    const-string v3, "systemui_dim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 601
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_systemui_dim"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 603
    :cond_20
    const-string v3, "eqs_singleflashtoggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 604
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_eqs_singleflashtoggle"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 606
    :cond_21
    const-string v3, "heqs_location"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 607
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_heqs_location"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 609
    :cond_22
    const-string v3, "status_bar_size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_status_bar_size"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 619
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "hide_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/fragments/systemui;->showDialog(I)V

    .line 644
    :cond_0
    :goto_0
    return v4

    .line 622
    :cond_1
    const-string v1, "systemui_weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/systemui;->mWeatherSelector:Lcom/m0narx/tweaks/dialogs/WeatherSelector;

    const-string v2, "tweaks_systemui_weatherloc"

    invoke-virtual {v1, v2, v4}, Lcom/m0narx/tweaks/dialogs/WeatherSelector;->showSelector(Ljava/lang/String;Z)V

    goto :goto_0

    .line 624
    :cond_2
    const-string v1, "quicklauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 625
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/QuickLaunch;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    :cond_3
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 627
    const-class v1, Lcom/m0narx/tweaks/fragments/systemui_theme;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_4
    const-string v1, "clock_options_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    const-class v1, Lcom/m0narx/tweaks/fragments/clock_settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_5
    const-string v1, "battery_options_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 631
    const-class v1, Lcom/m0narx/tweaks/fragments/battery_settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_6
    const-string v1, "statusbarcaption_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 633
    const-class v1, Lcom/m0narx/tweaks/fragments/systemui_caption;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_7
    const-string v1, "traffic_options_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 635
    const-class v1, Lcom/m0narx/tweaks/fragments/traffic_settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_8
    const-string v1, "contacts_widget_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const-class v1, Lcom/m0narx/tweaks/fragments/contacts_settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/systemui;->startFragmentActivity(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 792
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 794
    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/systemui;->updateHeader()V

    .line 796
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 802
    const-string v1, "neqs_columns_slider"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    sget v1, Lcom/m0narx/tweaks/fragments/systemui;->COL_MIN:I

    div-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, val:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 811
    .end local v0           #val:Ljava/lang/String;
    :cond_0
    const-string v1, "notif_bgalpha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 821
    :cond_1
    return-void
.end method

.method public onSettingsReset()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkQS()V

    .line 832
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->checkHQS()V

    .line 833
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->initSliders()V

    .line 835
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/systemui;->resetNotHandledPrefs()V

    .line 837
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public updateButtons()V
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 475
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/systemui;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 470
    return-void
.end method
