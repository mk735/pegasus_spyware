.class public Lcom/lenovo/safecenter/support/AppUploadInfo;
.super Ljava/lang/Object;
.source "AppUploadInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "packagesha1"    # Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "certmd5"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->a:I

    .line 36
    iput-object p2, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->d:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->e:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->f:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->g:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "packagesha1"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "certmd5"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->d:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->e:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->f:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->g:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCertmd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->a:I

    return v0
.end method

.method public getPackagesha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCertmd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "certmd5"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->a:I

    .line 53
    return-void
.end method

.method public setPackagesha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagesha1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/support/AppUploadInfo;->c:Ljava/lang/String;

    .line 65
    return-void
.end method
