.class final Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$1;->a()Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    move-result-object v0

    return-object v0
.end method
