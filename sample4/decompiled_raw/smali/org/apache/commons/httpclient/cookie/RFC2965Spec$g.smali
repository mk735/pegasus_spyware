.class final Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;->a:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;B)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$g;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public final match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    .line 1019
    const/4 v0, 0x1

    return v0
.end method

.method public final parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "commenturl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1008
    instance-of v1, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1009
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 1010
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setCommentURL(Ljava/lang/String;)V

    .line 1012
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_0
    return-void
.end method

.method public final validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1016
    return-void
.end method
