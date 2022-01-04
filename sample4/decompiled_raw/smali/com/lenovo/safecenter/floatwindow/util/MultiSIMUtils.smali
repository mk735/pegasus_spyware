.class public Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# instance fields
.field a:Ljava/lang/Class;

.field b:Ljava/lang/Object;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->c:Landroid/content/Context;

    .line 15
    :try_start_0
    const-string v1, "android.provider.MultiSIMUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    .line 16
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    const-string v2, "getDefault"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 17
    .local v0, "getDefault":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v0    # "getDefault":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getDataSubscriberId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    const-string v3, "getDataSubscriberId"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    .local v0, "getDataSubscriberId":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "getDataSubscriberId":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    const-string v3, "getPlatform"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    .local v0, "getPlatform":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "getPlatform":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 7
    .param p1, "mSlot"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    const-string v3, "getSimState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    .local v0, "getSimState":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    .end local v0    # "getSimState":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .param p1, "mSlot"    # I

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->a:Ljava/lang/Class;

    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    .local v0, "getSubscriberId":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "getSubscriberId":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
