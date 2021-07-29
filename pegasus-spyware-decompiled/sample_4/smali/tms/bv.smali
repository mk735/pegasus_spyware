.class final Ltms/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/ba;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lcom/google/android/mms/pdu/GenericPdu;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/bv;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NO TEXT"

    return-object v0
.end method

.method public final a([B)V
    .locals 1

    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v0, p1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    iput-object v0, p0, Ltms/bv;->b:Lcom/google/android/mms/pdu/GenericPdu;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/bv;->b:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltms/bv;->b:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/bv;->a:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ltms/bv;->a([B)V

    iget-object v1, p0, Ltms/bv;->b:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    const-string v1, "NO TEXT"

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {p0}, Ltms/bv;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput v3, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget-object v1, p0, Ltms/bv;->a:Landroid/content/Intent;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v3, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    :cond_0
    return-object v0
.end method
