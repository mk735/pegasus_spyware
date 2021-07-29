.class public Lcom/lenovo/safecenter/support/SafeLog;
.super Ljava/lang/Object;
.source "SafeLog.java"


# instance fields
.field public action:I

.field public appDrawable:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public appSelected:I

.field public content:Ljava/lang/String;

.field public fromtype:I

.field public hassee:I

.field public id:I

.field public isUpload:I

.field public logDay:Ljava/lang/String;

.field public logSelected:I

.field public mms_type:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permName:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "action"    # I
    .param p6, "selected"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 42
    iput p5, p0, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 43
    iput p6, p0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "action"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 34
    iput p6, p0, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 35
    return-void
.end method
