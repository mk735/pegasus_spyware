.class public Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;
.super Ljava/lang/Object;
.source "ScanInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "isVirus"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->d:Landroid/content/pm/ApplicationInfo;

    .line 28
    iput-boolean p2, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "isVirus"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->b:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->d:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isVirus()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    return v0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->d:Landroid/content/pm/ApplicationInfo;

    .line 20
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVirus(Z)V
    .locals 0
    .param p1, "isVirus"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->c:Z

    .line 54
    return-void
.end method
