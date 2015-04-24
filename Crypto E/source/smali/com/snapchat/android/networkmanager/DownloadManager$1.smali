.class Lcom/snapchat/android/networkmanager/DownloadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/networkmanager/DownloadManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadManager$1;->a:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager$1;->a:Lcom/snapchat/android/networkmanager/DownloadManager;

    move-object v5, p5

    check-cast v5, Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;)V

    .line 194
    return-void
.end method
