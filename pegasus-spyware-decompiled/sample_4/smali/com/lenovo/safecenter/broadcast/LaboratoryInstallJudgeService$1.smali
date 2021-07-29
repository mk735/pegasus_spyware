.class final Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;
.super Ljava/lang/Thread;
.source "LaboratoryInstallJudgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;->a:Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->a(Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->init(Ljava/lang/String;)V

    .line 31
    return-void
.end method
