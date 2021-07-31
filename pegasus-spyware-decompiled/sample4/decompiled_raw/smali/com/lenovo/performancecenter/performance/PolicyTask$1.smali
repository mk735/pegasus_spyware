.class final Lcom/lenovo/performancecenter/performance/PolicyTask$1;
.super Ljava/lang/Object;
.source "PolicyTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/PolicyTask;->a(Ljava/util/ArrayList;)V
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
        "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PolicyTask;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PolicyTask;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask$1;->a:Lcom/lenovo/performancecenter/performance/PolicyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 248
    check-cast p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/lenovo/performancecenter/service/object/PolicyObject;->compareTo(Lcom/lenovo/performancecenter/service/object/PolicyObject;)I

    move-result v0

    return v0
.end method
