.class public Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
.super Ljava/lang/Object;
.source "Appinfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mD5"    # Ljava/lang/String;
    .param p3, "sHA1"    # Ljava/lang/String;
    .param p4, "filesize"    # Ljava/lang/String;
    .param p5, "appname"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->c:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->d:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->e:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPathKey()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->f:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSHA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFilesize(Ljava/lang/String;)V
    .locals 0
    .param p1, "filesize"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0
    .param p1, "mD5"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPathKey(I)V
    .locals 0
    .param p1, "pathKey"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->f:I

    .line 18
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSHA1(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHA1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->c:Ljava/lang/String;

    .line 56
    return-void
.end method
