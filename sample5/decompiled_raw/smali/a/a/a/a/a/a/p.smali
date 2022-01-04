.class public La/a/a/a/a/a/p;
.super La/a/a/a/a/a/l;


# instance fields
.field private a:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/a/a/l;-><init>()V

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/p;->a:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method protected final b(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/p;->a:Ljava/util/ResourceBundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MqttException"

    goto :goto_0
.end method
