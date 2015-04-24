.class Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Cache;

.field final synthetic b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field final synthetic c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Lokio/Sink;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->a:Lcom/squareup/okhttp/Cache;

    iput-object p4, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v1, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a:Lcom/squareup/okhttp/Cache;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 393
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->c:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->b(Lcom/squareup/okhttp/Cache;)I

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 396
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a()V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
