.class Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;
.super Landroid/os/Handler;
.source "ContactsAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 245
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 248
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 282
    return-void

    .line 250
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 254
    .local v0, contact:[Ljava/lang/String;
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    .line 255
    aget-object v2, v0, v4

    .line 256
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    .line 257
    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 258
    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 256
    #calls: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getContactImage(ILjava/lang/Long;)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$0(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;ILjava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0           #contact:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->mContext:Landroid/content/Context;

    .line 263
    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 268
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 274
    :pswitch_3
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->ContactList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$2(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v2, v2, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    iget-object v1, v1, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->contactAdapter:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$AppAdapter;->notifyDataSetChanged()V

    .line 276
    iget-object v1, p0, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd$1;->this$0:Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;

    #getter for: Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->loadDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;->access$1(Lcom/m0narx/tweaks/fragmentsextensions/ContactsAdd;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
