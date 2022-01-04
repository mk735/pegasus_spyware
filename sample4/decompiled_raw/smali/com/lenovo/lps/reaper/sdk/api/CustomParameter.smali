.class public final Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
.super Ljava/lang/Object;
.source "CustomParameter.java"


# static fields
.field public static final ACTIVITY_SCOPE:I = 0x3

.field public static final MAX_INDEX:I = 0x5

.field public static final MAX_LENGTH:I = 0x100

.field public static final SESSION_SCOPE:I = 0x2

.field public static final VISITOR_SCOPE:I = 0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "scope"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->d:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "scope"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    .line 76
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->c:Ljava/lang/String;

    .line 78
    iput p4, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->d:I

    .line 79
    return-void
.end method

.method public static check(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-lt p0, v0, :cond_0

    const/4 v2, 0x5

    if-le p0, v2, :cond_2

    .line 111
    :cond_0
    const-string v2, "CustomParameter"

    const-string v3, "index of custom parameter should greater than %s and less than %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 131
    :cond_1
    :goto_0
    return v0

    .line 114
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 115
    :cond_3
    const-string v0, "CustomParameter"

    const-string v2, "name of custom parameter should not be null or empty."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_5
    const-string v0, "CustomParameter"

    const-string v2, "value of custom parameter should not be null or empty."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->d:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    .line 87
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    .line 178
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->b:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->c:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const-string v1, ""

    .line 220
    :goto_0
    return-object v1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
