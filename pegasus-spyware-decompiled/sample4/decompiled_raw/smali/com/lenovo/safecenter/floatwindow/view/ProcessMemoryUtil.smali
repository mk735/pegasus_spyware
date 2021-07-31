.class public Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;
.super Ljava/lang/Object;
.source "ProcessMemoryUtil.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->initPMUtil()V

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 8
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "tempString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "bIsProcInfo":Z
    const/4 v1, 0x0

    .line 112
    .local v1, "columns":[Ljava/lang/String;
    const-string v5, "[\n]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "rows":[Ljava/lang/String;
    const-string v5, "yhh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rows"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 115
    aget-object v4, v3, v2

    .line 116
    const-string v5, "PID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 117
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v5, "[ ]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 121
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    return v5
.end method

.method private static a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    const-string v4, "fetch_process_info"

    const-string v5, "start. . . . "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, "result":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/CMDExecute;

    invoke-direct {v1}, Lcom/lenovo/safecenter/floatwindow/view/CMDExecute;-><init>()V

    .line 88
    .local v1, "cmdexe":Lcom/lenovo/safecenter/floatwindow/view/CMDExecute;
    const/4 v4, 0x3

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/top"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-n"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v0, v4

    .line 90
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "/system/bin/"

    invoke-virtual {v1, v0, v4}, Lcom/lenovo/safecenter/floatwindow/view/CMDExecute;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .end local v0    # "args":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 92
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "fetch_process_info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMemInfoByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "procName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->initPMUtil()V

    .line 142
    const-string v2, ""

    .line 144
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 145
    .local v3, "tempString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 147
    .local v0, "item":[Ljava/lang/String;
    const/16 v4, 0x8

    aget-object v3, v0, v4

    .line 148
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Mem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .end local v0    # "item":[Ljava/lang/String;
    :cond_1
    const-string v4, "yhh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "memoryresult"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v2
.end method

.method public getMemInfoByPid(I)Ljava/lang/String;
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 160
    const-string v3, ""

    .line 162
    .local v3, "result":Ljava/lang/String;
    const/4 v5, 0x0

    .line 163
    .local v5, "tempPidString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 164
    .local v4, "tempPid":I
    iget-object v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 166
    iget-object v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 167
    .local v2, "item":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v5, v2, v6

    .line 168
    if-nez v5, :cond_1

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 172
    if-ne v4, p1, :cond_0

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPU:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  Mem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .end local v2    # "item":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public initPMUtil()V
    .locals 2

    .prologue
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a:Ljava/util/List;

    .line 135
    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "resultString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessMemoryUtil;->a(Ljava/lang/String;)I

    .line 137
    return-void
.end method
