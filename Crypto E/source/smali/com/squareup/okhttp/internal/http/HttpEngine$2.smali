.class Lcom/squareup/okhttp/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/HttpEngine;->a(Lcom/squareup/okhttp/internal/http/CacheRequest;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lokio/BufferedSource;

.field final synthetic c:Lcom/squareup/okhttp/internal/http/CacheRequest;

.field final synthetic d:Lokio/BufferedSink;

.field final synthetic e:Lcom/squareup/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lokio/BufferedSource;Lcom/squareup/okhttp/internal/http/CacheRequest;Lokio/BufferedSink;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->e:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 838
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 839
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    if-nez v2, :cond_0

    .line 840
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    .line 841
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    :cond_0
    move-wide v4, v0

    .line 848
    :goto_0
    return-wide v4

    .line 830
    :catch_0
    move-exception v0

    .line 831
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    if-nez v1, :cond_1

    .line 832
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    .line 833
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/CacheRequest;->a()V

    .line 835
    :cond_1
    throw v0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->d()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lokio/Buffer;->c()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 847
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->w()Lokio/BufferedSink;

    goto :goto_0
.end method

.method public b()Lokio/Timeout;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->b()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 857
    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->a:Z

    .line 859
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/CacheRequest;->a()V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 862
    return-void
.end method
