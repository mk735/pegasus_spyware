.class public final Lledroid/utils/ReflectClass$ReflectField;
.super Ljava/lang/Object;
.source "ReflectClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/ReflectClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lledroid/utils/ReflectClass$ReflectField;, "Lledroid/utils/ReflectClass$ReflectField<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lledroid/utils/ReflectClass$ReflectField;->a:Ljava/lang/reflect/Field;

    .line 130
    iget-object v1, p0, Lledroid/utils/ReflectClass$ReflectField;->a:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lledroid/utils/ReflectClass$ReflectField;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v0, Lledroid/utils/ReflectClass$a;

    iget-object v1, p0, Lledroid/utils/ReflectClass$ReflectField;->a:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lledroid/utils/ReflectClass$a;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 132
    .local v0, "accessController":Lledroid/utils/ReflectClass$a;
    invoke-virtual {v0}, Lledroid/utils/ReflectClass$a;->a()V

    .line 134
    .end local v0    # "accessController":Lledroid/utils/ReflectClass$a;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lledroid/utils/ReflectClass$ReflectField;, "Lledroid/utils/ReflectClass$ReflectField<TT;>;"
    :try_start_0
    iget-object v0, p0, Lledroid/utils/ReflectClass$ReflectField;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    goto :goto_1
.end method
