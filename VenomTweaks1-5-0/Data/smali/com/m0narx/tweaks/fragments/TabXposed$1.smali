.class Lcom/m0narx/tweaks/fragments/TabXposed$1;
.super Ljava/lang/Object;
.source "TabXposed.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/TabXposed;->onPrefClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$modulePref:Lcom/htc/preference/HtcPreference;

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/TabXposed;Landroid/content/Intent;Ljava/lang/String;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    iput-object p2, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$modulePref:Lcom/htc/preference/HtcPreference;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 110
    packed-switch p2, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    #getter for: Lcom/m0narx/tweaks/fragments/TabXposed;->moduleDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/m0narx/tweaks/fragments/TabXposed;->access$0(Lcom/m0narx/tweaks/fragments/TabXposed;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 137
    return-void

    .line 115
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/fragments/TabXposed;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragments/TabXposed;->mContext:Landroid/content/Context;

    const v5, 0x7f0a045e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 123
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, packageURI:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v3, uninstallIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/m0narx/tweaks/fragments/TabXposed;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    iget-object v4, v4, Lcom/m0narx/tweaks/fragments/TabXposed;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/m0narx/tweaks/widgets/Misc;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->this$0:Lcom/m0narx/tweaks/fragments/TabXposed;

    const-string v5, "xposed"

    invoke-virtual {v4, v5}, Lcom/m0narx/tweaks/fragments/TabXposed;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 131
    .local v2, screen:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v4, p0, Lcom/m0narx/tweaks/fragments/TabXposed$1;->val$modulePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
