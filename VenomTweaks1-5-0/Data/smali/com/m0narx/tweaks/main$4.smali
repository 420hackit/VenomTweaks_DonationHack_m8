.class Lcom/m0narx/tweaks/main$4;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Lcom/m0narx/tweaks/widgets/slidingmenu/OnSlidingMenuItemClickListener;


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

.field private final synthetic val$menuSettingsContex:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/main;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    iput-object p2, p0, Lcom/m0narx/tweaks/main$4;->val$menuSettingsContex:Landroid/content/Context;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/main$4;)Lcom/m0narx/tweaks/main;
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    return-object v0
.end method


# virtual methods
.method public onSlidingMenuItemClick(Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 391
    iget v5, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->id:I

    packed-switch v5, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 393
    :pswitch_1
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/baseCarousel;->enterCarouselEditMode()V

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v5

    .line 402
    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 401
    instance-of v5, v5, Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 402
    if-eqz v5, :cond_0

    .line 403
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v5

    .line 404
    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 403
    check-cast v5, Lcom/m0narx/tweaks/custompreferences/Prefs;

    .line 405
    invoke-virtual {v5}, Lcom/m0narx/tweaks/custompreferences/Prefs;->resetToDefaults()V

    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 410
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "force_english"

    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$6(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    iget-object v8, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mForceEnglish:Ljava/lang/Boolean;
    invoke-static {v8}, Lcom/m0narx/tweaks/main;->access$6(Lcom/m0narx/tweaks/main;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    #calls: Lcom/m0narx/tweaks/main;->setLocale(ZZ)V
    invoke-static {v5, v6, v7}, Lcom/m0narx/tweaks/main;->access$7(Lcom/m0narx/tweaks/main;ZZ)V

    goto :goto_0

    :cond_1
    move v5, v7

    .line 410
    goto :goto_1

    :cond_2
    move v6, v7

    .line 412
    goto :goto_2

    .line 415
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :pswitch_4
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mCarousel:Lcom/m0narx/tweaks/provider/baseCarousel;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$0(Lcom/m0narx/tweaks/main;)Lcom/m0narx/tweaks/provider/baseCarousel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/m0narx/tweaks/provider/baseCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v5

    .line 416
    iget-object v6, p1, Lcom/m0narx/tweaks/widgets/slidingmenu/SlidingMenuItem;->extra:Ljava/lang/String;

    .line 415
    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :pswitch_5
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SENSE:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5, v6}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto :goto_0

    .line 422
    :pswitch_6
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->SYSTEMUI:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5, v6}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 425
    :pswitch_7
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->HOT_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    invoke-static {v5, v6}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 428
    :pswitch_8
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    .line 429
    sget-object v6, Lcom/m0narx/tweaks/widgets/Reboot$Action;->FULL_RESTART:Lcom/m0narx/tweaks/widgets/Reboot$Action;

    .line 428
    invoke-static {v5, v6}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;Lcom/m0narx/tweaks/widgets/Reboot$Action;)V

    goto/16 :goto_0

    .line 432
    :pswitch_9
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    const-class v8, Lcom/m0narx/tweaks/Profiles;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 435
    :pswitch_a
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    const-class v8, Lcom/m0narx/tweaks/Bugreport;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 438
    :pswitch_b
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/main;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 439
    const v6, 0x7f030023

    const/4 v8, 0x0

    .line 438
    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 441
    .local v4, view:Landroid/view/View;
    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 440
    check-cast v0, Landroid/widget/CheckBox;

    .line 443
    .local v0, cBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "enable"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 447
    const v5, 0x7f06004b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 446
    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    .line 449
    .local v3, sensitivy:Lcom/htc/widget/HtcSeekBar;
    const/16 v5, 0x46

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 450
    iget-object v5, p0, Lcom/m0narx/tweaks/main$4;->this$0:Lcom/m0narx/tweaks/main;

    #getter for: Lcom/m0narx/tweaks/main;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/m0narx/tweaks/main;->access$5(Lcom/m0narx/tweaks/main;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 451
    const-string v6, "sensitiy"

    const/16 v8, 0x17

    .line 450
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 452
    add-int/lit8 v5, v5, -0x19

    .line 450
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 454
    new-instance v5, Lcom/m0narx/tweaks/main$4$1;

    invoke-direct {v5, p0, v3}, Lcom/m0narx/tweaks/main$4$1;-><init>(Lcom/m0narx/tweaks/main$4;Lcom/htc/widget/HtcSeekBar;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 465
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 466
    iget-object v6, p0, Lcom/m0narx/tweaks/main$4;->val$menuSettingsContex:Landroid/content/Context;

    .line 465
    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    const v6, 0x7f0a035e

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 468
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 469
    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 471
    const v6, 0x7f0a0056

    .line 472
    new-instance v7, Lcom/m0narx/tweaks/main$4$2;

    invoke-direct {v7, p0, v3, v0}, Lcom/m0narx/tweaks/main$4$2;-><init>(Lcom/m0narx/tweaks/main$4;Lcom/htc/widget/HtcSeekBar;Landroid/widget/CheckBox;)V

    .line 470
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 504
    const v6, 0x7f0a001d

    .line 505
    new-instance v7, Lcom/m0narx/tweaks/main$4$3;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/main$4$3;-><init>(Lcom/m0narx/tweaks/main$4;)V

    .line 503
    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 513
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 515
    .local v2, menuSettings:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method
