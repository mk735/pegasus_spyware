.class public Lorg/apache/commons/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 61
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 66
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 149
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    .line 85
    iput v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    .line 109
    if-nez p1, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    .line 110
    if-gez p2, :cond_0

    move p2, v1

    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    .line 111
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .end local p3    # "realm":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    .line 112
    if-nez p4, :cond_3

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    .line 113
    return-void

    .line 109
    .restart local p2    # "port":I
    .restart local p3    # "realm":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    .end local p2    # "port":I
    .end local p3    # "realm":Ljava/lang/String;
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/auth/AuthScope;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    .line 164
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private static a(II)Z
    .locals 1
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .prologue
    .line 225
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "p1"    # Ljava/lang/String;
    .param p1, "p2"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p0, :cond_1

    .line 212
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-nez p1, :cond_1

    move v1, v2

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    if-eq p1, p0, :cond_0

    .line 280
    instance-of v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    if-nez v3, :cond_2

    .line 281
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 283
    check-cast v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 284
    .local v0, "that":Lorg/apache/commons/httpclient/auth/AuthScope;
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    iget v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 322
    const/16 v1, 0x11

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 324
    .local v0, "hash":I
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 325
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 326
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 327
    return v0
.end method

.method public match(Lorg/apache/commons/httpclient/auth/AuthScope;)I
    .locals 4
    .param p1, "that"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    const/4 v1, -0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "factor":I
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    add-int/lit8 v0, v0, 0x2

    .line 253
    :cond_1
    iget v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    iget v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    add-int/lit8 v0, v0, 0x4

    .line 260
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 261
    add-int/lit8 v0, v0, 0x8

    :cond_3
    move v1, v0

    .line 267
    :goto_0
    return v1

    .line 242
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 249
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 256
    :cond_6
    iget v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 263
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 308
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    if-ltz v1, :cond_1

    .line 311
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 315
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
