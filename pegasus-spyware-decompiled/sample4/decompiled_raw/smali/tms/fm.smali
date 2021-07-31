.class final Ltms/fm;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ltms/gn$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ltms/gn$d;


# direct methods
.method constructor <init>(Ltms/gn$d;Ltms/gn$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/fm;->c:Ltms/gn$d;

    iput-object p2, p0, Ltms/fm;->a:Ltms/gn$a;

    iput-object p3, p0, Ltms/fm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Ltms/fm;->c:Ltms/gn$d;

    iget-object v0, v0, Ltms/gn$d;->a:Ltms/gn;

    invoke-static {v0}, Ltms/gn;->a(Ltms/gn;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/fm;->a:Ltms/gn$a;

    iget-object v2, p0, Ltms/fm;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ltms/gn$a;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
