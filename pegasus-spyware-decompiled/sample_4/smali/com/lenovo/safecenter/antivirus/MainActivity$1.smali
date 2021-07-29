.class final Lcom/lenovo/safecenter/antivirus/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->delVirus()V

    .line 244
    const-string v1, "del_viruslog"

    const-string v2, "done"

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
