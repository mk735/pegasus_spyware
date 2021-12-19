.class final Lcom/network/ussd/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/network/ussd/CDUSSDService$2;


# direct methods
.method constructor <init>(Lcom/network/ussd/CDUSSDService$2;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/network/ussd/b;->b:Lcom/network/ussd/CDUSSDService$2;

    iput-object p2, p0, Lcom/network/ussd/b;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/network/ussd/b;->b:Lcom/network/ussd/CDUSSDService$2;

    iget-object v1, p0, Lcom/network/ussd/b;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/network/ussd/CDUSSDService$2;->a(Lcom/network/ussd/CDUSSDService$2;Ljava/lang/CharSequence;)V

    return-void
.end method
