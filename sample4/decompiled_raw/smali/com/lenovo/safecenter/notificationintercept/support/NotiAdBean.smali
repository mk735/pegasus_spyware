.class public Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
.super Ljava/lang/Object;
.source "NotiAdBean.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->a:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAdname(Ljava/lang/String;)V
    .locals 0
    .param p1, "adname"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->a:I

    .line 16
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->c:Ljava/lang/String;

    .line 29
    return-void
.end method
