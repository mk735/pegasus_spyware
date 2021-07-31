.class final Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;
.super Ljava/lang/Thread;
.source "SafePaymentInstallJudgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->a(Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->init(Ljava/lang/String;)V

    .line 36
    return-void
.end method
