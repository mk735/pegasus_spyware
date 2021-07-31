.class public Lcom/lenovo/safecenter/utils/SmsObserver;
.super Landroid/database/ContentObserver;
.source "SmsObserver.java"


# static fields
.field private static b:I


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/safecenter/utils/SmsObserver;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 20
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/SmsObserver;->a:Landroid/content/Context;

    .line 22
    const-string v0, "wu0wu"

    const-string v1, "Lesafe SmsObserver on create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 28
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==sms onChange  start==count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/safecenter/utils/SmsObserver;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/SmsObserver;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/SmsUtil;->monitorSmsState(Landroid/content/Context;)V

    .line 31
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==sms onChange  end==count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/safecenter/utils/SmsObserver;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget v0, Lcom/lenovo/safecenter/utils/SmsObserver;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/safecenter/utils/SmsObserver;->b:I

    .line 34
    return-void
.end method
