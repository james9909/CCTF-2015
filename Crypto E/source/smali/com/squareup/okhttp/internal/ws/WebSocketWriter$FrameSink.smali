.class final Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

.field private b:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

.field private c:Z


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->a()V

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a_(Lokio/Buffer;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 267
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->b:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->c:Z

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;Lokio/Buffer;JZZ)V

    .line 268
    iput-boolean v7, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->c:Z

    .line 269
    return-void
.end method

.method public b()Lokio/Timeout;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->b()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 288
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x80

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->d(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->c(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 291
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->c(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->a()V

    .line 296
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0, v4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z

    .line 299
    return-void

    .line 293
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->a:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
