.class final Lledroid/utils/ReflectClass$a;
.super Ljava/lang/Object;
.source "ReflectClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/ReflectClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/AccessibleObject;

.field private b:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .param p1, "member"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lledroid/utils/ReflectClass$a;->b:Ljava/lang/Boolean;

    .line 199
    iput-object p1, p0, Lledroid/utils/ReflectClass$a;->a:Ljava/lang/reflect/AccessibleObject;

    .line 200
    return-void
.end method

.method static synthetic a(Lledroid/utils/ReflectClass$a;)Ljava/lang/reflect/AccessibleObject;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/ReflectClass$a;

    .prologue
    .line 194
    iget-object v0, p0, Lledroid/utils/ReflectClass$a;->a:Ljava/lang/reflect/AccessibleObject;

    return-object v0
.end method

.method static synthetic b(Lledroid/utils/ReflectClass$a;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/ReflectClass$a;

    .prologue
    .line 194
    iget-object v0, p0, Lledroid/utils/ReflectClass$a;->b:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lledroid/utils/ReflectClass$a;->b:Ljava/lang/Boolean;

    .line 204
    new-instance v0, Lledroid/utils/ReflectClass$a$1;

    invoke-direct {v0, p0}, Lledroid/utils/ReflectClass$a$1;-><init>(Lledroid/utils/ReflectClass$a;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 213
    return-void
.end method
