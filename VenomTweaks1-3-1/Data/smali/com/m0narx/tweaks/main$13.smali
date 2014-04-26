.class Lcom/m0narx/tweaks/main$13;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/main;->setSlidingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/main;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1037
    iget-object v1, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v1, v1, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1038
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v4, v1, Lcom/m0narx/tweaks/main;->dbh:Lcom/m0narx/tweaks/provider/DB;

    const-string v5, "force_english"

    iget-object v1, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/m0narx/tweaks/main;->access$7(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v0, v5, v1}, Lcom/m0narx/tweaks/provider/DB;->setIntSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 1039
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1041
    iget-object v1, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v4, p0, Lcom/m0narx/tweaks/main$13;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->forceEnglish:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/m0narx/tweaks/main;->access$7(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    #calls: Lcom/m0narx/tweaks/main;->setLocale(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/m0narx/tweaks/main;->access$8(Lcom/m0narx/tweaks/main;ZZ)V

    .line 1043
    return-void

    :cond_0
    move v1, v3

    .line 1038
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1041
    goto :goto_1
.end method
