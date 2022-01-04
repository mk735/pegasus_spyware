.class public Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;
.super Landroid/app/Activity;
.source "AgainstTheftSafeMailSetActivity.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$3;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public isMailNO(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v2, "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 98
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 99
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d00b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$1;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->e:Landroid/app/ActivityManager;

    .line 47
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeMail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->c:Ljava/lang/String;

    .line 48
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->b:Landroid/widget/EditText;

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->e:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->finish()V

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    return-void
.end method
