.class public Lcom/lenovo/safecenter/utils/CallLogObserver;
.super Landroid/database/ContentObserver;
.source "CallLogObserver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/CallLogObserver;->a:Landroid/content/Context;

    .line 21
    const-string v0, "wu0wu"

    const-string v1, "Lesafe CallLogObserver on create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 25
    const-string v0, "wu0wu"

    const-string v1, "============CallLog onChange============"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/CallLogObserver;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/CallUtil;->statisticsCallDurationByType(Landroid/content/Context;)V

    .line 27
    return-void
.end method
