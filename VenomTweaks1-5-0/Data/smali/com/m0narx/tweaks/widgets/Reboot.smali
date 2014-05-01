.class public Lcom/m0narx/tweaks/widgets/Reboot;
.super Ljava/lang/Object;
.source "Reboot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/Reboot$Action;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I

.field private static is_need_full_phone_restart:Z

.field private static is_need_on_change_dialog:Z

.field private static is_need_phone_restart:Z

.field private static is_need_sense_restart:Z

.field private static is_need_systemui_restart:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->values()[Lcom/m0narx/tweaks/widgets/Reboot$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    .line 19
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    .line 20
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    .line 21
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 3
    .parameter "ACTION"

    .prologue
    const/4 v2, 0x0

    .line 81
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    .line 82
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 84
    :pswitch_0
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    goto :goto_0

    .line 87
    :pswitch_1
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    goto :goto_0

    .line 90
    :pswitch_2
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    .line 91
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    .line 94
    :pswitch_3
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    goto :goto_0

    .line 97
    :pswitch_4
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getButtonNameRes(Lcom/m0narx/tweaks/widgets/Reboot$Action;)I
    .locals 2
    .parameter "ACTION"

    .prologue
    .line 25
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 28
    :pswitch_1
    const v0, 0x7f0a001a

    goto :goto_0

    .line 30
    :pswitch_2
    const v0, 0x7f0a0016

    goto :goto_0

    .line 32
    :pswitch_3
    const v0, 0x7f0a0015

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getHeaderMsg(Lcom/m0narx/tweaks/widgets/Reboot$Action;)I
    .locals 2
    .parameter "ACTION"

    .prologue
    .line 42
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    const v0, 0x7f0a000d

    goto :goto_0

    .line 46
    :pswitch_1
    const v0, 0x7f0a000c

    goto :goto_0

    .line 48
    :pswitch_2
    const v0, 0x7f0a000e

    goto :goto_0

    .line 50
    :pswitch_3
    const v0, 0x7f0a000a

    goto :goto_0

    .line 52
    :pswitch_4
    const v0, 0x7f0a000b

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static is(Lcom/m0narx/tweaks/widgets/Reboot$Action;)Z
    .locals 4
    .parameter "ACTION"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    sput-boolean v1, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    .line 60
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 62
    :pswitch_0
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 65
    :pswitch_1
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 68
    :pswitch_2
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 71
    :pswitch_3
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 74
    :pswitch_4
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static perform(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 3
    .parameter "context"
    .parameter "action"

    .prologue
    .line 142
    const-string v0, ""

    .line 143
    .local v0, Command:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    const v1, 0x7f0a0080

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 163
    :goto_1
    return-void

    .line 145
    :pswitch_0
    const-string v0, "setprop ctl.restart zygote"

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    const-string v0, "pkill com.htc.launcher"

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    const-string v0, "pkill com.android.systemui"

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    const-string v0, "pkill com.htc.launcher;pkill com.android.systemui;"

    .line 155
    goto :goto_0

    .line 157
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.venom.action.FULL_REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V
    .locals 3
    .parameter "ACTION"

    .prologue
    const/4 v2, 0x1

    .line 103
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    .line 104
    invoke-static {}, Lcom/m0narx/tweaks/widgets/Reboot;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 106
    :pswitch_0
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    goto :goto_0

    .line 109
    :pswitch_1
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    goto :goto_0

    .line 112
    :pswitch_2
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    .line 113
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    .line 116
    :pswitch_3
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    goto :goto_0

    .line 119
    :pswitch_4
    sput-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    if-eqz v0, :cond_0

    .line 126
    sput-boolean v1, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    .line 127
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {p0, v2, v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {p0, v2, v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    goto :goto_0

    .line 131
    :cond_2
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v0, :cond_3

    .line 132
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI_N_SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {p0, v2, v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    goto :goto_0

    .line 133
    :cond_3
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v0, :cond_4

    .line 134
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {p0, v2, v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    goto :goto_0

    .line 135
    :cond_4
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {p0, v2, v0, v1}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V

    goto :goto_0
.end method

.method public static updateLockScreen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method
