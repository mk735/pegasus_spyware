.class final Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;
.super Ljava/lang/Thread;
.source "MyProcessObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 312
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iput-object p2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->c:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method
