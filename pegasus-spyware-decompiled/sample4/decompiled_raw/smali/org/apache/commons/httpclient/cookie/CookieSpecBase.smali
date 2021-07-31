.class public Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.super Ljava/lang/Object;
.source "CookieSpecBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieSpec;


# static fields
.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field static a:Ljava/lang/Class;


# instance fields
.field private b:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.cookie.CookieSpec"

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->b:Ljava/util/Collection;

    .line 75
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/util/List;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 3
    .param p0, "list"    # Ljava/util/List;
    .param p1, "addCookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 578
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .line 579
    .local v0, "c":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p1, p1, v0}, Lorg/apache/commons/httpclient/Cookie;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 583
    .end local v0    # "c":Lorg/apache/commons/httpclient/Cookie;
    :cond_0
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    return-void

    .line 577
    .restart local v0    # "c":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 513
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 592
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter CookieSpecBase.formatCookie(Cookie)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 593
    if-nez p1, :cond_0

    .line 594
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formatCookieHeader(Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .locals 3
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 655
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookieHeader(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 656
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Cookie"

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public formatCookieHeader([Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .locals 3
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 643
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookieHeader(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 644
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Cookie"

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 4
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 616
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter CookieSpecBase.formatCookies(Cookie[])"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie array may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_0
    array-length v2, p1

    if-nez v2, :cond_1

    .line 621
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie array may not be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 626
    if-lez v1, :cond_2

    .line 627
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getValidDateFormats()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    const/4 v0, 0x0

    .line 453
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter CookieSpecBase.match(String, int, String, boolean, Cookie"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 456
    if-nez p1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_1
    if-gez p2, :cond_2

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_2
    if-nez p3, :cond_3

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3
    if-nez p5, :cond_4

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    const-string p3, "/"

    .line 477
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 479
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid cookie state: domain not specified"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 487
    :cond_6
    :goto_0
    return v0

    .line 482
    :cond_7
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 483
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid cookie state: path not specified"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_8
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_9
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getSecure()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p4, :cond_6

    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 549
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.match(String, int, String, boolean, Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 552
    if-nez p5, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 561
    :goto_0
    return-object v0

    .line 555
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 556
    .local v7, "matching":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p5

    if-ge v6, v0, :cond_2

    .line 557
    aget-object v5, p5, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    aget-object v0, p5, v6

    invoke-static {v7, v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->a(Ljava/util/List;Lorg/apache/commons/httpclient/Cookie;)V

    .line 556
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 561
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 19
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
    .line 113
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter CookieSpecBase.parse(String, port, path, boolean, Header)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host of origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host of origin may not be blank"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_1
    if-gez p2, :cond_2

    .line 125
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

    .line 127
    :cond_2
    if-nez p3, :cond_3

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path of origin may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_3
    if-nez p5, :cond_4

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    const-string p3, "/"

    .line 138
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 140
    move-object/from16 v5, p3

    .line 141
    .local v5, "defaultPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 142
    .local v17, "lastSlashIndex":I
    if-ltz v17, :cond_7

    .line 143
    if-nez v17, :cond_6

    .line 145
    const/16 v17, 0x1

    .line 147
    :cond_6
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_7
    const/4 v15, 0x0

    .line 153
    .local v15, "isNetscapeCookie":Z
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 154
    .local v13, "i1":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_9

    .line 155
    const-string v2, "expires="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v13, v2

    .line 156
    const-string v2, ";"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 157
    .local v14, "i2":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_8

    .line 158
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v14

    .line 161
    :cond_8
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->b:Ljava/util/Collection;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/util/DateParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    const/4 v15, 0x1

    .line 167
    .end local v14    # "i2":I
    :cond_9
    :goto_0
    if-eqz v15, :cond_a

    .line 168
    const/4 v2, 0x1

    new-array v10, v2, [Lorg/apache/commons/httpclient/HeaderElement;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([C)V

    aput-object v3, v10, v2

    .line 175
    .local v10, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :goto_1
    array-length v2, v10

    new-array v8, v2, [Lorg/apache/commons/httpclient/Cookie;

    .line 177
    .local v8, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v2, v10

    if-ge v12, v2, :cond_c

    .line 179
    aget-object v11, v10, v12

    .line 180
    .local v11, "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    :try_start_1
    new-instance v1, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .local v1, "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v18

    .line 194
    .local v18, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v18, :cond_b

    .line 196
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 197
    aget-object v2, v18, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 196
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 172
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v8    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .end local v10    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v11    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .end local v12    # "i":I
    .end local v16    # "j":I
    .end local v18    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v10

    .restart local v10    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    goto :goto_1

    .line 188
    .restart local v8    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local v11    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v12    # "i":I
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .restart local v18    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_b
    aput-object v1, v8, v12

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 202
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v11    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .end local v18    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    :cond_c
    return-object v8

    .end local v8    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .end local v10    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v12    # "i":I
    .restart local v14    # "i2":I
    :catch_1
    move-exception v2

    goto :goto_0
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
    .line 243
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.parse(String, port, path, boolean, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 245
    if-nez p5, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 12
    .param p1, "attribute"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attribute may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_0
    if-nez p2, :cond_1

    .line 270
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cookie may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 272
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "paramValue":Ljava/lang/String;
    const-string v5, "path"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 277
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    :cond_2
    const-string v4, "/"

    .line 280
    :cond_3
    invoke-virtual {p2, v4}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2, v7}, Lorg/apache/commons/httpclient/Cookie;->setPathAttributeSpecified(Z)V

    .line 341
    :cond_4
    :goto_0
    return-void

    .line 283
    :cond_5
    const-string v5, "domain"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 285
    if-nez v4, :cond_6

    .line 286
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v6, "Missing value for domain attribute"

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 290
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v6, "Blank value for domain attribute"

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 293
    :cond_7
    invoke-virtual {p2, v4}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2, v7}, Lorg/apache/commons/httpclient/Cookie;->setDomainAttributeSpecified(Z)V

    goto :goto_0

    .line 296
    :cond_8
    const-string v5, "max-age"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 298
    if-nez v4, :cond_9

    .line 299
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v6, "Missing value for max-age attribute"

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    :cond_9
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 309
    .local v0, "age":I
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v5}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    goto :goto_0

    .line 305
    .end local v0    # "age":I
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid max-age attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    const-string v5, "secure"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 314
    invoke-virtual {p2, v7}, Lorg/apache/commons/httpclient/Cookie;->setSecure(Z)V

    goto :goto_0

    .line 316
    :cond_b
    const-string v5, "comment"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 318
    invoke-virtual {p2, v4}, Lorg/apache/commons/httpclient/Cookie;->setComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_c
    const-string v5, "expires"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 322
    if-nez v4, :cond_d

    .line 323
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v6, "Missing value for expires attribute"

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 328
    :cond_d
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->b:Ljava/util/Collection;

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/util/DateParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 329
    :catch_1
    move-exception v1

    .line 330
    .local v1, "dpe":Lorg/apache/commons/httpclient/util/DateParseException;
    sget-object v5, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Error parsing cookie date"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 331
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse expiration date parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    .end local v1    # "dpe":Lorg/apache/commons/httpclient/util/DateParseException;
    :cond_e
    sget-object v5, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 337
    sget-object v5, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unrecognized cookie attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "topmostPath"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 526
    .local v0, "match":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 527
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lorg/apache/commons/httpclient/cookie/CookieSpec;->PATH_DELIM_CHAR:C

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValidDateFormats(Ljava/util/Collection;)V
    .locals 0
    .param p1, "datepatterns"    # Ljava/util/Collection;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->b:Ljava/util/Collection;

    .line 350
    return-void
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .locals 4
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
    .line 369
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter CookieSpecBase.validate(String, port, path, boolean, Cookie)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host of origin may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host of origin may not be blank"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1
    if-gez p2, :cond_2

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_2
    if-nez p3, :cond_3

    .line 383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path of origin may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    const-string p3, "/"

    .line 389
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    if-gez v1, :cond_5

    .line 392
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal version number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_5
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 409
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 410
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "s":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 415
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". Domain of origin: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local v0    # "s":Ljava/lang/String;
    :cond_7
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 422
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". Domain of origin: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_8
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 432
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal path attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". Path of origin: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_9
    return-void
.end method
