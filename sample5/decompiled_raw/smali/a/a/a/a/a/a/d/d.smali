.class public final La/a/a/a/a/a/d/d;
.super Ljava/lang/Object;


# instance fields
.field public a:S

.field public b:J

.field public c:B

.field public d:S

.field public e:B

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Throwable;

.field public h:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, La/a/a/a/a/a/d/d;->a:S

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/d/d;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/a/a/d/d;->b:J

    const/4 v0, 0x5

    iput-byte v0, p0, La/a/a/a/a/a/d/d;->c:B

    const/4 v0, 0x1

    iput-byte v0, p0, La/a/a/a/a/a/d/d;->e:B

    int-to-short v0, p2

    iput-short v0, p0, La/a/a/a/a/a/d/d;->d:S

    iput-object p3, p0, La/a/a/a/a/a/d/d;->g:Ljava/lang/Throwable;

    iput-object p4, p0, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    return-void
.end method
