.class final Ltms/br;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/bs$b;


# direct methods
.method constructor <init>(Ltms/bs$b;)V
    .locals 0

    iput-object p1, p0, Ltms/br;->a:Ltms/bs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ltms/br;->a:Ltms/bs$b;

    invoke-static {v0, p0}, Ltms/bs$b;->a(Ltms/bs$b;Ltms/ax$a;)V

    return-void
.end method
