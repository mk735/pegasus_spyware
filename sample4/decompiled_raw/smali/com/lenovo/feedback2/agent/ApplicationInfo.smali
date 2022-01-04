.class public Lcom/lenovo/feedback2/agent/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->b:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->d:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->b:I

    .line 27
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/ApplicationInfo;->c:Ljava/lang/String;

    .line 33
    return-void
.end method
