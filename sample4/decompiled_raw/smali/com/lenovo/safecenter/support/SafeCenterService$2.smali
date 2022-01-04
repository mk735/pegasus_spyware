.class final Lcom/lenovo/safecenter/support/SafeCenterService$2;
.super Ljava/lang/Thread;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SafeLog;

.field final synthetic b:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;Lcom/lenovo/safecenter/support/SafeLog;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$2;->b:Lcom/lenovo/safecenter/support/SafeCenterService;

    iput-object p2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$2;->a:Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 371
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 372
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$2;->b:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$2;->a:Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v2, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/MyUtils;->deleteUnsendSMS(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
