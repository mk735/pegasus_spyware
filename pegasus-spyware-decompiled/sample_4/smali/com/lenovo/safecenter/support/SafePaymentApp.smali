.class public Lcom/lenovo/safecenter/support/SafePaymentApp;
.super Ljava/lang/Object;
.source "SafePaymentApp.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "app_name"    # Ljava/lang/String;
    .param p3, "app_packagename"    # Ljava/lang/String;
    .param p4, "app_md5"    # Ljava/lang/String;
    .param p5, "app_file_size"    # Ljava/lang/String;
    .param p6, "app_sha1"    # Ljava/lang/String;
    .param p7, "app_state"    # Ljava/lang/String;
    .param p8, "app_protection"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->a:I

    .line 16
    iput-object p2, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->c:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->d:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->e:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->f:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->g:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->h:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getApp_file_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_md5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_packagename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_protection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_sha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->a:I

    return v0
.end method

.method public setApp_file_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_file_size"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setApp_md5(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_md5"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setApp_packagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_packagename"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setApp_protection(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_protection"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->h:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setApp_sha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_sha1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->f:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setApp_state(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_state"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->g:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/lenovo/safecenter/support/SafePaymentApp;->a:I

    .line 29
    return-void
.end method
