.class public Lcom/m0narx/tweaks/Bugreport;
.super Landroid/app/Activity;
.source "Bugreport.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SERVICE_STOPPED:I = 0x64

.field public static final ScreenRecord:Ljava/lang/String; = "Screenrecord.mp4"


# instance fields
.field ToggleButton:Lcom/htc/widget/HtcFooterButton;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field record:Lcom/htc/widget/HtcCheckBox;

.field spinner:Lcom/htc/widget/HtcSpinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/m0narx/tweaks/Bugreport$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/Bugreport$1;-><init>(Lcom/m0narx/tweaks/Bugreport;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/Bugreport;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/Bugreport;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->updateToggleButton()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/Bugreport;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->stopService()V

    return-void
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/Bugreport;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/Bugreport;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/Bugreport;->startRecording(II)V

    return-void
.end method

.method private goHome()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, startMain:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/Bugreport;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method private startRecording(II)V
    .locals 2
    .parameter "filter"
    .parameter "time"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/BugreportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/Bugreport;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->goHome()V

    .line 158
    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0a0080

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Bugreport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v1, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 165
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 166
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/BugreportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/Bugreport;->stopService(Landroid/content/Intent;)Z

    .line 168
    return-void
.end method

.method private updateToggleButton()V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/m0narx/tweaks/BugreportService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a01cb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2080051

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget-wide v2, Lcom/m0narx/tweaks/BugreportService;->timeRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/m0narx/tweaks/BugreportService;->recordingFinished:Z

    if-nez v2, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->goHome()V

    .line 68
    const v1, 0x7f0a0435

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/Bugreport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/m0narx/tweaks/BugreportService;->timeRemaining:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const v2, 0x7f0a01c7

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    .line 73
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->setContentView(I)V

    .line 75
    const v2, 0x7f060028

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    iput-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->spinner:Lcom/htc/widget/HtcSpinner;

    .line 76
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->record:Lcom/htc/widget/HtcCheckBox;

    .line 77
    iput-object p0, p0, Lcom/m0narx/tweaks/Bugreport;->mContext:Landroid/content/Context;

    .line 79
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v2, 0x2090008

    invoke-virtual {p0}, Lcom/m0narx/tweaks/Bugreport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 81
    .local v6, localArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v2, 0x2090007

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->spinner:Lcom/htc/widget/HtcSpinner;

    const v3, 0x7f0a042f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setPromptId(I)V

    .line 83
    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    .line 86
    iget-object v2, p0, Lcom/m0narx/tweaks/Bugreport;->ToggleButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/m0narx/tweaks/Bugreport$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/Bugreport$2;-><init>(Lcom/m0narx/tweaks/Bugreport;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->updateToggleButton()V

    .line 137
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 138
    .local v0, instruction:Landroid/webkit/WebView;
    const v2, -0xd0d0e

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 139
    const v2, 0x7f0a01cc

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/Bugreport;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Bugreport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/m0narx/tweaks/Bugreport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/m0narx/tweaks/Bugreport;->stopService()V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 189
    :goto_0
    invoke-static {}, Lcom/m0narx/tweaks/BugreportService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/Bugreport;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void

    .line 191
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method
