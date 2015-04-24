.class Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->b(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    monitor-exit v1

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;Lcom/snapchat/android/ads/AdTransformResponse;)V

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
