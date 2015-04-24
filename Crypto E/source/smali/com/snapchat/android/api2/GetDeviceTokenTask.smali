.class public Lcom/snapchat/android/api2/GetDeviceTokenTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/device_id"

.field private static final TAG:Ljava/lang/String; = "GetDeviceTokenTask"


# instance fields
.field private final mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/api2/GetDeviceTokenTask;-><init>(Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/snapchat/android/api2/GetDeviceTokenTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 29
    const-class v0, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/GetDeviceTokenTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;->mTokenId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;->mTokenValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    const-string v0, "GetDeviceTokenTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received new device token from the server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/snapchat/android/util/crypto/DeviceToken;

    iget-object v1, p1, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;->mTokenId:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;->mTokenValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/api2/GetDeviceTokenTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Lcom/snapchat/android/util/crypto/DeviceToken;)V

    .line 64
    return-void

    .line 61
    :cond_0
    const-string v1, "GetDeviceTokenTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetDeviceTokenTask did not successfully return a new device token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/GetDeviceTokenTask;->a(Lcom/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/snapchat/android/api2/GetDeviceTokenTask;->e()Lcom/snapchat/android/api2/StaticAuthPayload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/device_id"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/StaticAuthPayload;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/snapchat/android/api2/StaticAuthPayload;

    invoke-direct {v0}, Lcom/snapchat/android/api2/StaticAuthPayload;-><init>()V

    return-object v0
.end method
