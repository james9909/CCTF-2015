.class public Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    .line 41
    iput p1, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->c:I

    .line 42
    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    iget-object v4, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    monitor-exit v4

    .line 74
    :goto_0
    return-wide v0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;

    .line 72
    iget-wide v0, v0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;->a:J

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    monitor-exit v4

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 50
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v2, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->c:I

    if-ne v0, v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->b:Ljava/util/Queue;

    new-instance v2, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;

    invoke-direct {v2, p1, p2}, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;-><init>(J)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
