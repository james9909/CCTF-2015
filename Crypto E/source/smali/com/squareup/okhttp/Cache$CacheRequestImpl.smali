.class final Lcom/squareup/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Cache;

.field private final b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field private c:Lokio/Sink;

.field private d:Z

.field private e:Lokio/Sink;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->c:Lokio/Sink;

    .line 386
    new-instance v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->c:Lokio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Lokio/Sink;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->e:Lokio/Sink;

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a:Lcom/squareup/okhttp/Cache;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->d:Z

    if-eqz v0, :cond_0

    .line 404
    monitor-exit v1

    .line 414
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->d:Z

    .line 407
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->c(Lcom/squareup/okhttp/Cache;)I

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->c:Lokio/Sink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()Lokio/Sink;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->e:Lokio/Sink;

    return-object v0
.end method
