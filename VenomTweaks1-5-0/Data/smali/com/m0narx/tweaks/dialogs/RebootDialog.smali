.class public Lcom/m0narx/tweaks/dialogs/RebootDialog;
.super Ljava/lang/Object;
.source "RebootDialog.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/m0narx/tweaks/dialogs/RebootDialog;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I

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
    sput-object v0, Lcom/m0narx/tweaks/dialogs/RebootDialog;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "msgID"

    .prologue
    .line 72
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 74
    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 76
    const v1, 0x7f0a0056

    .line 77
    new-instance v2, Lcom/m0narx/tweaks/dialogs/RebootDialog$3;

    invoke-direct {v2}, Lcom/m0narx/tweaks/dialogs/RebootDialog$3;-><init>()V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 81
    return-void
.end method

.method public static progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;
    .locals 3
    .parameter "mContext"
    .parameter "initStringID"

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 66
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 67
    return-object v0
.end method

.method public static restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/custompreferences/Prefs;Lcom/m0narx/tweaks/widgets/Reboot$Action;I)V
    .locals 4
    .parameter "context"
    .parameter "pref"
    .parameter "Action"
    .parameter "HeaderMessageRes"

    .prologue
    .line 17
    invoke-static {}, Lcom/m0narx/tweaks/dialogs/RebootDialog;->$SWITCH_TABLE$com$m0narx$tweaks$widgets$Reboot$Action()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/m0narx/tweaks/widgets/Reboot$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    .line 37
    .local v0, MessageRes:I
    :goto_0
    const-string v1, "m0narX_tweaks"

    const-string v2, "Show restart dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 40
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 42
    const v2, 0x7f0a0056

    .line 43
    new-instance v3, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/m0narx/tweaks/dialogs/RebootDialog$1;-><init>(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;ILcom/m0narx/tweaks/custompreferences/Prefs;)V

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 50
    const v2, 0x7f0a001d

    .line 51
    new-instance v3, Lcom/m0narx/tweaks/dialogs/RebootDialog$2;

    invoke-direct {v3, p2, p3, p1}, Lcom/m0narx/tweaks/dialogs/RebootDialog$2;-><init>(Lcom/m0narx/tweaks/widgets/Reboot$Action;ILcom/m0narx/tweaks/custompreferences/Prefs;)V

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 58
    return-void

    .line 19
    .end local v0           #MessageRes:I
    :pswitch_0
    const v0, 0x7f0a0005

    .line 20
    .restart local v0       #MessageRes:I
    goto :goto_0

    .line 22
    .end local v0           #MessageRes:I
    :pswitch_1
    const v0, 0x7f0a0006

    .line 23
    .restart local v0       #MessageRes:I
    goto :goto_0

    .line 25
    .end local v0           #MessageRes:I
    :pswitch_2
    const v0, 0x7f0a0007

    .line 26
    .restart local v0       #MessageRes:I
    goto :goto_0

    .line 28
    .end local v0           #MessageRes:I
    :pswitch_3
    const v0, 0x7f0a0009

    .line 29
    .restart local v0       #MessageRes:I
    goto :goto_0

    .line 31
    .end local v0           #MessageRes:I
    :pswitch_4
    const v0, 0x7f0a0008

    .line 32
    .restart local v0       #MessageRes:I
    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
