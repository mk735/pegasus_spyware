.class public final Lcom/network/k/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:[I

.field public static C:Ljava/util/Set;

.field static F:Ljava/util/regex/Pattern;

.field static G:Ljava/util/regex/Pattern;

.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/Integer;

.field public static final i:Ljava/lang/Integer;

.field public static final j:Ljava/lang/Integer;

.field public static final k:Ljava/lang/Integer;

.field public static final l:Ljava/lang/Integer;

.field public static final m:Ljava/lang/Integer;

.field public static final n:Ljava/lang/Integer;

.field public static final o:Ljava/lang/Integer;

.field public static final p:Ljava/lang/Integer;

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Integer;

.field public static final s:Ljava/lang/Integer;

.field public static final t:Ljava/lang/Integer;

.field public static final u:Ljava/lang/Integer;

.field public static final v:Ljava/lang/Integer;

.field public static final w:Ljava/lang/Integer;

.field public static final x:Ljava/lang/Integer;

.field public static final y:Ljava/lang/Integer;

.field public static final z:Ljava/lang/Integer;


# instance fields
.field public B:Ljava/util/Set;

.field public D:Z

.field public E:Z

.field private H:Lcom/network/k/a/a;

.field private I:Lcom/network/k/a/a;

.field private J:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->b:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->c:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->d:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->e:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->f:Ljava/lang/Integer;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->g:Ljava/lang/Integer;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->h:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->i:Ljava/lang/Integer;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->j:Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->k:Ljava/lang/Integer;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->l:Ljava/lang/Integer;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->m:Ljava/lang/Integer;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->n:Ljava/lang/Integer;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->o:Ljava/lang/Integer;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->p:Ljava/lang/Integer;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->q:Ljava/lang/Integer;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->r:Ljava/lang/Integer;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->s:Ljava/lang/Integer;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->t:Ljava/lang/Integer;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->u:Ljava/lang/Integer;

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->v:Ljava/lang/Integer;

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->w:Ljava/lang/Integer;

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->x:Ljava/lang/Integer;

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->y:Ljava/lang/Integer;

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->z:Ljava/lang/Integer;

    const/16 v0, 0x1a

    new-array v0, v0, [I

    sget-object v1, Lcom/network/k/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v3, v1

    aput v1, v0, v2

    sget-object v1, Lcom/network/k/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v3, v1

    aput v1, v0, v3

    sget-object v1, Lcom/network/k/a/a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v3, v1

    aput v1, v0, v4

    sget-object v1, Lcom/network/k/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v3, v1

    aput v1, v0, v5

    sget-object v1, Lcom/network/k/a/a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v3, v1

    aput v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/network/k/a/a;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/network/k/a/a;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/network/k/a/a;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/network/k/a/a;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/network/k/a/a;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/network/k/a/a;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/network/k/a/a;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/network/k/a/a;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/network/k/a/a;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/network/k/a/a;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/network/k/a/a;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/network/k/a/a;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/network/k/a/a;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/network/k/a/a;->s:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/network/k/a/a;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/network/k/a/a;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/network/k/a/a;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/network/k/a/a;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/network/k/a/a;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/network/k/a/a;->y:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/network/k/a/a;->z:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int v2, v3, v2

    aput v2, v0, v1

    sput-object v0, Lcom/network/k/a/a;->A:[I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/network/k/a/a;->C:Ljava/util/Set;

    const-string v0, ".*addDataCollector\\(\\s*(\\d+)\\s*,.*"

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->F:Ljava/util/regex/Pattern;

    const-string v0, ".*removeDataCollector\\(\\s*(\\d+)\\s*\\).*"

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/k/a/a;->G:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/network/k/a/a;->H:Lcom/network/k/a/a;

    iput-object v0, p0, Lcom/network/k/a/a;->I:Lcom/network/k/a/a;

    iput-object v0, p0, Lcom/network/k/a/a;->J:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/network/k/a/a;->B:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/network/k/a/a;->D:Z

    iput-boolean v1, p0, Lcom/network/k/a/a;->E:Z

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/network/k/a/a;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
