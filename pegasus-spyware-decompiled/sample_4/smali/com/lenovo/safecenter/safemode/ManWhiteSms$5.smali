.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;
.super Ljava/lang/Thread;
.source "ManWhiteSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ManWhiteSms;->init_recovery(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/ManWhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->b:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->b:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSmsByNumbers(Ljava/util/List;)Ljava/util/List;

    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->b:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSmsByNo(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->b:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method
