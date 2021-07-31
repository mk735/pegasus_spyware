.class public Lcom/lenovo/lps/sus/b/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/lenovo/lps/sus/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/b/c;->a:I

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    return-void
.end method

.method public static c(I)Lcom/lenovo/lps/sus/b/d;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    goto :goto_0
.end method

.method public a(Lcom/lenovo/lps/sus/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    return-void
.end method

.method public b()Lcom/lenovo/lps/sus/b/d;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/c;->b:Lcom/lenovo/lps/sus/b/d;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/sus/b/c;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/b/c;->a:I

    return v0
.end method
