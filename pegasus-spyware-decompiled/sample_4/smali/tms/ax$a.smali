.class abstract Ltms/ax$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

.field private b:I

.field private c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ltms/ax$a;I)I
    .locals 0

    iput p1, p0, Ltms/ax$a;->b:I

    return p1
.end method

.method static synthetic a(Ltms/ax$a;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 1

    iget-object v0, p0, Ltms/ax$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-object v0
.end method

.method static synthetic a(Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;
    .locals 0

    iput-object p1, p0, Ltms/ax$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    return-object p1
.end method

.method static synthetic a(Ltms/ax$a;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Ltms/ax$a;->d:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Ltms/ax$a;I)I
    .locals 0

    iput p1, p0, Ltms/ax$a;->e:I

    return p1
.end method

.method static synthetic b(Ltms/ax$a;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/ax$a;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;
    .locals 1

    iget-object v0, p0, Ltms/ax$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 0

    iput-object p1, p0, Ltms/ax$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ltms/ax$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ltms/ax$a;->b:I

    return v0
.end method

.method public final c()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltms/ax$a;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ltms/ax$a;->e:I

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltms/ax$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method abstract f()Z
.end method

.method abstract g()V
.end method
