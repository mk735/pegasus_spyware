.class final Lcom/lenovo/safecenter/database/AppDatabase$1;
.super Ljava/lang/Object;
.source "AppDatabase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/database/AppDatabase;->getRecentLogs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/safecenter/support/SafeLog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/database/AppDatabase;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/database/AppDatabase;)V
    .locals 0

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/lenovo/safecenter/database/AppDatabase$1;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2300
    check-cast p1, Lcom/lenovo/safecenter/support/SafeLog;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/safecenter/support/SafeLog;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
