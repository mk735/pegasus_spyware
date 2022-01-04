.class public Ltms/t;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltms/t;->a:I

    iput p2, p0, Ltms/t;->b:I

    iput-object p3, p0, Ltms/t;->c:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ltms/t;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Ltms/t;->a:I

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Ltms/t;->c:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ltms/t;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ltms/t;->b:I

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Ltms/t;->c:[B

    return-object v0
.end method
