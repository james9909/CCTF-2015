.class public Lcom/snapchat/android/util/eventbus/CameraStateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 16
    return-void
.end method

.method public constructor <init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->a:Z

    .line 20
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 21
    return-void
.end method
