.class final Lledroid/utils/ReflectClass$a$1;
.super Ljava/lang/Object;
.source "ReflectClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/utils/ReflectClass$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lledroid/utils/ReflectClass$a;


# direct methods
.method constructor <init>(Lledroid/utils/ReflectClass$a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lledroid/utils/ReflectClass$a$1;->a:Lledroid/utils/ReflectClass$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lledroid/utils/ReflectClass$a$1;->a:Lledroid/utils/ReflectClass$a;

    invoke-static {v0}, Lledroid/utils/ReflectClass$a;->a(Lledroid/utils/ReflectClass$a;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/utils/ReflectClass$a$1;->a:Lledroid/utils/ReflectClass$a;

    invoke-static {v0}, Lledroid/utils/ReflectClass$a;->a(Lledroid/utils/ReflectClass$a;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    iget-object v1, p0, Lledroid/utils/ReflectClass$a$1;->a:Lledroid/utils/ReflectClass$a;

    invoke-static {v1}, Lledroid/utils/ReflectClass$a;->b(Lledroid/utils/ReflectClass$a;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
