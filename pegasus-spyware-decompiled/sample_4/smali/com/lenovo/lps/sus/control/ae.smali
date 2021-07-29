.class public final Lcom/lenovo/lps/sus/control/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/lenovo/lps/sus/control/v;

.field private static c:Lcom/lenovo/lps/sus/SUSListener;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/Boolean;

.field private static h:Ljava/lang/String;

.field private static i:J

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v1, Lcom/lenovo/lps/sus/control/ae;->a:I

    sput-object v2, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    sput-object v2, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->d:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->e:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->g:Ljava/lang/Boolean;

    sput-object v2, Lcom/lenovo/lps/sus/control/ae;->h:Ljava/lang/String;

    sput-wide v3, Lcom/lenovo/lps/sus/control/ae;->i:J

    sput-wide v3, Lcom/lenovo/lps/sus/control/ae;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->a(I)V

    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/EventType;)V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/control/v;->a(Lcom/lenovo/lps/sus/EventType;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/SUSListener;)V
    .locals 1

    sput-object p0, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/control/v;->a(Lcom/lenovo/lps/sus/SUSListener;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JJ)V
    .locals 6

    sput-object p0, Lcom/lenovo/lps/sus/control/ae;->h:Ljava/lang/String;

    sput-wide p1, Lcom/lenovo/lps/sus/control/ae;->i:J

    sput-wide p3, Lcom/lenovo/lps/sus/control/ae;->j:J

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lps/sus/control/v;->a(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/lenovo/lps/sus/control/ap;Lcom/lenovo/lps/sus/b/e;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string v1, "The context is illegal!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "SUS input params: context=%s; updateTransactionType=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUS"

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->o(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Network unavailable!"

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "SUS"

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->u()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->e(Z)V

    :cond_2
    :goto_1
    sget-object v1, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NETWORKUNAVAILABLE:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v1, v3, v2}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p0, :cond_2

    const-string v3, "SUS_MSG_FAIL_NETWORKUNAVAILABLE"

    invoke-static {p0, v3}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/lenovo/lps/sus/control/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "isn\'t wlan connect"

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "SUS"

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p0, :cond_5

    const-string v2, "SUS_MSG_FAIL_NOWLANCONNECTED"

    invoke-static {p0, v2}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_5
    sget-object v1, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NOWLANCONNECTED:Lcom/lenovo/lps/sus/EventType;

    const-string v3, "Please open the WLAN!"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->i()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "Update pengding!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->u()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->f()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->e(Z)V

    :cond_7
    sget-object v2, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    invoke-interface {v2, v3, v1}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Lcom/lenovo/lps/sus/control/v;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/sus/control/v;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    sget-object v2, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-nez v2, :cond_9

    const-string v1, "UpdateTransaction fail!"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "SUS"

    invoke-static {v2, v1}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->c:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/ae;->a(Lcom/lenovo/lps/sus/SUSListener;)V

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->h:Ljava/lang/String;

    sget-wide v2, Lcom/lenovo/lps/sus/control/ae;->i:J

    sget-wide v4, Lcom/lenovo/lps/sus/control/ae;->j:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/lenovo/lps/sus/control/ae;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/sus/control/v;->a(Lcom/lenovo/lps/sus/control/ap;Lcom/lenovo/lps/sus/b/e;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSController finish entry"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->k()Z

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-eqz v0, :cond_1

    const-string v0, "SUS"

    const-string v1, "SUSController call dismissDialog"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/control/am;->c()V

    :goto_0
    const-string v0, "SUS"

    const-string v1, "SUSController call myUpdateTransaction finish"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/v;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    :cond_1
    const-string v0, "SUS"

    const-string v1, "SUSController finish end"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/i;->a(Z)V

    return-void
.end method

.method public static c(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->a(Z)V

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->h(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static d(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->h(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static e(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public static f(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/ae;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->f(Z)V

    return-void
.end method

.method public static g()Z
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static h(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->g(Z)V

    return-void
.end method

.method public static h()Z
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static i(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/c;->c(Z)V

    return-void
.end method

.method public static i()Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/lenovo/lps/sus/control/ae;->a:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/lenovo/lps/sus/control/ae;->a:I

    if-nez v1, :cond_1

    sget v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "updateTransactionRefNum < 0 !!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    return v0
.end method

.method public static k()Z
    .locals 2

    sget v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lenovo/lps/sus/control/ae;->a:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "updateTransactionRefNum <= 0 !!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/ae;->b:Lcom/lenovo/lps/sus/control/v;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/v;->u()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
