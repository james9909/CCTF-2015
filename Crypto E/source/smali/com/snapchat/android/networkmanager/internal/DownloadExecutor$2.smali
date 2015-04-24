.class Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/networkmanager/DownloadRequest;

.field final synthetic b:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->d:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    iput-object p2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->a:Lcom/snapchat/android/networkmanager/DownloadRequest;

    iput-object p3, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->b:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

    iput-object p4, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->d:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->a:Lcom/snapchat/android/networkmanager/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v4

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->b:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->d:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->a:Lcom/snapchat/android/networkmanager/DownloadRequest;

    iget-object v3, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->d:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    invoke-static {v3}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;)Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;->c:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;->a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Ljava/lang/Object;)V

    .line 116
    return-void
.end method
