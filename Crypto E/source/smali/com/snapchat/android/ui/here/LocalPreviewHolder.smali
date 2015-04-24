.class Lcom/snapchat/android/ui/here/LocalPreviewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/ui/here/LocalPreview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_1
    monitor-exit p0

    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->b()Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/snapchat/android/ui/here/LocalPreview;->a(Z)V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    .line 45
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "resetPreviewSize() UnsatisfiedLinkError"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .locals 1
    .parameter

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IIIILandroid/hardware/Camera$CameraInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    :sswitch_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/snapchat/android/ui/here/LocalPreview;->a(IIII)V

    .line 65
    iget v0, p5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget v0, p5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal camera orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :sswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->f()V

    goto :goto_0

    .line 73
    :sswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->e()V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->f()V

    goto :goto_0

    .line 77
    :sswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized a([B)V
    .locals 1
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
