.class public final Ltms/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltms/af;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TMSProperties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltms/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;FZ)V
    .locals 2

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ltms/af;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ltms/af;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JZ)V
    .locals 2

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ltms/af;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ltms/af;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Ltms/af;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ltms/af;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Ltms/af;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ltms/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
