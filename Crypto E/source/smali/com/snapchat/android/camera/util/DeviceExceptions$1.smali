.class final Lcom/snapchat/android/camera/util/DeviceExceptions$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/util/DeviceExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Collection",
        "<",
        "Lcom/snapchat/android/util/Resolution;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v0, "SPH-D710VMUB"

    new-instance v1, Lcom/snapchat/android/camera/util/DeviceExceptions$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/util/DeviceExceptions$1$1;-><init>(Lcom/snapchat/android/camera/util/DeviceExceptions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/util/DeviceExceptions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
