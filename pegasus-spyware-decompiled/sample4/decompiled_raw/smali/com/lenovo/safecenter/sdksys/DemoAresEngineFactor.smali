.class public final Lcom/lenovo/safecenter/sdksys/DemoAresEngineFactor;
.super Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
.source "DemoAresEngineFactor.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/sdksys/DemoAresEngineFactor;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public final getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    return-object v0
.end method

.method public final getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/sdksys/DemoAresEngineFactor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getDefault(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    return-object v0
.end method

.method public final getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method
