.class Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings$1;
.super Ljava/lang/Object;
.source "TabMiscQuietHours_settings.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 4
    .parameter "arg0"
    .parameter "hour"
    .parameter "min"
    .parameter "arg3"

    .prologue
    .line 128
    mul-int/lit8 v1, p2, 0x3c

    add-int v0, p3, v1

    .line 130
    .local v0, time:I
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;->Cr:Landroid/content/ContentResolver;

    .line 131
    const-string v2, "tweaks_quiet_hours_start"

    .line 130
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v1, p0, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    iget-object v2, p0, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings$1;->this$0:Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;

    invoke-virtual {v2, v0}, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;->returnTime(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;->SetQuietHoursSummary(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;->access$0(Lcom/m0narx/tweaks/fragments/TabMiscQuietHours_settings;Ljava/lang/String;I)V

    .line 135
    return-void
.end method
