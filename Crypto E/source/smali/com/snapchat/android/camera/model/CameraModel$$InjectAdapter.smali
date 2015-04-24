.class public final Lcom/snapchat/android/camera/model/CameraModel$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/camera/model/CameraModel;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/camera/model/CameraModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.snapchat.android.camera.model.CameraModel"

    const-string v1, "members/com.snapchat.android.camera.model.CameraModel"

    const/4 v2, 0x1

    const-class v3, Lcom/snapchat/android/camera/model/CameraModel;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/camera/model/CameraModel;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/camera/model/CameraModel;

    invoke-direct {v0}, Lcom/snapchat/android/camera/model/CameraModel;-><init>()V

    .line 28
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/snapchat/android/camera/model/CameraModel$$InjectAdapter;->a()Lcom/snapchat/android/camera/model/CameraModel;

    move-result-object v0

    return-object v0
.end method
