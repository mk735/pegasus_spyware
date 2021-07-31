.class public Lcom/lenovo/safecenter/safemode/SofeModeMain;
.super Landroid/app/TabActivity;
.source "SofeModeMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/SofeModeMain$a;,
        Lcom/lenovo/safecenter/safemode/SofeModeMain$b;
    }
.end annotation


# static fields
.field public static final TS_CALL:Ljava/lang/String; = "call"

.field public static final TS_CONTRACT:Ljava/lang/String; = "contract"

.field public static final TS_SETTINGT:Ljava/lang/String; = "setting"

.field public static final TS_SMS:Ljava/lang/String; = "sms"


# instance fields
.field private a:Landroid/widget/TabHost;

.field private b:Lcom/lenovo/safecenter/safemode/SofeModeMain$b;

.field private c:J

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/view/View$OnTouchListener;

.field public hand:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/lenovo/safecenter/safemode/SofeModeMain$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain$1;-><init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->c:J

    .line 331
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->d:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 386
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getView(Ljava/lang/String;II)Landroid/view/View;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "drawID"    # I

    .prologue
    .line 287
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030117

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "view1":Landroid/view/View;
    const v4, 0x7f09047b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    .local v2, "txtnumber":Landroid/widget/TextView;
    const v4, 0x7f090593

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 290
    .local v1, "tab_img":Landroid/widget/ImageView;
    const v4, 0x7f090594

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "img":Landroid/view/View;
    const-string v4, "ss"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "img=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 294
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    return-object v3

    .line 297
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->finish()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ba

    if-ne v0, v1, :cond_0

    .line 316
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->requestWindowFeature(I)Z

    .line 110
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->addEntryPrivacySpaceCount()I

    .line 111
    const v10, 0x7f030063

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->setContentView(I)V

    .line 112
    const v10, 0x7f020286

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0d01e0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 113
    sget-object v10, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v10, Lcom/lenovo/safecenter/safemode/SofeModeMain$b;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/lenovo/safecenter/safemode/SofeModeMain$b;-><init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;B)V

    iput-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->b:Lcom/lenovo/safecenter/safemode/SofeModeMain$b;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->b:Lcom/lenovo/safecenter/safemode/SofeModeMain$b;

    invoke-virtual {p0, v10, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getTabHost()Landroid/widget/TabHost;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    .line 119
    const/4 v9, 0x0

    .line 122
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "pwd"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 125
    const-string v10, "pwd"

    invoke-static {v10, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "pwd"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "pwd"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3

    .line 127
    const v10, 0x7f0d019f

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7f02012e

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 128
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 129
    .local v6, "filterMsgSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 130
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v5, "filterMsgIntent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 134
    const v10, 0x7f0d019e

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const v12, 0x7f02012c

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 135
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 136
    .local v2, "filterCallSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;

    invoke-direct {v1, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "filterCallIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 141
    const v10, 0x7f0d01a0

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const v12, 0x7f02012d

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 142
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 143
    .local v4, "filterListSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v4, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 144
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v3, "filterListIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 149
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 150
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 151
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 192
    .end local v1    # "filterCallIntent":Landroid/content/Intent;
    .end local v2    # "filterCallSpec":Landroid/widget/TabHost$TabSpec;
    .end local v3    # "filterListIntent":Landroid/content/Intent;
    .end local v4    # "filterListSpec":Landroid/widget/TabHost$TabSpec;
    .end local v5    # "filterMsgIntent":Landroid/content/Intent;
    .end local v6    # "filterMsgSpec":Landroid/widget/TabHost$TabSpec;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    new-instance v11, Lcom/lenovo/safecenter/safemode/SofeModeMain$2;

    invoke-direct {v11, p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain$2;-><init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 210
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f09047b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 211
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "Type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "type":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 216
    const-string v10, "call"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 218
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 232
    :cond_1
    :goto_1
    new-instance v10, Landroid/view/GestureDetector;

    new-instance v11, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;

    invoke-direct {v11, p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;-><init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V

    invoke-direct {v10, v11}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->d:Landroid/view/GestureDetector;

    .line 233
    new-instance v10, Lcom/lenovo/safecenter/safemode/SofeModeMain$3;

    invoke-direct {v10, p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain$3;-><init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V

    iput-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->e:Landroid/view/View$OnTouchListener;

    .line 243
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "pwd"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    const v10, 0x7f0d019f

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7f02012e

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 157
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 158
    .restart local v6    # "filterMsgSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 159
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .restart local v5    # "filterMsgIntent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 163
    const v10, 0x7f0d019e

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const v12, 0x7f02012c

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 164
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 165
    .restart local v2    # "filterCallSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-direct {v1, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .restart local v1    # "filterCallIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 170
    const v10, 0x7f0d01a0

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const v12, 0x7f02012d

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v9

    .line 171
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 172
    .restart local v4    # "filterListSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v4, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 173
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .restart local v3    # "filterListIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 178
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 179
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 180
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v10, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "filterCallIntent":Landroid/content/Intent;
    .end local v2    # "filterCallSpec":Landroid/widget/TabHost$TabSpec;
    .end local v3    # "filterListIntent":Landroid/content/Intent;
    .end local v4    # "filterListSpec":Landroid/widget/TabHost$TabSpec;
    .end local v5    # "filterMsgIntent":Landroid/content/Intent;
    .end local v6    # "filterMsgSpec":Landroid/widget/TabHost$TabSpec;
    .restart local v7    # "textView":Landroid/widget/TextView;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_4
    const-string v10, "sms"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 221
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_1

    .line 225
    :cond_5
    iget-object v10, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 275
    const-string v0, "SofeModeMain"

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->b:Lcom/lenovo/safecenter/safemode/SofeModeMain$b;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->c:J

    .line 282
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 262
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 249
    iget-wide v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 251
    sget-boolean v0, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->finish()V

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->c:J

    .line 271
    return-void
.end method

.method public setLeftImgGone(I)V
    .locals 1
    .param p1, "gone"    # I

    .prologue
    .line 96
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method

.method public setRightImgGone(I)V
    .locals 1
    .param p1, "gone"    # I

    .prologue
    .line 100
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 5
    .param p1, "leftImgId"    # Ljava/lang/Integer;
    .param p2, "titleStrId"    # I
    .param p3, "rightImgId"    # Ljava/lang/Integer;

    .prologue
    const v4, 0x7f0904bb

    const/16 v3, 0x8

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f0300e1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 74
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    if-eqz p1, :cond_0

    .line 79
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_0
    if-eqz p3, :cond_1

    .line 86
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :goto_1
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->setLeftImgGone(I)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->setRightImgGone(I)V

    goto :goto_1
.end method
