.class public abstract Lcom/m0narx/tweaks/custompreferences/Prefs;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "Prefs.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;,
        Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;,
        Lcom/m0narx/tweaks/custompreferences/Prefs$prefsCategory;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType:[I


# instance fields
.field public Cr:Landroid/content/ContentResolver;

.field public RESULT_OK:I

.field public cust:Lcom/m0narx/tweaks/widgets/Customization;

.field private mAutoSummaryLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mDefaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs;->$SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->values()[Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Color:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ColorNoAlpha:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBar:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarCPU:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->SeekBarWithRevert:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs;->$SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->RESULT_OK:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mAutoSummaryLists:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/custompreferences/Prefs;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->performResetToDefaults()V

    return-void
.end method

.method private getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method private performResetToDefaults()V
    .locals 6

    .prologue
    .line 107
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onSettingsReset()V

    .line 158
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    .line 159
    return-void

    .line 107
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    .line 108
    .local v0, def:Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 109
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-nez v1, :cond_2

    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v2, v4}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_2
    invoke-static {}, Lcom/m0narx/tweaks/custompreferences/Prefs;->$SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType()[I

    move-result-object v2

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Type:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 114
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_1
    check-cast v1, Lcom/htc/preference/HtcSwitchPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 115
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v5, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 119
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_2
    check-cast v1, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setCurrentColor(I)V

    .line 120
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 123
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_3
    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_4
    move-object v2, v1

    .line 127
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    move-object v2, v1

    .line 128
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 136
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_5
    check-cast v1, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    .line 137
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 140
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_6
    check-cast v1, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    .line 141
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 144
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_7
    check-cast v1, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    .line 145
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 148
    .restart local v1       #pref:Lcom/htc/preference/HtcPreference;
    :pswitch_8
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 151
    :pswitch_9
    iget-object v2, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    iget-object v4, v0, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->Tweak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;->getInt()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, line:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x200

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 586
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 589
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 585
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .line 586
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 587
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    .end local v0           #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 519
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 520
    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Reboot;->is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    .line 522
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Reboot;->getHeaderMsg(Lcom/m0narx/tweaks/widgets/Reboot$Action;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 523
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v2, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v3, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v2, p1, v3, p2, p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p3

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 469
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-nez v0, :cond_1

    .line 470
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnChangeListener: Can\'t find HtcPreference "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 474
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V
    .locals 5
    .parameter "name"
    .parameter "TweakName"
    .parameter "type"
    .parameter "Default"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v3, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, p1, p3, p2, v4}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 417
    .local v0, defaultValue:I
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 419
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-nez v1, :cond_1

    .line 420
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnChangeListener: Can\'t find HtcPreference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-static {}, Lcom/m0narx/tweaks/custompreferences/Prefs;->$SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 456
    :goto_1
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {p3, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 457
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mAutoSummaryLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_0
    move-object v2, v1

    .line 426
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setCurrentColor(I)V

    move-object v2, v1

    .line 427
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    move-object v2, v1

    .line 428
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setRevertToValue(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    move-object v2, v1

    .line 432
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setCurrentColor(I)V

    move-object v2, v1

    .line 433
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    move-object v2, v1

    .line 434
    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setRevertToValue(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    move-object v2, v1

    .line 438
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    move-object v2, v1

    .line 441
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setProgress(I)V

    move-object v2, v1

    .line 442
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    goto :goto_1

    :pswitch_4
    move-object v2, v1

    .line 445
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setProgress(I)V

    move-object v2, v1

    .line 446
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarCPUPreference;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    goto :goto_1

    :pswitch_5
    move-object v2, v1

    .line 449
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setProgress(I)V

    move-object v2, v1

    .line 450
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setSeekBarCallback(Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceCallback;)V

    move-object v2, v1

    .line 451
    check-cast v2, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreferenceWithRevert;->setRevertToValue(I)V

    goto/16 :goto_1

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "TweakName"
    .parameter "type"
    .parameter "Default"

    .prologue
    .line 498
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v3, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    invoke-direct {v3, p1, p3, p2, p4}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 501
    .local v1, pref:Lcom/htc/preference/HtcListPreference;
    if-nez v1, :cond_0

    .line 502
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnChangeListener: Can\'t find HtcListPreference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 506
    .local v0, DefSet:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object p4, v0

    .line 508
    :cond_2
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {p3, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    invoke-virtual {v1, p4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 515
    :cond_3
    :goto_1
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 510
    :cond_4
    sget-object v2, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ListWithAutoSummary:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {p3, v2}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    invoke-virtual {v1, p4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mAutoSummaryLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 355
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v3, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v3, p1, v4, p2, p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 357
    .local v0, Chk:Lcom/htc/preference/HtcSwitchPreference;
    if-nez v0, :cond_0

    .line 358
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnChangeListener: Can\'t find HtcCheckBoxPreference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 363
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 365
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 366
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 367
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 369
    .end local v1           #Value:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 370
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcSwitchPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 404
    sget-object v0, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->List:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/m0narx/tweaks/custompreferences/Prefs;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V

    .line 405
    return-void
.end method

.method public OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 337
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v3, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->Input:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v3, p1, v4, p2, p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 339
    .local v1, input:Lcom/htc/preference/HtcEditTextPreference;
    if-nez v1, :cond_0

    .line 340
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnChangeListener: Can\'t find HtcEditTextPreference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, DefSet:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object p3, v0

    .line 345
    :cond_1
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public OnChangeListenerGlobal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 374
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v3, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    sget-object v4, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->CheckBox:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v3, p1, v4, p2, p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSwitchPreference;

    .line 376
    .local v0, Chk:Lcom/htc/preference/HtcSwitchPreference;
    if-nez v0, :cond_0

    .line 377
    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnChangeListener: Can\'t find HtcCheckBoxPreference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 382
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 384
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 385
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 386
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 388
    .end local v1           #Value:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 389
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcSwitchPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public OnChangeListenerSecure(Ljava/lang/String;Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/Integer;)V
    .locals 4
    .parameter "name"
    .parameter "TweakName"
    .parameter "type"
    .parameter "Default"

    .prologue
    .line 480
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 481
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 482
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-nez v0, :cond_1

    .line 483
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnChangeListener: Can\'t find HtcPreference "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {}, Lcom/m0narx/tweaks/custompreferences/Prefs;->$SWITCH_TABLE$com$m0narx$tweaks$custompreferences$Prefs$PreferenceType()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 494
    :goto_1
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_0
    move-object v1, v0

    .line 489
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs OnClickListener([Ljava/lang/String;)V
    .locals 7
    .parameter "names"

    .prologue
    .line 319
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 327
    return-void

    .line 319
    :cond_0
    aget-object v0, p1, v2

    .line 320
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 321
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 319
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    const-string v4, "m0narX_tweaks"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OnClickListener: Can\'t find preference "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 530
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 531
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/m0narx/tweaks/widgets/Reboot;->getButtonNameRes(Lcom/m0narx/tweaks/widgets/Reboot$Action;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/custompreferences/Prefs$3;

    invoke-direct {v1, p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs$3;-><init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 540
    return-void
.end method

.method public autoUpdateSummary()V
    .locals 4

    .prologue
    .line 231
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mAutoSummaryLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    return-void

    .line 231
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 233
    .local v1, pref:Lcom/htc/preference/HtcListPreference;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enable(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pref"
    .parameter "state"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 185
    .local v0, p:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableBackButton(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "ab"

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 280
    new-instance v0, Lcom/m0narx/tweaks/custompreferences/Prefs$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/custompreferences/Prefs$2;-><init>(Lcom/m0narx/tweaks/custompreferences/Prefs;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getSeekBarProgress(Ljava/lang/String;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 213
    .local v0, p:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    check-cast v0, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;

    .end local v0           #p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/m0narx/tweaks/custompreferences/SeekBarPreference;->getProgress()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v1

    .line 218
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getXMLFile()I
.end method

.method public abstract getXMLFileName()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 566
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 567
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    const v3, 0x7f0a043e

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getXMLFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/m0narx/tweaks/widgets/Customization;-><init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    .line 75
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->Cr:Landroid/content/ContentResolver;

    .line 78
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->setHeader()V

    .line 80
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getXMLFile()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateHeader()V

    .line 83
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    .line 85
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->init()V

    .line 87
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/Customization;->loadCustomization()Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    .line 88
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Customization;->getDefaults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 59
    const/16 v0, 0x66

    const v1, 0x7f0a0300

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parentView"
    .parameter "args"

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, view:Landroid/view/View;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->resetToDefaults()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end method

.method public abstract onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onPrefChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    .line 242
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mAutoSummaryLists:Ljava/util/List;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 244
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    move-object v1, p1

    .line 245
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    .line 249
    :cond_1
    return v0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 255
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateButtons()V

    .line 258
    :cond_0
    return v0
.end method

.method public onProgressChanged(Lcom/htc/preference/HtcPreference;I)V
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs;->onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 311
    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->updateHeader()V

    .line 312
    return-void
.end method

.method public abstract onSeekBarSlide(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
.end method

.method public abstract onSettingsReset()V
.end method

.method public reloadCustomization()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getXMLFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/m0narx/tweaks/widgets/Customization;-><init>(Lcom/m0narx/tweaks/custompreferences/Prefs;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    .line 162
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/Customization;->loadCustomization()Lcom/m0narx/tweaks/widgets/Customization$ScreensParams;

    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->cust:Lcom/m0narx/tweaks/widgets/Customization;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Customization;->getDefaults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-void
.end method

.method public resetToDefaults()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 94
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 95
    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 96
    const v1, 0x7f0a0056

    .line 97
    new-instance v2, Lcom/m0narx/tweaks/custompreferences/Prefs$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/custompreferences/Prefs$1;-><init>(Lcom/m0narx/tweaks/custompreferences/Prefs;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 102
    const v1, 0x7f0a001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 104
    return-void
.end method

.method public returnTime(I)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 550
    if-gez p1, :cond_0

    .line 551
    const-string v4, ""

    .line 561
    :goto_0
    return-object v4

    .line 554
    :cond_0
    div-int/lit8 v2, p1, 0x3c

    .line 555
    .local v2, hr:I
    rem-int/lit8 v3, p1, 0x3c

    .line 557
    .local v3, mn:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 558
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 559
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 560
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 561
    .local v1, date:Ljava/util/Date;
    iget-object v4, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public setActionHtcBarText(I)Lcom/htc/widget/ActionBarContainer;
    .locals 5
    .parameter "TextResID"

    .prologue
    .line 299
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 300
    .local v1, abExt:Lcom/htc/widget/ActionBarExt;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 301
    new-instance v2, Lcom/htc/widget/ActionBarText;

    iget-object v3, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, actionbartext:Lcom/htc/widget/ActionBarText;
    invoke-virtual {v2, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 303
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 304
    .local v0, ab:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->removeAllViews()V

    .line 305
    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 306
    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v1, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    const-string v2, ""

    sget-object v3, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneInt:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tweak"
    .parameter "value"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mDefaults:Ljava/util/List;

    new-instance v1, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;

    const-string v2, ""

    sget-object v3, Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;->NoneString:Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/m0narx/tweaks/custompreferences/Prefs$DefaultValue;-><init>(Ljava/lang/String;Lcom/m0narx/tweaks/custompreferences/Prefs$PreferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public setDependency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "fromPref"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 195
    .local v0, p:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract setHeader()V
.end method

.method public setSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "summary"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/custompreferences/Prefs;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 204
    .local v0, p:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public startFragmentActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/custompreferences/Prefs;->mContext:Landroid/content/Context;

    const-class v2, Lcom/m0narx/tweaks/fragmentsextensions/FragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/custompreferences/Prefs;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public abstract updateButtons()V
.end method

.method public abstract updateHeader()V
.end method
