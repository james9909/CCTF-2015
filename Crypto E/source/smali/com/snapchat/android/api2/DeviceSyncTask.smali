.class public Lcom/snapchat/android/api2/DeviceSyncTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/DeviceSyncTask$Payload;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceSyncTask"


# instance fields
.field private final mGcmRegistrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/api2/DeviceSyncTask;->mGcmRegistrationId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 50
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "DeviceSyncTask"

    const-string v1, "DeviceSyncTask succeeded."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/DeviceSyncTask;->mGcmRegistrationId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/DeviceSyncTask;->a(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "DeviceSyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceSyncTask failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->e(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/snapchat/android/api2/DeviceSyncTask;->e()Lcom/snapchat/android/api2/DeviceSyncTask$Payload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/ph/device"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/DeviceSyncTask$Payload;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/snapchat/android/api2/DeviceSyncTask$Payload;

    iget-object v1, p0, Lcom/snapchat/android/api2/DeviceSyncTask;->mGcmRegistrationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/DeviceSyncTask$Payload;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
