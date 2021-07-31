.class public Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;
.super Landroid/app/Activity;
.source "SafePaymentDialogActivity.java"


# instance fields
.field a:Landroid/app/ActivityManager;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/pm/PackageManager;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->d:Landroid/content/pm/PackageManager;

    .line 41
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->a:Landroid/app/ActivityManager;

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "safeAppName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->b:Ljava/lang/String;

    .line 44
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->setContentView(I)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0902a8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0211

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0212

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d022a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ac

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902ab

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$2;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    const-string v0, "ydp"

    const-string v1, "dialog activity onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 107
    const-string v0, "ydp"

    const-string v1, "dialog activity onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->e:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->finish()V

    .line 111
    :cond_0
    return-void
.end method
