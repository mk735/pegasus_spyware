.class public Lcom/lenovo/safecenter/support/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# instance fields
.field private a:Landroid/content/pm/ApplicationInfo;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->a:Landroid/content/pm/ApplicationInfo;

    .line 19
    iput-object p2, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->b:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->c:I

    .line 21
    return-void
.end method


# virtual methods
.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->a:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->c:I

    return v0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->a:Landroid/content/pm/ApplicationInfo;

    .line 29
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/safecenter/support/ProcessInfo;->c:I

    .line 45
    return-void
.end method
