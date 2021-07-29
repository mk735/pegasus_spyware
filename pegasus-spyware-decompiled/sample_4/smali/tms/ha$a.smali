.class final Ltms/ha$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Ltms/ha;


# direct methods
.method private constructor <init>(Ltms/ha;)V
    .locals 0

    iput-object p1, p0, Ltms/ha$a;->c:Ltms/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/ha;B)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/ha$a;-><init>(Ltms/ha;)V

    return-void
.end method
