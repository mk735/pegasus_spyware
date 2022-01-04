.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;
.super Ljava/lang/Thread;
.source "DownSignCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 102
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;

    iget-object v6, v6, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignList()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "getSignList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v4, "snumber":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v5, "stype":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    .line 107
    .local v0, "call":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getIsUpload()I

    move-result v6

    if-nez v6, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 113
    .end local v0    # "call":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 115
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;

    iget-object v7, v7, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->upload_sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "ff":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 119
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;

    iget-object v6, v6, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateAllSign()V

    .line 122
    .end local v1    # "ff":I
    :cond_2
    return-void
.end method
