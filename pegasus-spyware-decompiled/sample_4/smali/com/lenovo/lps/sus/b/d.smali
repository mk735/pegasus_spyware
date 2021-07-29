.class public final enum Lcom/lenovo/lps/sus/b/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/lenovo/lps/sus/b/d;

.field public static final enum b:Lcom/lenovo/lps/sus/b/d;

.field private static final synthetic c:[Lcom/lenovo/lps/sus/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/lenovo/lps/sus/b/d;

    const-string v1, "UPDATEACTION_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/sus/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    new-instance v0, Lcom/lenovo/lps/sus/b/d;

    const-string v1, "UPDATEACTION_NEWVERPROMPT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lps/sus/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/lps/sus/b/d;

    sget-object v1, Lcom/lenovo/lps/sus/b/d;->a:Lcom/lenovo/lps/sus/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/lps/sus/b/d;->c:[Lcom/lenovo/lps/sus/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/d;
    .locals 1

    const-class v0, Lcom/lenovo/lps/sus/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/d;

    return-object v0
.end method

.method public static a()[Lcom/lenovo/lps/sus/b/d;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/lenovo/lps/sus/b/d;->c:[Lcom/lenovo/lps/sus/b/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/lps/sus/b/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
