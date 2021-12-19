.class public final La/a/a/a/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/c;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/a/a/a/k;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/k;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;La/a/a/a/a/k;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public final b()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
