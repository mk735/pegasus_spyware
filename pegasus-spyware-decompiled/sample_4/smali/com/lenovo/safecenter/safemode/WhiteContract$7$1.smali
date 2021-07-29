.class final Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;
.super Ljava/lang/Thread;
.source "WhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract$7;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 91
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;Lcom/lenovo/safecenter/support/Contract;)V

    goto :goto_0

    .line 94
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 96
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;Lcom/lenovo/safecenter/support/Contract;)V

    goto :goto_1

    .line 99
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    iget-object v3, v3, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->delinfo(Ljava/lang/String;)V

    .line 100
    return-void
.end method
