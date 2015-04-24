.class public Lcom/snapchat/android/camera/hardware/CameraManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/camera/hardware/CameraManager;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-direct {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    .line 17
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
