.class public Lcom/lenovo/safecenter/support/GridViewItem;
.super Ljava/lang/Object;
.source "GridViewItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "sp"    # Landroid/content/SharedPreferences;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "flag"    # I
    .param p7, "pwd"    # Z

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 44
    iput-object p2, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p4, p0, Lcom/lenovo/safecenter/support/GridViewItem;->f:Landroid/content/SharedPreferences;

    .line 47
    iput-object p5, p0, Lcom/lenovo/safecenter/support/GridViewItem;->g:Ljava/lang/String;

    .line 48
    const-string v0, "haveBtn"

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    .line 50
    const-string v0, "switch"

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 54
    :goto_0
    const-string v0, "message"

    const-string v1, ""

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f0d020c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    .line 59
    :goto_1
    iput-boolean p7, p0, Lcom/lenovo/safecenter/support/GridViewItem;->j:Z

    .line 60
    return-void

    .line 52
    :cond_0
    iput-boolean v1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "message"

    const-string v1, ""

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "haveBtn"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object p3, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "haveBtn"    # Z
    .param p5, "flag"    # I
    .param p6, "action"    # Ljava/lang/String;
    .param p7, "switchName"    # Ljava/lang/String;
    .param p8, "pwd"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object p3, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    .line 36
    iput-object p6, p0, Lcom/lenovo/safecenter/support/GridViewItem;->h:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/lenovo/safecenter/support/GridViewItem;->k:I

    .line 38
    iput-object p7, p0, Lcom/lenovo/safecenter/support/GridViewItem;->i:Ljava/lang/String;

    .line 39
    iput-boolean p8, p0, Lcom/lenovo/safecenter/support/GridViewItem;->j:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "flag"    # I
    .param p6, "pwd"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object p4, p0, Lcom/lenovo/safecenter/support/GridViewItem;->g:Ljava/lang/String;

    .line 67
    iput-boolean p6, p0, Lcom/lenovo/safecenter/support/GridViewItem;->j:Z

    .line 68
    iput-object p2, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getBtn()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->k:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSp()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSwitchName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, ""

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveBtn()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    return v0
.end method

.method public isPwd()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/GridViewItem;->j:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->h:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setBtn(Z)V
    .locals 0
    .param p1, "btn"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->d:Z

    .line 93
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->k:I

    .line 117
    return-void
.end method

.method public setHaveBtn(Z)V
    .locals 0
    .param p1, "haveBtn"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->e:Z

    .line 99
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->b:Landroid/graphics/drawable/Drawable;

    .line 81
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->c:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->g:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPwd(Z)V
    .locals 0
    .param p1, "pwd"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->j:Z

    .line 138
    return-void
.end method

.method public setSp(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->f:Landroid/content/SharedPreferences;

    .line 105
    return-void
.end method

.method public setSwitchName(Ljava/lang/String;)V
    .locals 0
    .param p1, "switchName"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->i:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/safecenter/support/GridViewItem;->a:Ljava/lang/String;

    .line 75
    return-void
.end method
