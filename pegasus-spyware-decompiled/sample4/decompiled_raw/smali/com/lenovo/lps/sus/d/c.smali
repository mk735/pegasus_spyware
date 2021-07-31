.class public Lcom/lenovo/lps/sus/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/lenovo/lps/sus/control/am;

.field private b:Landroid/content/Context;

.field private c:Lcom/lenovo/lps/sus/d/f;

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lps/sus/d/c;->a:Lcom/lenovo/lps/sus/control/am;

    iput-object v1, p0, Lcom/lenovo/lps/sus/d/c;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    iput-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->d:J

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->e:I

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->f:I

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->g:I

    iput-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->h:J

    iput-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->i:J

    new-instance v0, Lcom/lenovo/lps/sus/d/d;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/sus/d/d;-><init>(Lcom/lenovo/lps/sus/d/c;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/d/c;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->a:Lcom/lenovo/lps/sus/control/am;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/d/c;I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/sus/d/c;->f:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/d/c;J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/lps/sus/d/c;->i:J

    return-void
.end method

.method static synthetic b(Lcom/lenovo/lps/sus/d/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/lps/sus/d/c;I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/sus/d/c;->g:I

    return-void
.end method

.method static synthetic b(Lcom/lenovo/lps/sus/d/c;J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/lps/sus/d/c;->d:J

    return-void
.end method

.method static synthetic c(Lcom/lenovo/lps/sus/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/d/c;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/lenovo/lps/sus/d/c;I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/sus/d/c;->e:I

    return-void
.end method

.method static synthetic c(Lcom/lenovo/lps/sus/d/c;J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/lps/sus/d/c;->h:J

    return-void
.end method

.method static synthetic d(Lcom/lenovo/lps/sus/d/c;)I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/d/c;->e:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/lps/sus/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/d/c;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/lenovo/lps/sus/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/d/c;->h:J

    return-wide v0
.end method

.method static synthetic g(Lcom/lenovo/lps/sus/d/c;)I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/d/c;->f:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/lps/sus/d/c;)I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/d/c;->g:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/lps/sus/d/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SUS"

    const-string v1, "CustomDownloadManager finish"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/sus/d/f;->a(Lcom/lenovo/lps/sus/d/a;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/d/f;->a()V

    iput-object v2, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Context;Lcom/lenovo/lps/sus/control/am;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    iput-object p3, p0, Lcom/lenovo/lps/sus/d/c;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/lps/sus/d/c;->a:Lcom/lenovo/lps/sus/control/am;

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->a:Lcom/lenovo/lps/sus/control/am;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p8

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/sus/d/f;->a(Lcom/lenovo/lps/sus/d/a;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/d/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->h:J

    iget-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->h:J

    iput-wide v2, p0, Lcom/lenovo/lps/sus/d/c;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/d/c;->g:I

    new-instance v0, Lcom/lenovo/lps/sus/d/f;

    const-string v3, "userAgent"

    new-instance v9, Lcom/lenovo/lps/sus/d/e;

    invoke-direct {v9, p0}, Lcom/lenovo/lps/sus/d/e;-><init>(Lcom/lenovo/lps/sus/d/c;)V

    move v2, p1

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/lenovo/lps/sus/d/f;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/lang/String;Lcom/lenovo/lps/sus/d/a;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/c;->c:Lcom/lenovo/lps/sus/d/f;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/d/f;->start()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The folder isn\'t exit! path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
