.class final Lcom/lenovo/safecenter/utils/Untils$a;
.super Ljava/lang/Object;
.source "Untils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/Untils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "countryCode"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/lenovo/safecenter/utils/Untils$a;->a:I

    .line 216
    iput p2, p0, Lcom/lenovo/safecenter/utils/Untils$a;->b:I

    .line 217
    return-void
.end method
