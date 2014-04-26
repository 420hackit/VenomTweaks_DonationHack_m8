.class Lcom/m0narx/tweaks/fragments/about$1;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/fragments/about;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragments/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragments/about;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, 0x4e20

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 89
    .local v1, lClickTimestamp:J
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3, v4}, Lcom/m0narx/tweaks/fragments/about;->access$1(Lcom/m0narx/tweaks/fragments/about;I)V

    .line 91
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v3

    if-ne v3, v13, :cond_0

    .line 92
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Ahhhhhhhhhhhhh... :o"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 96
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 97
    const-string v4, "Hmmmmm, is there something?"

    .line 96
    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 101
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 102
    const-string v4, "..you really think there is?"

    .line 101
    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 106
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Not giving up hah?"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3, v4, v5}, Lcom/m0narx/tweaks/fragments/about;->access$3(Lcom/m0narx/tweaks/fragments/about;J)V

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_5

    .line 116
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3, v1, v2}, Lcom/m0narx/tweaks/fragments/about;->access$3(Lcom/m0narx/tweaks/fragments/about;J)V

    .line 119
    :cond_5
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$0(Lcom/m0narx/tweaks/fragments/about;)I

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_7

    .line 121
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v3

    sub-long v3, v1, v3

    cmp-long v3, v3, v11

    if-lez v3, :cond_6

    .line 122
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3, v9, v10}, Lcom/m0narx/tweaks/fragments/about;->access$3(Lcom/m0narx/tweaks/fragments/about;J)V

    .line 123
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3, v8}, Lcom/m0narx/tweaks/fragments/about;->access$1(Lcom/m0narx/tweaks/fragments/about;I)V

    .line 137
    :cond_6
    :goto_0
    return-void

    .line 125
    :cond_7
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v3

    sub-long v3, v1, v3

    cmp-long v3, v3, v11

    if-gez v3, :cond_8

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/m0narx/tweaks/EasterEgg;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3, v0}, Lcom/m0narx/tweaks/fragments/about;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/fragments/about;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "You made it! :D"

    invoke-static {v3, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #getter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3}, Lcom/m0narx/tweaks/fragments/about;->access$2(Lcom/m0narx/tweaks/fragments/about;)J

    move-result-wide v3

    sub-long v3, v1, v3

    cmp-long v3, v3, v11

    if-lez v3, :cond_6

    .line 133
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggStart:J
    invoke-static {v3, v9, v10}, Lcom/m0narx/tweaks/fragments/about;->access$3(Lcom/m0narx/tweaks/fragments/about;J)V

    .line 134
    iget-object v3, p0, Lcom/m0narx/tweaks/fragments/about$1;->this$0:Lcom/m0narx/tweaks/fragments/about;

    #setter for: Lcom/m0narx/tweaks/fragments/about;->mEasterEggClickCount:I
    invoke-static {v3, v8}, Lcom/m0narx/tweaks/fragments/about;->access$1(Lcom/m0narx/tweaks/fragments/about;I)V

    goto :goto_0
.end method
