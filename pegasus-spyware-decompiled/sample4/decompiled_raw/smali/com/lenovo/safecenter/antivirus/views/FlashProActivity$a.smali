.class final Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;
.super Landroid/view/View;
.source "FlashProActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

.field private b:Landroid/graphics/Movie;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    .line 112
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->setFocusable(Z)V

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    .line 122
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 125
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 127
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 131
    .local v1, "now":J
    iget-wide v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->c:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 133
    iput-wide v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->c:J

    .line 137
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 141
    .local v0, "dur":I
    if-nez v0, :cond_1

    .line 143
    const/16 v0, 0x3e8

    .line 147
    :cond_1
    iget-wide v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->c:J

    sub-long v5, v1, v5

    int-to-long v7, v0

    rem-long/2addr v5, v7

    long-to-int v4, v5

    .line 151
    .local v4, "relTime":I
    if-lt v4, v0, :cond_3

    .line 153
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    .line 169
    .end local v0    # "dur":I
    .end local v4    # "relTime":I
    :cond_2
    :goto_0
    return-void

    .line 159
    .restart local v0    # "dur":I
    .restart local v4    # "relTime":I
    :cond_3
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    invoke-virtual {v5, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 161
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->b:Landroid/graphics/Movie;

    invoke-virtual {v5, p1, v9, v9}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 163
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;->invalidate()V

    goto :goto_0
.end method
