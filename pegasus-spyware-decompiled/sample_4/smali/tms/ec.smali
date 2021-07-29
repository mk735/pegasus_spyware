.class final Ltms/ec;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Ltms/dz;


# direct methods
.method constructor <init>(Ltms/dz;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Ltms/ec;->a:Ltms/dz;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Ltms/ec;->a:Ltms/dz;

    invoke-static {v0}, Ltms/dz;->b(Ltms/dz;)Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    move-result-object v0

    iget-object v1, p0, Ltms/ec;->a:Ltms/dz;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->onCreate(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    iget-object v0, p0, Ltms/ec;->a:Ltms/dz;

    invoke-static {v0}, Ltms/dz;->b(Ltms/dz;)Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    move-result-object v0

    iget-object v1, p0, Ltms/ec;->a:Ltms/dz;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->onUpgrade(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
