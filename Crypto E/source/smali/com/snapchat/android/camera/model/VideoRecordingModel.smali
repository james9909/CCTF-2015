.class public Lcom/snapchat/android/camera/model/VideoRecordingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    .line 29
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a:Z

    .line 21
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a:Z

    return v0
.end method

.method public b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->c:Z

    .line 38
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/VideoRecordingModel;->c:Z

    return v0
.end method
