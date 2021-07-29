.class public Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$e;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$h;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$f;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$i;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$b;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$d;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$a;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$c;
    }
.end annotation


# static fields
.field public static final SET_COOKIE2_KEY:Ljava/lang/String; = "set-cookie2"

.field private static final b:Ljava/util/Comparator;


# instance fields
.field private final c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/Map;

.field private final f:Lorg/apache/commons/httpclient/cookie/CookieSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 92
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 93
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->e:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->d:Ljava/util/List;

    .line 96
    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 98
    const-string v0, "path"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$c;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$c;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 99
    const-string v0, "domain"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$a;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$a;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 100
    const-string v0, "port"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$d;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$d;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 101
    const-string v0, "max-age"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$b;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$b;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 102
    const-string v0, "secure"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$i;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$i;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 103
    const-string v0, "comment"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$f;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$f;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 104
    const-string v0, "commenturl"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 105
    const-string v0, "discard"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$h;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$h;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 106
    const-string v0, "version"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$e;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$e;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 107
    return-void
.end method

.method private a(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/cookie/Cookie2;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 400
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getName()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 403
    const-string v2, ""

    .line 405
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v4, v0, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 407
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isDomainAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Domain"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 412
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPathAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Path"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 417
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 418
    const-string v1, ""

    .line 419
    .local v1, "portValue":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank()Z

    move-result v3

    if-nez v3, :cond_5

    .line 420
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    array-length v6, v4

    :goto_0
    if-ge v3, v6, :cond_4

    if-lez v3, :cond_3

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    aget v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    :cond_5
    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Port"

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 425
    .end local v1    # "portValue":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method static a(I[I)Z
    .locals 4
    .param p0, "x1"    # I
    .param p1, "x2"    # [I

    .prologue
    const/4 v0, 0x0

    .line 57
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    if-ne p0, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)[I
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->b(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[I
    .locals 7
    .param p0, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [I

    .line 532
    .local v2, "ports":[I
    const/4 v1, 0x0

    .line 533
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    .line 535
    aget v4, v2, v1

    if-gez v4, :cond_0

    .line 536
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v5, "Invalid Port attribute."

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid Port attribute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_1
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "effectiveHost":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_0
    return-object v0
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 585
    .local v0, "match":Z
    :goto_0
    return v0

    .line 582
    .end local v0    # "match":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    return-object v0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 7
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 434
    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter RFC2965Spec.formatCookie(Cookie)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_0
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 440
    check-cast v1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 441
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getVersion()I

    move-result v2

    .line 442
    .local v2, "version":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 444
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->a(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2    # "version":I
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v3, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 9
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 461
    sget-object v5, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter RFC2965Spec.formatCookieHeader(Cookie[])"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 463
    if-nez p1, :cond_0

    .line 464
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cookies may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_0
    const/4 v2, 0x0

    .line 468
    .local v2, "hasOldStyleCookie":Z
    const/4 v4, -0x1

    .line 469
    .local v4, "version":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 470
    aget-object v1, p1, v3

    .line 471
    .local v1, "cookie":Lorg/apache/commons/httpclient/Cookie;
    instance-of v5, v1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-nez v5, :cond_4

    .line 472
    const/4 v2, 0x1

    .line 479
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    if-gez v4, :cond_2

    .line 480
    const/4 v4, 0x0

    .line 482
    :cond_2
    if-nez v2, :cond_3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_6

    .line 484
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v5, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v5

    .line 498
    :goto_1
    return-object v5

    .line 475
    .restart local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 476
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v4

    .line 469
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_6
    sget-object v5, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->b:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 491
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v6, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v7, "$Version"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 492
    const/4 v3, 0x0

    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_7

    .line 493
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    aget-object v1, p1, v3

    check-cast v1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 496
    .local v1, "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->a(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 498
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected getAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v0

    .line 145
    .local v0, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    if-nez v0, :cond_0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Handler not registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    return-object v0
.end method

.method protected getAttribHandlerIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/commons/httpclient/Header;
    .locals 6

    .prologue
    .line 1110
    new-instance v1, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    .line 1111
    .local v1, "formatter":Lorg/apache/commons/httpclient/util/ParameterFormatter;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1112
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 1114
    new-instance v2, Lorg/apache/commons/httpclient/Header;

    const-string v3, "Cookie2"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    const/4 v0, 0x0

    .line 375
    sget-object v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter RFC2965.match(String, int, String, boolean, Cookie"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 377
    if-nez p5, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    instance-of v1, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :goto_0
    return v0

    .line 385
    :cond_1
    new-instance v8, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 386
    .local v8, "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .line 388
    .local v6, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v6, p5, v8}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 392
    .end local v6    # "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    .end local v7    # "i":Ljava/util/Iterator;
    .end local v8    # "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 20
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v2, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter RFC2965Spec.parse(String, int, String, boolean, String)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host of origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host of origin may not be blank"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_1
    if-gez p2, :cond_2

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_2
    if-nez p3, :cond_3

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path of origin may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_3
    if-nez p5, :cond_4

    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    const-string p3, "/"

    .line 251
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v13

    .line 256
    .local v13, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 257
    .local v10, "cookies":Ljava/util/List;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_8

    .line 258
    aget-object v14, v13, v15

    .line 259
    .local v14, "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    :try_start_0
    new-instance v1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    aput p2, v8, v2

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/httpclient/cookie/Cookie2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z[I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v1, "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v19

    .line 273
    .local v19, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v19, :cond_7

    .line 275
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, v19

    array-length v2, v0

    invoke-direct {v9, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 276
    .local v9, "attribmap":Ljava/util/Map;
    move-object/from16 v0, v19

    array-length v2, v0

    add-int/lit8 v17, v2, -0x1

    .local v17, "j":I
    :goto_1
    if-ltz v17, :cond_6

    .line 277
    aget-object v18, v19, v17

    .line 278
    .local v18, "param":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 268
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v9    # "attribmap":Ljava/util/Map;
    .end local v17    # "j":I
    .end local v18    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v19    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :catch_0
    move-exception v12

    .line 269
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .restart local v9    # "attribmap":Ljava/util/Map;
    .restart local v17    # "j":I
    .restart local v19    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_6
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 281
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 282
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    goto :goto_2

    .line 285
    .end local v9    # "attribmap":Ljava/util/Map;
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "j":I
    :cond_7
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v14    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .end local v19    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/httpclient/Cookie;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v2, [Lorg/apache/commons/httpclient/Cookie;

    return-object v2
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "header"    # Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965.parse(String, int, String, boolean, Header)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 199
    if-nez p5, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 209
    :cond_2
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Header name is not valid. RFC 2965 supports \"set-cookie\" and \"set-cookie2\" headers."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 6
    .param p1, "attribute"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute Name may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_1
    if-nez p2, :cond_2

    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "paramValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v0

    .line 316
    .local v0, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    if-nez v0, :cond_4

    .line 318
    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unrecognized cookie attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 324
    :cond_3
    :goto_0
    return-void

    .line 322
    :cond_4
    invoke-interface {v0, p2, v2}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-nez p2, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.validate(String, int, String, boolean, Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 345
    instance-of v0, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 347
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1
    new-instance v8, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 353
    .local v8, "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .line 355
    .local v6, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v6, p5, v8}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 359
    .end local v6    # "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .end local v7    # "i":Ljava/util/Iterator;
    .end local v8    # "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->f:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 361
    :cond_3
    return-void
.end method
