.class Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaultHidingSink"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Lokio/Sink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 930
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 931
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 945
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 947
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 948
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 949
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a_(Lokio/Buffer;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 935
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->a_(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 938
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 939
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 955
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 958
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 959
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
