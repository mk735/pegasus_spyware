.class final enum Lcom/lenovo/safecenter/utils/Panel$c;
.super Ljava/lang/Enum;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/safecenter/utils/Panel$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/safecenter/utils/Panel$c;

.field public static final enum b:Lcom/lenovo/safecenter/utils/Panel$c;

.field public static final enum c:Lcom/lenovo/safecenter/utils/Panel$c;

.field public static final enum d:Lcom/lenovo/safecenter/utils/Panel$c;

.field public static final enum e:Lcom/lenovo/safecenter/utils/Panel$c;

.field public static final enum f:Lcom/lenovo/safecenter/utils/Panel$c;

.field private static final synthetic g:[Lcom/lenovo/safecenter/utils/Panel$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "ABOUT_TO_ANIMATE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->b:Lcom/lenovo/safecenter/utils/Panel$c;

    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "FLYING"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->e:Lcom/lenovo/safecenter/utils/Panel$c;

    new-instance v0, Lcom/lenovo/safecenter/utils/Panel$c;

    const-string v1, "CLICK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/utils/Panel$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->f:Lcom/lenovo/safecenter/utils/Panel$c;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->b:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->e:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->f:Lcom/lenovo/safecenter/utils/Panel$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->g:[Lcom/lenovo/safecenter/utils/Panel$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/safecenter/utils/Panel$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/lenovo/safecenter/utils/Panel$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/utils/Panel$c;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/safecenter/utils/Panel$c;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->g:[Lcom/lenovo/safecenter/utils/Panel$c;

    invoke-virtual {v0}, [Lcom/lenovo/safecenter/utils/Panel$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/safecenter/utils/Panel$c;

    return-object v0
.end method
