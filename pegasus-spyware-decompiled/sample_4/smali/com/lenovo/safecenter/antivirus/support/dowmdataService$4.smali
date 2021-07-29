.class final Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;
.super Ljava/lang/Thread;
.source "dowmdataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->down(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->a:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 272
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z

    .line 278
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->update()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->a:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z

    .line 282
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 286
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->f(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    move-result-object v1

    const/16 v2, 0xc

    new-instance v3, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 334
    const-string v1, "demo"

    const-string v2, "CheckResult================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
