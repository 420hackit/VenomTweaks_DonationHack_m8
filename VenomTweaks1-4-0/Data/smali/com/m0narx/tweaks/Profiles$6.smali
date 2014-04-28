.class Lcom/m0narx/tweaks/Profiles$6;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles;->restartPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/Profiles;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/Profiles;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$6;->this$0:Lcom/m0narx/tweaks/Profiles;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 205
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/Profiles$6;->this$0:Lcom/m0narx/tweaks/Profiles;

    #getter for: Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/m0narx/tweaks/Profiles;->access$2(Lcom/m0narx/tweaks/Profiles;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 208
    const-string v0, "pkill com.m0narx.tweaks"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method
