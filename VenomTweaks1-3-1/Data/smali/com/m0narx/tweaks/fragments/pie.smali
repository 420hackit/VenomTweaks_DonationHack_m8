.class public Lcom/m0narx/tweaks/fragments/pie;
.super Lcom/m0narx/tweaks/custompreferences/Prefs;
.source "pie.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Pie",
        "Layout:Ljava/lang/Object;",
        ">",
        "Lcom/m0narx/tweaks/custompreferences/Prefs;"
    }
.end annotation


# instance fields
.field private final LMT_LINK_THREAD:Ljava/lang/String;

.field private final LMT_PAYPAL:Ljava/lang/String;

.field private conf:Lvenom/common/settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;-><init>()V

    .line 32
    const-string v0, "http://forum.xda-developers.com/showthread.php?t=1330150"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->LMT_LINK_THREAD:Ljava/lang/String;

    .line 33
    const-string v0, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9C5JKBHDM6QSE"

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->LMT_PAYPAL:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private SetupHeader()V
    .locals 3

    .prologue
    .line 339
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 340
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 341
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/fragments/pie;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/fragments/pie$1;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/fragments/pie$1;-><init>(Lcom/m0narx/tweaks/fragments/pie;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-void
.end method

.method private initSliders()V
    .locals 18

    .prologue
    .line 284
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieAreaX"

    const/16 v17, 0x14

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 285
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieAreaY"

    const/16 v17, 0x12c

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, height:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieInnerRadius"

    const/16 v17, 0x3c

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 288
    .local v2, innerRadius:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieOuterRadius"

    const/16 v17, 0x50

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 289
    .local v3, outerRadius:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieOutlineSize"

    const/16 v17, 0x3

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 291
    .local v4, outlineSize:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieLongpress"

    const/16 v17, 0xc8

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 292
    .local v13, timeLongpress:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v16, "PieAnimation"

    const/16 v17, 0x50

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 295
    .local v12, timeAnimation:I
    const-string v15, "pie_area_width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 296
    .local v7, pie_area_width:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0x12c

    invoke-virtual {v7, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 297
    invoke-virtual {v7, v14}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 298
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    const-string v15, "pie_area_height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 302
    .local v6, pie_area_height:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0x7d0

    invoke-virtual {v6, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 303
    invoke-virtual {v6, v1}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 304
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    const-string v15, "pie_radius_inner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 308
    .local v9, pie_radius_inner:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0xc8

    invoke-virtual {v9, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 309
    invoke-virtual {v9, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 310
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    const-string v15, "pie_radius_outer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 314
    .local v10, pie_radius_outer:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0xfa

    invoke-virtual {v10, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 315
    invoke-virtual {v10, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 316
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    const-string v15, "pie_size_outline"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 320
    .local v11, pie_size_outline:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0xa

    invoke-virtual {v11, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 321
    invoke-virtual {v11, v4}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 322
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    const-string v15, "pie_longpress_time_pref"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 326
    .local v8, pie_longpress_time_pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0x1388

    invoke-virtual {v8, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 327
    invoke-virtual {v8, v13}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 328
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    const-string v15, "pie_animation_time_pref"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .line 332
    .local v5, pie_animation_time_pref:Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;
    const/16 v15, 0xfa0

    invoke-virtual {v5, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setMax(I)V

    .line 333
    const/16 v15, 0xc8

    invoke-virtual {v5, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 334
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method private resetMappings()V
    .locals 4

    .prologue
    .line 164
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 173
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PieItem"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PieItem"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v3, ""

    .line 167
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setOutlineSize()V
    .locals 3

    .prologue
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_pie_use_custom_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "pie_size_outline"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "pie_size_outline"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setPieActive()V
    .locals 4

    .prologue
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_use_pie"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "pie_remapping"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 260
    const-string v0, "pie_activation"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 261
    const-string v0, "pie_appearance"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 262
    const-string v0, "misc"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 263
    const-string v0, "pie_start"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 274
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v0, "pie_remapping"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 267
    const-string v0, "pie_activation"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 268
    const-string v0, "pie_appearance"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 269
    const-string v0, "misc"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 270
    const-string v0, "pie_start"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V
    .locals 1
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 354
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    move-object v0, p1

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    invoke-virtual {v0, p2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 355
    check-cast p1, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .end local p1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method

.method private showTutorial()V
    .locals 3

    .prologue
    .line 158
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/PieTutorial;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private startPie()V
    .locals 4

    .prologue
    .line 108
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v2, "LMTExternalConfig"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lmt"

    const-string v2, "com.android.lmt.TouchService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    const v2, 0x7f0a023b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    return-void
.end method

.method private stopPie()V
    .locals 4

    .prologue
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v2, "LMTExternalConfig"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lmt"

    const-string v2, "com.android.lmt.TouchService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 126
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    const v2, 0x7f0a023a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method


# virtual methods
.method public getXMLFile()I
    .locals 1

    .prologue
    .line 360
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const v0, 0x7f040010

    return v0
.end method

.method public getXMLFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const-string v0, "pie"

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/16 v8, 0x50

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->conf:Lvenom/common/settings;

    .line 202
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->SetupHeader()V

    .line 204
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lmt_info"

    aput-object v1, v0, v4

    const-string v1, "pie_start"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "pie_colors"

    aput-object v2, v0, v1

    .line 205
    const-string v1, "pie_info_colors"

    aput-object v1, v0, v6

    const-string v1, "pie_blacklist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pie_level1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pie_level2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 206
    const-string v2, "pie_mapping_reset"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pie_tut"

    aput-object v2, v0, v1

    .line 204
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/fragments/pie;->OnClickListener([Ljava/lang/String;)V

    .line 208
    const-string v0, "use_pie"

    const-string v1, "tweaks_use_pie"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 210
    const-string v0, "pie_position"

    const-string v1, "PiePos"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v0, "pie_area_width"

    const-string v1, "pie_area_width"

    .line 215
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 214
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 216
    const-string v0, "pie_area_height"

    const-string v1, ""

    .line 217
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 216
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 219
    const-string v0, "pie_gravity"

    const-string v1, "PieAreaGravity"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v0, "pie_radius_inner"

    const-string v1, ""

    .line 222
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 221
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 223
    const-string v0, "pie_radius_outer"

    const-string v1, ""

    .line 224
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 223
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 225
    const-string v0, "pie_size_outline"

    const-string v1, ""

    .line 226
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 225
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 228
    const-string v0, "pie_app_images"

    const-string v1, "PieShowAppImages"

    const-string v2, "2"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "pie_user_images"

    const-string v1, "PieUserImageScaling"

    const-string v2, "2"

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "pie_status_info"

    const-string v1, "PieShowStatusInfos"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v0, "pie_status_info_font"

    const-string v1, "PieFont"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "pie_disable_onkeyboard"

    const-string v1, "KeyboardStateListener"

    .line 235
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 234
    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    const-string v0, "pie_longpress_time_pref"

    const-string v1, ""

    .line 238
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 237
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 239
    const-string v0, "pie_animation_time_pref"

    const-string v1, ""

    .line 240
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 239
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 242
    const-string v0, "pie_feedback"

    const-string v1, "PieVibrate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/fragments/pie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->initSliders()V

    .line 246
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setOutlineSize()V

    .line 248
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setPieActive()V

    .line 250
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "init_pie_tutorial"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->showTutorial()V

    .line 252
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "init_pie_tutorial"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :cond_0
    return-void
.end method

.method public onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, PKey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "true"

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 40
    .local v1, bvar:Ljava/lang/Integer;
    const-string v2, "use_pie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_use_pie"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "Autostart"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "TSMode"

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/pie;->conf:Lvenom/common/settings;

    iget v5, v5, Lvenom/common/settings;->PIE_TOUCHSCREEN_MODE:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setPieActive()V

    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->startPie()V

    .line 103
    :goto_1
    return v3

    .end local v1           #bvar:Ljava/lang/Integer;
    :cond_0
    move v2, v4

    .line 38
    goto :goto_0

    .line 51
    .restart local v1       #bvar:Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->stopPie()V

    goto :goto_1

    .line 54
    :cond_2
    const-string v2, "pie_position"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PiePos"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    goto :goto_1

    .line 56
    :cond_4
    const-string v2, "pie_area_width"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieAreaX"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_2

    .line 59
    :cond_5
    const-string v2, "pie_area_height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieAreaY"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_2

    .line 62
    :cond_6
    const-string v2, "pie_gravity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieAreaGravity"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 64
    :cond_7
    const-string v2, "pie_radius_inner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 65
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieInnerRadius"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto/16 :goto_2

    .line 67
    :cond_8
    const-string v2, "pie_radius_outer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 68
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieOuterRadius"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto/16 :goto_2

    .line 70
    :cond_9
    const-string v2, "pie_size_outline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 71
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieOutlineSize"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto/16 :goto_2

    .line 73
    :cond_a
    const-string v2, "pie_app_images"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/pie;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move v3, v4

    .line 75
    goto/16 :goto_1

    .line 77
    :cond_b
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieShowAppImages"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 78
    :cond_c
    const-string v2, "pie_user_images"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/fragments/pie;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v3, v4

    .line 80
    goto/16 :goto_1

    .line 82
    :cond_d
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieUserImageScaling"

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 82
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 84
    :cond_e
    const-string v2, "pie_status_info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 85
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieShowStatusInfos"

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 85
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 87
    :cond_f
    const-string v2, "pie_status_info_font"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieFont"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 89
    :cond_10
    const-string v2, "pie_longpress_time_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 90
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieLongpress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto/16 :goto_2

    .line 92
    :cond_11
    const-string v2, "pie_animation_time_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 93
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieAnimation"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/m0narx/tweaks/fragments/pie;->setSliderByPreference(Lcom/htc/preference/HtcPreference;I)V

    goto/16 :goto_2

    .line 95
    :cond_12
    const-string v2, "pie_feedback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 96
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "PieVibrate"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 97
    :cond_13
    const-string v2, "pie_disable_onkeyboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "KeyboardStateListener"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onPrefClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 133
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "lmt_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 136
    const-string v3, "http://forum.xda-developers.com/showthread.php?t=1330150"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_1
    const-string v1, "pie_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->startPie()V

    goto :goto_0

    .line 139
    :cond_2
    const-string v1, "pie_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    const-class v1, Lcom/m0narx/tweaks/fragments/pie_colors;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v1, "pie_info_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    const-class v1, Lcom/m0narx/tweaks/fragments/pie_info_colors;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_4
    const-string v1, "pie_blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    const-class v3, Lcom/m0narx/tweaks/fragmentsextensions/PieBlacklist;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_5
    const-string v1, "pie_level1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    const-class v1, Lcom/m0narx/tweaks/fragments/pie_level_one;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_6
    const-string v1, "pie_level2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 148
    const-class v1, Lcom/m0narx/tweaks/fragments/pie_level_two;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/fragments/pie;->startFragmentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_7
    const-string v1, "pie_mapping_reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->resetMappings()V

    goto :goto_0

    .line 151
    :cond_8
    const-string v1, "pie_tut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->showTutorial()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 176
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    invoke-super {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->SetupHeader()V

    .line 179
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setOutlineSize()V

    .line 180
    return-void
.end method

.method public onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 1
    .parameter "preference"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 370
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method public onSettingsReset()V
    .locals 1

    .prologue
    .line 375
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->initSliders()V

    .line 376
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setOutlineSize()V

    .line 377
    invoke-direct {p0}, Lcom/m0narx/tweaks/fragments/pie;->setPieActive()V

    .line 379
    iget-object v0, p0, Lcom/m0narx/tweaks/fragments/pie;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->restartPieService(Landroid/content/Context;)V

    .line 381
    return-void
.end method

.method public setHeader()V
    .locals 0

    .prologue
    .line 195
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    return-void
.end method

.method public updateButtons()V
    .locals 0

    .prologue
    .line 189
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    return-void
.end method

.method public updateHeader()V
    .locals 0

    .prologue
    .line 184
    .local p0, this:Lcom/m0narx/tweaks/fragments/pie;,"Lcom/m0narx/tweaks/fragments/pie<TPieLayout;>;"
    return-void
.end method
