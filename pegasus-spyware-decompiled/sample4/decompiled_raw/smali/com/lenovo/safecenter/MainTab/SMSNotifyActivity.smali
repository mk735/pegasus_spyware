.class public Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;
.super Landroid/app/Activity;
.source "SMSNotifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    new-instance v0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 89
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->finish()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 92
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget v2, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "Type"

    const-string v3, "sms"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->finish()V

    goto :goto_0

    .line 105
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 106
    const v2, 0x7f0d0058

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_3
    const v2, 0x7f0d0056

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    .end local v1    # "pwd":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->finish()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1f9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 34
    const-string v1, "style"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->b:I

    .line 35
    const-string v1, "style"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "style=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 39
    :cond_1
    const v1, 0x7f030068

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->setContentView(I)V

    .line 49
    :goto_0
    const v1, 0x7f0902ae

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f020119

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const v1, 0x7f0902b0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0902af

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :goto_1
    return-void

    .line 41
    :cond_3
    const v1, 0x7f03008b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->setContentView(I)V

    .line 42
    new-instance v1, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;->start()V

    goto :goto_0

    .line 49
    :cond_4
    const v1, 0x7f09034c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09034f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090350

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->g:Landroid/widget/EditText;

    const v1, 0x7f090353

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090352

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
