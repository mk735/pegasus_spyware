.class public Lcom/lenovo/lps/sus/control/v;
.super Ljava/lang/Object;


# static fields
.field private static X:Lcom/lenovo/lps/sus/control/an;

.field public static a:Ljava/lang/String;

.field private static synthetic aa:[I

.field private static synthetic ab:[I

.field public static b:Z


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Lcom/lenovo/lps/sus/control/z;

.field private G:Ljava/lang/String;

.field private H:Lcom/lenovo/lps/sus/control/ah;

.field private I:Ljava/lang/String;

.field private J:Ljava/io/File;

.field private K:Ljava/lang/String;

.field private L:J

.field private M:Ljava/lang/String;

.field private N:Lcom/lenovo/lps/sus/SUSListener;

.field private O:Lcom/lenovo/lps/sus/SUSListener;

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:J

.field private S:I

.field private T:I

.field private U:I

.field private V:J

.field private W:J

.field private Y:Lcom/lenovo/lps/sus/control/ap;

.field private Z:Lcom/lenovo/lps/sus/control/ai;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Lcom/lenovo/lps/sus/control/am;

.field private f:Lcom/lenovo/lps/sus/b/c;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/lps/sus/control/v;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/sus/control/v;->b:Z

    sput-object v1, Lcom/lenovo/lps/sus/control/v;->X:Lcom/lenovo/lps/sus/control/an;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    iput v3, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->A:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/control/v;->B:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/control/v;->C:Z

    iput-boolean v3, p0, Lcom/lenovo/lps/sus/control/v;->D:Z

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->H:Lcom/lenovo/lps/sus/control/ah;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    iput-wide v1, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->P:Ljava/lang/String;

    iput-wide v1, p0, Lcom/lenovo/lps/sus/control/v;->Q:J

    iput-wide v1, p0, Lcom/lenovo/lps/sus/control/v;->R:J

    iput v3, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    iput v3, p0, Lcom/lenovo/lps/sus/control/v;->T:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    iput-wide v1, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    iput-wide v1, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    sget-object v0, Lcom/lenovo/lps/sus/control/ap;->a:Lcom/lenovo/lps/sus/control/ap;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    sget-object v0, Lcom/lenovo/lps/sus/control/ai;->a:Lcom/lenovo/lps/sus/control/ai;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->Z:Lcom/lenovo/lps/sus/control/ai;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use activity\'s context,context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/lenovo/lps/sus/control/f;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/sus/control/f;-><init>(Lcom/lenovo/lps/sus/control/v;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    new-instance v0, Lcom/lenovo/lps/sus/control/am;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/sus/control/am;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mySUSUIHandler="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use ApplicationContext,myApplicationContext="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/lenovo/lps/sus/b/a;)Ljava/lang/String;
    .locals 4

    const-string v0, "{\"RES\":\"NOTFOUND\"}"

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SUCCESS"

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"RES\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"ChannelKey\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    const-string v2, "Common"

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->i()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"VerCode\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"VerName\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"DownloadURL\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"Size\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"UpdateDesc\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"FileName\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"ForceUpdate\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"CustKey\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "LATESTVERSION"

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "{\"RES\":\"LATESTVERSION\"}"

    goto/16 :goto_0

    :cond_4
    const-string v1, "NOTFOUND"

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "{\"RES\":\"NOTFOUND\"}"

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/sus/control/v;->a:Ljava/lang/String;

    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"RES\":\"NOTFOUND\"}"

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"RES\":\"LATESTVERSION\"}"

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"RES\":\"EXCEPTION\"}"

    return-object v0
.end method

.method private static synthetic v()[I
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/control/v;->aa:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/control/ap;->a()[Lcom/lenovo/lps/sus/control/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->f:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->g:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->c:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->e:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->d:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->i:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->h:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->b:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->a:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->j:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->k:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/lenovo/lps/sus/control/ap;->l:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/lenovo/lps/sus/control/v;->aa:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method private static synthetic w()[I
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/control/v;->ab:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/b/b;->b()[Lcom/lenovo/lps/sus/b/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->h:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->j:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->m:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->g:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->l:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->d:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->i:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->f:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/lenovo/lps/sus/control/v;->ab:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "SUS"

    const-string v1, "UpdateTransaction finish entry"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    if-eqz v0, :cond_0

    const-string v0, "SUS"

    const-string v1, "UpdateTransaction call mySUSUIHandler finish"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/am;->a()V

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    :cond_0
    iput-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/v;->P:Ljava/lang/String;

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->Q:J

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->R:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    const-string v0, "SUS"

    const-string v1, "UpdateTransaction finish end"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lps/sus/b/c;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/c;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/sus/b/c;->a(I)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/sus/b/c;->b(I)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v1, "SUS_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SUS_UPDATEACTIONTYPE"

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/b/c;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SUS_NEWVERSIONCODE"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 12

    const/4 v2, 0x2

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/lenovo/lps/sus/b/b;->a(I)Lcom/lenovo/lps/sus/b/b;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->w()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/lps/sus/control/v;->a(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/v;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUS_UPDATE_PROMPT_MSG mySUSUIHandler="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :cond_2
    move v0, v7

    :goto_1
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->h()Lcom/lenovo/lps/sus/b/d;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->d()Z

    move-result v1

    if-nez v1, :cond_30

    :goto_2
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/lps/sus/b/a;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/b/c;->b()Lcom/lenovo/lps/sus/b/d;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v6}, Lcom/lenovo/lps/sus/control/am;->a(Lcom/lenovo/lps/sus/b/a;Lcom/lenovo/lps/sus/b/d;Z)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v7

    goto :goto_1

    :pswitch_7
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->B:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_3
    :pswitch_8
    move v0, v6

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    const-string v0, "FAIL"

    :cond_5
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_TESTSERVER_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v1, v2, v0}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_6
    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :pswitch_a
    if-eqz p1, :cond_2f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    :goto_3
    if-nez v8, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    :cond_7
    iput-boolean v6, p0, Lcom/lenovo/lps/sus/control/v;->D:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->P:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v6, p0, Lcom/lenovo/lps/sus/control/v;->P:Ljava/lang/String;

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->Q:J

    iget-wide v2, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    iget-wide v4, p0, Lcom/lenovo/lps/sus/control/v;->R:J

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/c/c;->a(JJJ)Z

    move-result v0

    move-object v3, v6

    :cond_8
    :goto_4
    const-string v1, "SUS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "downloadpath="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_c

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v1, "SUS_MSG_INSUFFICIENTSTORAGESPACE"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_9
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INSUFFICIENTSTORAGESPACE:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "insufficient storage space"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    :cond_a
    const-string v0, "SUS"

    const-string v1, "INSUFFICIENTSTORAGESPACE"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->D:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/control/v;->D:Z

    invoke-static {v3, v0, v1}, Lcom/lenovo/lps/sus/c/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/c;->e(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/c;->a(J)Z

    move-result v0

    goto/16 :goto_4

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The folder isn\'t exit! path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_DOWNOLADFOLDER_FOLDER_NOTEXIST:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "The download folder does not exist."

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    :cond_f
    const-string v0, "SUS"

    const-string v1, "The download folder does not exist."

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {v3}, Lcom/lenovo/lps/sus/control/v;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    iget v1, p0, Lcom/lenovo/lps/sus/control/v;->T:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->T:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_DOWNLOADSTART:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "Start the downloading"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    if-eqz v0, :cond_12

    if-eqz v3, :cond_12

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->e:Lcom/lenovo/lps/sus/control/am;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    iget-wide v5, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    iget-object v7, p0, Lcom/lenovo/lps/sus/control/v;->Z:Lcom/lenovo/lps/sus/control/ai;

    move v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/sus/control/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/lenovo/lps/sus/control/ai;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "SUS"

    const-string v1, "updateHandler exception."

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/lps/sus/EventType;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/EventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "user click the confirm button!"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    :goto_5
    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :cond_15
    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity popupPromptionDialog PositiveButton myMSGHandler=null"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CANCEL:Lcom/lenovo/lps/sus/EventType;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "user click the cancel button!"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/lenovo/lps/sus/control/ap;->d:Lcom/lenovo/lps/sus/control/ap;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->C:Z

    if-nez v0, :cond_17

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_19

    :cond_18
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_19
    const-string v0, "SUS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle SUS_INSTALLAPK_EVENT,file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->f()Ljava/lang/String;

    new-instance v0, Lcom/lenovo/lps/sus/control/ah;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->G:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/lenovo/lps/sus/control/ah;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->H:Lcom/lenovo/lps/sus/control/ah;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->H:Lcom/lenovo/lps/sus/control/ah;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->H:Lcom/lenovo/lps/sus/control/ah;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/ah;->start()V

    :goto_6
    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->G:Ljava/lang/String;

    sget-object v0, Lcom/lenovo/lps/sus/control/ap;->j:Lcom/lenovo/lps/sus/control/ap;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    if-ne v0, v2, :cond_1d

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v2, "SUS_MSG_DOWNLOADCOMPLETE"

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1a
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_DOWNLOADCOMPLETE:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v0, v2, v1}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_1b
    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "SUS"

    const-string v2, "mySUSResInfoThread == null!"

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1d
    sget-object v0, Lcom/lenovo/lps/sus/control/ap;->k:Lcom/lenovo/lps/sus/control/ap;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    if-eq v0, v2, :cond_1f

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v2, "SUS_MSG_DOWNLOADCOMPLETE"

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1e
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_DOWNLOADCOMPLETE:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v0, v2, v1}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_1f
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->D:Z

    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->y()I

    move-result v0

    if-lez v0, :cond_20

    const-string v0, "SUS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777,filename="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "777"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->y()I

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/lenovo/lps/sus/SUSListener;IZ)V

    :cond_21
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/lps/sus/c/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/lenovo/lps/sus/control/am;->c()V

    :goto_7
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v1, "SUS_MSG_UPDATE_EXCEPTION"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_22
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    const-string v2, "EXCEPTION"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :cond_23
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->v()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b()V

    goto :goto_7

    :cond_24
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a()V

    goto :goto_7

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    if-ge v1, v2, :cond_2a

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    if-ne v7, v0, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->u()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {v7}, Lcom/lenovo/lps/sus/c/c;->e(Z)V

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    :cond_26
    :goto_8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_27
    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    if-ne v2, v0, :cond_26

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2328

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    :cond_28
    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    :cond_29
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->u()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v7}, Lcom/lenovo/lps/sus/c/c;->e(Z)V

    goto :goto_8

    :cond_2a
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->w()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/lenovo/lps/sus/control/am;->c()V

    :goto_9
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v2, "SUS_MSG_UPDATE_EXCEPTION"

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v2, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2b
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->j:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2c
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_DOWNLOAD_EXCEPTION:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v0, v1, v9}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :cond_2d
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->v()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b()V

    goto :goto_9

    :cond_2e
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a()V

    goto :goto_9

    :pswitch_10
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_2f
    move v8, v6

    goto/16 :goto_3

    :cond_30
    move v6, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_e
        :pswitch_f
        :pswitch_9
        :pswitch_10
        :pswitch_b
        :pswitch_0
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/lenovo/lps/sus/EventType;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/lenovo/lps/sus/SUSListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    return-void
.end method

.method public a(Lcom/lenovo/lps/sus/control/ap;Lcom/lenovo/lps/sus/b/e;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "SUS"

    const-string v1, "startUpdateTransaction!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    sget-object v0, Lcom/lenovo/lps/sus/control/ai;->a:Lcom/lenovo/lps/sus/control/ai;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->Z:Lcom/lenovo/lps/sus/control/ai;

    iput v2, p0, Lcom/lenovo/lps/sus/control/v;->S:I

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->U:I

    :cond_0
    iput v2, p0, Lcom/lenovo/lps/sus/control/v;->T:I

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->W:J

    iput-wide v3, p0, Lcom/lenovo/lps/sus/control/v;->V:J

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->e()Z

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->g()Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_1
    :sswitch_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getappinfo fail!"

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "SUS"

    invoke-static {v1, v0}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/lenovo/lps/sus/b/e;->d:Z

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->B:Z

    iget-boolean v0, p2, Lcom/lenovo/lps/sus/b/e;->e:Z

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/v;->C:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/v;->r()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/control/v;->L:J

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/e;->a:Ljava/lang/String;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/sus/c/a;->b()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/lenovo/lps/sus/control/z;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 20

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    const-string v3, "SUS-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v3, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "responeStr = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SUS-"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-string v14, "No"

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "SUSRESINFO"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v13, "RES"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string v13, "SUCCESS"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const-string v13, "VerCode"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "VerName"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "DownloadURL"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Size"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "UpdateDesc"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v16, "FileName"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "ChannelKey"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, "PackageID"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :try_start_1
    const-string v18, "CtrlKey"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    :goto_1
    :try_start_2
    const-string v18, "CustKey"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    :goto_2
    :try_start_3
    const-string v18, "IT"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_7

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_7

    const-string v12, "it_si_noprompt"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->b(I)V

    :cond_7
    :goto_4
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_11

    invoke-static {v15}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/lps/sus/control/v;->L:J

    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    invoke-static {v8}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    const/4 v9, 0x1

    :cond_9
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    invoke-static/range {v17 .. v17}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    :cond_a
    const/4 v9, 0x1

    :goto_6
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_13

    invoke-static {v11}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    :goto_7
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ltz v10, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ltz v10, :cond_b

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    if-ltz v10, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ltz v10, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_c

    :cond_b
    const/4 v9, 0x1

    :cond_c
    invoke-static {v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lenovo/lps/sus/control/v;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/lenovo/lps/sus/control/v;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/lps/sus/control/v;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/lenovo/lps/sus/c/c;->aK:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/2addr v10, v11

    sget-object v11, Lcom/lenovo/lps/sus/c/c;->aK:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/lenovo/lps/sus/c/a;->a(Landroid/content/Context;Z)V

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->M:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/lenovo/lps/sus/c/c;->aJ:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/2addr v10, v11

    sget-object v11, Lcom/lenovo/lps/sus/c/c;->aJ:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v14, "Yes"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    :goto_9
    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParamException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->q()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v4, v5, v3}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    goto/16 :goto_0

    :cond_e
    :try_start_5
    const-string v12, "it_si_notification"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->b(I)V

    goto/16 :goto_4

    :catch_0
    move-exception v9

    const/4 v9, 0x1

    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    goto :goto_9

    :cond_f
    const-string v12, "it_si_normal"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->b(I)V

    goto/16 :goto_4

    :cond_10
    const-string v12, "it_sdk_autocheck"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v10, 0x4

    invoke-static {v10}, Lcom/lenovo/lps/sus/c/c;->b(I)V

    goto/16 :goto_4

    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/lps/sus/control/v;->l:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/lenovo/lps/sus/c/a;->a(Landroid/content/Context;Z)V

    goto/16 :goto_8

    :cond_15
    const-string v14, "No"

    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    goto/16 :goto_9

    :cond_16
    const-string v10, "LATESTVERSION"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    const-string v10, "NOTFOUND"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    const-string v10, "EXCEPTION"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v10

    if-nez v10, :cond_21

    const/4 v9, 0x1

    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    goto/16 :goto_9

    :cond_17
    new-instance v3, Lcom/lenovo/lps/sus/b/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/lps/sus/control/v;->g:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/control/v;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/lps/sus/control/v;->L:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    invoke-direct/range {v3 .. v15}, Lcom/lenovo/lps/sus/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SUCCESS"

    invoke-virtual {v3}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/lps/sus/control/v;->h()Lcom/lenovo/lps/sus/b/d;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v7}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_18
    sget-object v6, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    if-ne v6, v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/lps/sus/control/v;->i()I

    move-result v4

    if-le v5, v4, :cond_19

    sget-object v4, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v4}, Lcom/lenovo/lps/sus/b/d;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/lps/sus/control/v;->a(II)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v4, :cond_1a

    invoke-static {v3}, Lcom/lenovo/lps/sus/control/v;->a(Lcom/lenovo/lps/sus/b/a;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v6, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v5, v6, v4}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    :cond_1a
    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v5}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    const-string v4, "SUCCESS"

    invoke-virtual {v3}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/lenovo/lps/sus/c/a;->c()V

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->x()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    const-string v3, "SUS"

    const-string v4, "SilentInstall sendEvent SUS_UPDATEPROMPT_USER_CONFIRM"

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/sus/control/v;->a(Lcom/lenovo/lps/sus/EventType;)V

    goto/16 :goto_0

    :pswitch_0
    sget-object v6, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    if-ne v6, v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/lps/sus/control/v;->i()I

    move-result v6

    if-gt v5, v6, :cond_18

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->d()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {}, Lcom/lenovo/lps/sus/c/a;->a()V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->N:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/lps/sus/control/v;->O:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_1c
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v5}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1d
    const-string v4, "LATESTVERSION"

    invoke-virtual {v3}, Lcom/lenovo/lps/sus/b/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v4, "SUS_MSG_LATESTVERSION"

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1e
    const-string v3, "SUS"

    const-string v4, "LATESTVERSION"

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_1f
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v4, "SUS_MSG_NOTFOUND"

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_20
    const-string v3, "SUS"

    const-string v4, "NOTFOUND"

    invoke-static {v3, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :catch_1
    move-exception v12

    goto/16 :goto_3

    :catch_2
    move-exception v18

    goto/16 :goto_2

    :catch_3
    move-exception v18

    goto/16 :goto_1

    :cond_21
    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    goto/16 :goto_9

    :cond_22
    move-object v12, v3

    move-object v11, v4

    move-object v15, v5

    move-object v10, v6

    move-object v6, v8

    move v3, v9

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/v;->P:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/lps/sus/control/v;->Q:J

    iput-wide p4, p0, Lcom/lenovo/lps/sus/control/v;->R:J

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->J:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Lcom/lenovo/lps/sus/control/z;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/sus/control/z;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/z;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SUS"

    const-string v1, "myReqNewAppVersionThread == null!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "SUS"

    const-string v2, " null == myApplicationContext "

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->e(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    iget v1, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    if-gez v1, :cond_1

    const-string v1, "VersionCode fail!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "VersionName is null!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    :cond_4
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "PackageName fail!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    :cond_9
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const-string v1, "AppName fail!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->t:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->u:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->v:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->w:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->x:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->y:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->A:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->n:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/sus/control/v;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/lps/sus/control/v;->p:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/lenovo/lps/sus/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->G:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 17

    invoke-static {}, Lcom/lenovo/lps/sus/control/v;->v()[I

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/control/v;->Y:Lcom/lenovo/lps/sus/control/ap;

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/control/ap;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "ReqKey fail!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_1
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/lps/sus/control/v;->g:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/lps/sus/control/v;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/control/v;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/control/v;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/lps/sus/control/v;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lps/sus/control/v;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/sus/control/v;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/lps/sus/control/v;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/lps/sus/control/v;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/control/v;->A:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/lenovo/lps/sus/c/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v1, "http://susapi.lenovomm.com/adpserver/ctrl?CtrlType=testConnect"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/lps/sus/control/v;->g:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/control/v;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/lps/sus/control/v;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/lps/sus/control/v;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/control/v;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/control/v;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/control/v;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/lps/sus/control/v;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lps/sus/control/v;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/sus/control/v;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/lps/sus/control/v;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/lps/sus/control/v;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/control/v;->A:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/lenovo/lps/sus/c/c;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v1, "SUS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "myReqKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public h()Lcom/lenovo/lps/sus/b/d;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/sus/b/c;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/c;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v1, "SUS_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SUS_UPDATEACTIONTYPE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SUS_NEWVERSIONCODE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v2, v1}, Lcom/lenovo/lps/sus/b/c;->a(I)V

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/b/c;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/c;->b()Lcom/lenovo/lps/sus/b/d;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->f:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/c;->c()I

    move-result v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->E:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/control/v;->g:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/lenovo/lps/sus/control/z;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->F:Lcom/lenovo/lps/sus/control/z;

    return-object v0
.end method

.method public r()V
    .locals 2

    new-instance v0, Lcom/lenovo/lps/sus/control/an;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->d:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/lenovo/lps/sus/control/an;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/lenovo/lps/sus/control/v;->X:Lcom/lenovo/lps/sus/control/an;

    sget-object v0, Lcom/lenovo/lps/sus/control/v;->X:Lcom/lenovo/lps/sus/control/an;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/v;->X:Lcom/lenovo/lps/sus/control/an;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/an;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SUS"

    const-string v1, "startTestSUSServerThread == null!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public s()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v2, "SUS_REAPERAPPINFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SUS_REAPERAPPINFO_LASTTIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t()V
    .locals 5

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    const-string v1, "SUS_REAPERAPPINFO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "SUS_REAPERAPPINFO_LASTTIME"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public u()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/v;->c:Landroid/content/Context;

    return-object v0
.end method
