.class public final LQQPIM/EConditionBit;
.super Ljava/lang/Object;


# static fields
.field public static final ECB_End:LQQPIM/EConditionBit;

.field public static final ECB_IsBindQQ:LQQPIM/EConditionBit;

.field public static final ECB_IsQxinOpen:LQQPIM/EConditionBit;

.field public static final ECB_IsSetEntrance:LQQPIM/EConditionBit;

.field public static final ECB_None:LQQPIM/EConditionBit;

.field public static final _ECB_End:I = 0x21

.field public static final _ECB_IsBindQQ:I = 0x2

.field public static final _ECB_IsQxinOpen:I = 0x1

.field public static final _ECB_IsSetEntrance:I = 0x3

.field public static final _ECB_None:I

.field static final synthetic a:Z

.field private static b:[LQQPIM/EConditionBit;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EConditionBit;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EConditionBit;->a:Z

    const/4 v0, 0x5

    new-array v0, v0, [LQQPIM/EConditionBit;

    sput-object v0, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    new-instance v0, LQQPIM/EConditionBit;

    const-string v3, "ECB_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EConditionBit;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EConditionBit;->ECB_None:LQQPIM/EConditionBit;

    new-instance v0, LQQPIM/EConditionBit;

    const-string v2, "ECB_IsQxinOpen"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EConditionBit;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EConditionBit;->ECB_IsQxinOpen:LQQPIM/EConditionBit;

    new-instance v0, LQQPIM/EConditionBit;

    const-string v1, "ECB_IsBindQQ"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EConditionBit;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EConditionBit;->ECB_IsBindQQ:LQQPIM/EConditionBit;

    new-instance v0, LQQPIM/EConditionBit;

    const-string v1, "ECB_IsSetEntrance"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EConditionBit;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EConditionBit;->ECB_IsSetEntrance:LQQPIM/EConditionBit;

    new-instance v0, LQQPIM/EConditionBit;

    const/4 v1, 0x4

    const/16 v2, 0x21

    const-string v3, "ECB_End"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EConditionBit;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EConditionBit;->ECB_End:LQQPIM/EConditionBit;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EConditionBit;->d:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EConditionBit;->d:Ljava/lang/String;

    iput p2, p0, LQQPIM/EConditionBit;->c:I

    sget-object v0, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EConditionBit;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EConditionBit;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LQQPIM/EConditionBit;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/EConditionBit;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EConditionBit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LQQPIM/EConditionBit;->b:[LQQPIM/EConditionBit;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LQQPIM/EConditionBit;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/EConditionBit;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EConditionBit;->c:I

    return v0
.end method
