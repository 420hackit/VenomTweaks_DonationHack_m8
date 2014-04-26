.class Lcom/m0narx/tweaks/fragments/systemui$2;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/systemui;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 152
    .local v1, TweakName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragments/systemui;->updateButtons()V

    .line 229
    :goto_1
    return-void

    .line 157
    :pswitch_0
    const-string v1, "tweaks_show_alarm_icon"

    .line 158
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 161
    :pswitch_1
    const-string v1, "tweaks_show_gps_icon"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_2
    const-string v1, "tweaks_show_headset_icon"

    .line 165
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 168
    :pswitch_3
    const-string v1, "tweaks_show_volume_icons"

    .line 169
    goto :goto_0

    .line 171
    :pswitch_4
    const-string v1, "tweaks_show_wifi_icon"

    .line 172
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 175
    :pswitch_5
    const-string v1, "tweaks_show_bluetooth_icon"

    .line 176
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 179
    :pswitch_6
    const-string v1, "tweaks_show_adb_icon"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setprop persist.adb.notify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 185
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 186
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 188
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 191
    :pswitch_7
    const-string v1, "tweaks_show_signal_icon"

    .line 192
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 195
    :pswitch_8
    const-string v1, "tweaks_show_data_icon"

    .line 196
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 199
    :pswitch_9
    const-string v1, "tweaks_hide_keyboardicon"

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 200
    goto :goto_2

    .line 203
    :pswitch_a
    const-string v1, "tweaks_hide_beats_icon"

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 205
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 204
    goto :goto_3

    .line 207
    :pswitch_b
    const-string v1, "tweaks_hide_usbicon"

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    sget-object v2, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 212
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->CheckButtonState(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 213
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    sget-object v3, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/fragments/systemui;->SetupHeader(Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    .line 215
    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/systemui$2;->this$0:Lcom/m0narx/tweaks/fragments/systemui;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragments/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_3
    move v2, v3

    .line 208
    goto :goto_4

    .line 218
    :pswitch_c
    const-string v1, "tweaks_show_sprintgps_icon"

    .line 219
    goto/16 :goto_0

    .line 222
    :pswitch_d
    const-string v1, "tweaks_hide_wifi_calling"

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto :goto_5

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
