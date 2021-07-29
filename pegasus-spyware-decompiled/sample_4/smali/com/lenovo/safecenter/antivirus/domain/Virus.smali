.class public Lcom/lenovo/safecenter/antivirus/domain/Virus;
.super Ljava/lang/Object;
.source "Virus.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "operate"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->b:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->c:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->f:I

    return v0
.end method

.method public getVirusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isOperate()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->c:Z

    return v0
.end method

.method public isSD()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->g:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setOperate(Z)V
    .locals 0
    .param p1, "operate"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->c:Z

    .line 53
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSD(Z)V
    .locals 0
    .param p1, "isSD"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->g:Z

    .line 84
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->f:I

    .line 73
    return-void
.end method

.method public setVirusDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "virusDesc"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->e:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .param p1, "virusName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/Virus;->d:Ljava/lang/String;

    .line 63
    return-void
.end method
