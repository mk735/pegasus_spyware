.class final Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;
.super Ljava/lang/Thread;
.source "MyProcessObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iput-object p2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 139
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insterApp ---:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
