.class Lcom/m0narx/tweaks/Profiles$2;
.super Ljava/lang/Object;
.source "Profiles.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/Profiles;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    #getter for: Lcom/m0narx/tweaks/Profiles;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/m0narx/tweaks/Profiles;->access$2(Lcom/m0narx/tweaks/Profiles;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 114
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    #getter for: Lcom/m0narx/tweaks/Profiles;->restartMain:Z
    invoke-static {v1}, Lcom/m0narx/tweaks/Profiles;->access$3(Lcom/m0narx/tweaks/Profiles;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    const-class v2, Lcom/m0narx/tweaks/main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/Profiles;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/Profiles;->finish()V

    .line 121
    .end local v0           #myIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/Profiles$2;->this$0:Lcom/m0narx/tweaks/Profiles;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/Profiles;->finish()V

    goto :goto_0
.end method
