.class public Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;
.super Lcom/snapchat/android/networkmanager/media/MediaDownload;
.source "SourceFile"


# instance fields
.field private volatile b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/networkmanager/media/MediaDownload;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;->b:[B

    .line 58
    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b()[B

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;->b:[B

    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;->b:[B

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
