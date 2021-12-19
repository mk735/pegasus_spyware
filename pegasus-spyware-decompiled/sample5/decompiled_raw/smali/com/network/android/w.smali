.class public final Lcom/network/android/w;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field static f:Ljava/util/regex/Pattern;

.field static g:Ljava/util/regex/Pattern;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x2a

    const-string v0, ".*(http:.*?)\""

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/android/w;->f:Ljava/util/regex/Pattern;

    const-string v0, ".*<d\\s*e=\"(.*?)\""

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/android/w;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/network/android/w;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/network/android/w;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/network/android/w;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/network/android/w;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/network/android/w;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "c"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "t"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/w;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
