.class public La/a/a/a/a/a/a/a;
.super Ljava/lang/Exception;


# instance fields
.field protected a:J

.field protected b:[Ljava/lang/Object;

.field protected c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/a/a/a/a/a/a;->a:J

    iput-object v2, p0, La/a/a/a/a/a/a/a;->b:[Ljava/lang/Object;

    iput-object v2, p0, La/a/a/a/a/a/a/a;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/a/a/a/a/a/a;->a:J

    iput-object v2, p0, La/a/a/a/a/a/a/a;->b:[Ljava/lang/Object;

    iput-object v2, p0, La/a/a/a/a/a/a/a;->c:Ljava/lang/Throwable;

    iput-wide p1, p0, La/a/a/a/a/a/a/a;->a:J

    iput-object p3, p0, La/a/a/a/a/a/a/a;->b:[Ljava/lang/Object;

    iput-object p4, p0, La/a/a/a/a/a/a/a;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/a/a;->c:Ljava/lang/Throwable;

    return-object v0
.end method
