.class Lcom/snapchat/android/util/crypto/DeviceTokenManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/crypto/DeviceTokenManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/crypto/DeviceTokenManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager$1;->a:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "DeviceTokenManager.checkForDeviceTokenOnDisk"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager$1;->a:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Z)V

    .line 170
    return-void
.end method
