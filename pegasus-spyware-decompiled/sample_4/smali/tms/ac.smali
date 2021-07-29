.class final Ltms/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ltms/w$a;

.field final synthetic c:Ltms/w;


# direct methods
.method constructor <init>(Ltms/w;Landroid/content/Intent;Ltms/w$a;)V
    .locals 0

    iput-object p1, p0, Ltms/ac;->c:Ltms/w;

    iput-object p2, p0, Ltms/ac;->a:Landroid/content/Intent;

    iput-object p3, p0, Ltms/ac;->b:Ltms/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ltms/ac;->c:Ltms/w;

    invoke-static {v0}, Ltms/w;->b(Ltms/w;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltms/ac;->a:Landroid/content/Intent;

    iget-object v2, p0, Ltms/ac;->b:Ltms/w$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
