.class public Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/cache/Cache$OnCompleted;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->a:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->c:Z

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->b:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->c:Z

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 35
    iget-object v1, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->c:Z

    if-eqz v0, :cond_0

    .line 37
    monitor-exit v1

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->b:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

    invoke-interface {v0, p1}, Lcom/snapchat/android/util/cache/Cache$OnCompleted;->a(Landroid/graphics/Bitmap;)V

    .line 41
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
