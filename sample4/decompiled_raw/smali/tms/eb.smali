.class final Ltms/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/dz;


# direct methods
.method constructor <init>(Ltms/dz;)V
    .locals 0

    iput-object p1, p0, Ltms/eb;->a:Ltms/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltms/eb;->a:Ltms/dz;

    invoke-static {v0}, Ltms/dz;->a(Ltms/dz;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method
