.class public final enum Lcom/lenovo/lps/sus/b/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/lenovo/lps/sus/b/b;

.field public static final enum b:Lcom/lenovo/lps/sus/b/b;

.field public static final enum c:Lcom/lenovo/lps/sus/b/b;

.field public static final enum d:Lcom/lenovo/lps/sus/b/b;

.field public static final enum e:Lcom/lenovo/lps/sus/b/b;

.field public static final enum f:Lcom/lenovo/lps/sus/b/b;

.field public static final enum g:Lcom/lenovo/lps/sus/b/b;

.field public static final enum h:Lcom/lenovo/lps/sus/b/b;

.field public static final enum i:Lcom/lenovo/lps/sus/b/b;

.field public static final enum j:Lcom/lenovo/lps/sus/b/b;

.field public static final enum k:Lcom/lenovo/lps/sus/b/b;

.field public static final enum l:Lcom/lenovo/lps/sus/b/b;

.field public static final enum m:Lcom/lenovo/lps/sus/b/b;

.field static o:Ljava/util/Map;

.field private static final synthetic p:[Lcom/lenovo/lps/sus/b/b;


# instance fields
.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_STARTUPDATE_EVENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_UPDATE_PROMPT_EVENT"

    invoke-direct {v0, v1, v5, v5}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_INSTALLAPK_EVENT"

    invoke-direct {v0, v1, v6, v6}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_REQNEWAPPVERSION_RESPONE_EVENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->d:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_USER_REQUPDATE_EVENT"

    invoke-direct {v0, v1, v8, v8}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_USER_CHANGESETTINGS_EVENT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->f:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_QUERY_EXCEPTION_EVENT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->g:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_DOWNLOAD_EXCEPTION_EVENT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->h:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_TESTSUSSERVER_EVENT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->i:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_FINISH_EVENT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->j:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_UPDATE_USERACTION_EVENT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_REPORT_SILENCEINSTALLRESULT_EVENT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->l:Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Lcom/lenovo/lps/sus/b/b;

    const-string v1, "SUS_NOTIFICATION_INSTALL_EVENT"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->m:Lcom/lenovo/lps/sus/b/b;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/lenovo/lps/sus/b/b;

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->d:Lcom/lenovo/lps/sus/b/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->f:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->g:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->h:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->i:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->j:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->l:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->m:Lcom/lenovo/lps/sus/b/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->p:[Lcom/lenovo/lps/sus/b/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/lps/sus/b/b;->o:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lenovo/lps/sus/b/b;->n:I

    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/b/b;)I
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/b;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v0

    return v0
.end method

.method public static a(I)Lcom/lenovo/lps/sus/b/b;
    .locals 2

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/b;->c()V

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/b/b;->o:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/b;
    .locals 1

    const-class v0, Lcom/lenovo/lps/sus/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/b;

    return-object v0
.end method

.method public static b()[Lcom/lenovo/lps/sus/b/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->p:[Lcom/lenovo/lps/sus/b/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/lps/sus/b/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private static c()V
    .locals 6

    invoke-static {}, Lcom/lenovo/lps/sus/b/b;->b()[Lcom/lenovo/lps/sus/b/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    sget-object v4, Lcom/lenovo/lps/sus/b/b;->o:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/lenovo/lps/sus/b/b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/b/b;->n:I

    return v0
.end method
