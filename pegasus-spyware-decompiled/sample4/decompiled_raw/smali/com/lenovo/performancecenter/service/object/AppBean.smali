.class public Lcom/lenovo/performancecenter/service/object/AppBean;
.super Ljava/lang/Object;
.source "AppBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/performancecenter/service/object/AppBean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Bitmap;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canMove()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->k:Z

    return v0
.end method

.method public compareTo(Lcom/lenovo/performancecenter/service/object/AppBean;)I
    .locals 5
    .param p1, "another"    # Lcom/lenovo/performancecenter/service/object/AppBean;

    .prologue
    .line 115
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/lenovo/performancecenter/service/object/AppBean;->getappLongSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/service/object/AppBean;->getappLongSize()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    :goto_0
    return v0

    .line 115
    .end local v0    # "result":I
    :cond_0
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/lenovo/performancecenter/service/object/AppBean;->getappLongSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/service/object/AppBean;->getappLongSize()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5
    check-cast p1, Lcom/lenovo/performancecenter/service/object/AppBean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/performancecenter/service/object/AppBean;->compareTo(Lcom/lenovo/performancecenter/service/object/AppBean;)I

    move-result v0

    return v0
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getappLongSize()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->l:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->i:Z

    return v0
.end method

.method public isInSdcard()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->j:Z

    return v0
.end method

.method public isIntalled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->h:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->g:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/CharSequence;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->a:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPath"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSize"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAppVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionCode"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->i:Z

    .line 57
    return-void
.end method

.method public setInSdcard(Z)V
    .locals 0
    .param p1, "inSdcard"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->j:Z

    .line 63
    return-void
.end method

.method public setIntalled(Z)V
    .locals 0
    .param p1, "isIntalled"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->h:Z

    .line 51
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setappLongSize(J)V
    .locals 0
    .param p1, "appLongSize"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->l:J

    .line 44
    return-void
.end method

.method public setcanMove(Z)V
    .locals 0
    .param p1, "canMove"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->k:Z

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBean [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIntalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/AppBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
