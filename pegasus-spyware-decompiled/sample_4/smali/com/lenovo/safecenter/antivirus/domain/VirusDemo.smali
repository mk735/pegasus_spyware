.class public Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
.super Ljava/lang/Object;
.source "VirusDemo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgSha1"    # Ljava/lang/String;
    .param p5, "certmd5"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "filesize"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->a:I

    .line 47
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->d:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->e:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->f:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->g:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->i:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "pkgSha1"    # Ljava/lang/String;
    .param p4, "certmd5"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "filesize"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->c:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->d:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->e:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->f:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->g:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->i:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCertmd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPathKey()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->j:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setCertmd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "certmd5"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setFilesize(Ljava/lang/String;)V
    .locals 0
    .param p1, "filesize"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->i:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPathKey(I)V
    .locals 0
    .param p1, "pathKey"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->j:I

    .line 21
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPkgSha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgSha1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->d:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->g:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->f:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setVirusDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "virusDesc"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->h:Ljava/lang/String;

    .line 113
    return-void
.end method
