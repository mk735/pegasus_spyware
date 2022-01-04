.class final Ltms/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/az;


# direct methods
.method constructor <init>(Ltms/az;)V
    .locals 0

    iput-object p1, p0, Ltms/am;->a:Ltms/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltms/am;->a:Ltms/az;

    invoke-virtual {v0}, Ltms/az;->cancelMissCall()V

    return-void
.end method
