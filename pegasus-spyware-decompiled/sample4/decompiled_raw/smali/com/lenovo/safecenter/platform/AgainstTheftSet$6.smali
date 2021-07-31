.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->start()V

    .line 123
    return-void
.end method
