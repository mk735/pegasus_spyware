.class public Lcom/lenovo/safecenter/antivirus/views/LogActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusLog;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->g:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->c:Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->e:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    .prologue
    .line 30
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0356

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/LogActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public OnBtnClick()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/LogActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$4;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method public formatAllTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "dateValue":Ljava/lang/String;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->finish()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->b:Landroid/widget/Button;

    .line 59
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->a:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 62
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->e:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 64
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0310

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->OnBtnClick()V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 111
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->e:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getLog()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->f:Ljava/util/List;

    .line 100
    const-string v0, "mm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->c:Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->c:Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 105
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 106
    return-void
.end method
