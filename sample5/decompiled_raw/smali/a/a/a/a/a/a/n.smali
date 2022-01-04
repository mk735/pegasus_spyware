.class public final La/a/a/a/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/a/a/a/a/a/n;->a:Ljava/lang/String;

    iput-object v1, p0, La/a/a/a/a/a/n;->b:[B

    iput v0, p0, La/a/a/a/a/a/n;->c:I

    iput v0, p0, La/a/a/a/a/a/n;->d:I

    iput-object v1, p0, La/a/a/a/a/a/n;->e:[B

    iput v0, p0, La/a/a/a/a/a/n;->f:I

    iput v0, p0, La/a/a/a/a/a/n;->g:I

    iput-object p1, p0, La/a/a/a/a/a/n;->a:Ljava/lang/String;

    iput-object p2, p0, La/a/a/a/a/a/n;->b:[B

    iput v0, p0, La/a/a/a/a/a/n;->c:I

    iput p3, p0, La/a/a/a/a/a/n;->d:I

    iput-object v1, p0, La/a/a/a/a/a/n;->e:[B

    iput v0, p0, La/a/a/a/a/a/n;->f:I

    iput v0, p0, La/a/a/a/a/a/n;->g:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/n;->b:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/n;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/n;->c:I

    return v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/n;->e:[B

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/n;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, La/a/a/a/a/a/n;->g:I

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/n;->f:I

    return v0
.end method
