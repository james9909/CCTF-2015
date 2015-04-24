.class public final Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideDeviceVideoEncodingResolutionSetProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/snapchat/android/util/dagger/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V
    .locals 4
    .parameter

    .prologue
    .line 377
    const-string v0, "com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet"

    const/4 v1, 0x0

    const-string v2, "com.snapchat.android.util.dagger.AndroidModule"

    const-string v3, "provideDeviceVideoEncodingResolutionSet"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;->c(Z)V

    .line 380
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-virtual {v0}, Lcom/snapchat/android/util/dagger/AndroidModule;->k()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;->a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v0

    return-object v0
.end method
