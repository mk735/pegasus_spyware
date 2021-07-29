.class public Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.super Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;


# static fields
.field public static final PROTOCOL_TYPE_MMS:I = 0x1

.field public static final PROTOCOL_TYPE_SMS:I = 0x0

.field public static final PROTOCOL_TYPE_WAPPUSH:I = 0x2

.field public static final SMS_TYPE_IN:I = 0x1

.field public static final SMS_TYPE_OUT:I = 0x2

.field private static final a:J = 0x1L


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public protocolType:I

.field public transient raw:Landroid/content/Intent;

.field public read:I

.field public smstype:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    return-void
.end method

.method public static a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method private a(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public static a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
