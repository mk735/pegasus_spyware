.class public Lcom/lenovo/safecenter/antivirus/domain/CommonFile;
.super Ljava/lang/Object;
.source "CommonFile.java"


# instance fields
.field private a:Landroid/content/pm/ApplicationInfo;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field public virusInfo:Lcom/lenovo/safecenter/antivirus/domain/Appinfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->a:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusInfo()Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->virusInfo:Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    return-object v0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->b:Z

    return v0
.end method

.method public isSD()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->e:Z

    return v0
.end method

.method public isVirus()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->d:Z

    return v0
.end method

.method public setApk(Z)V
    .locals 0
    .param p1, "isApk"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->b:Z

    .line 23
    return-void
.end method

.method public setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->a:Landroid/content/pm/ApplicationInfo;

    .line 15
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->c:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSD(Z)V
    .locals 0
    .param p1, "isSD"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->e:Z

    .line 47
    return-void
.end method

.method public setVirus(Z)V
    .locals 0
    .param p1, "isVirus"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->d:Z

    .line 55
    return-void
.end method

.method public setVirusInfo(Lcom/lenovo/safecenter/antivirus/domain/Appinfo;)V
    .locals 0
    .param p1, "virusInfo"    # Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->virusInfo:Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .line 65
    return-void
.end method
