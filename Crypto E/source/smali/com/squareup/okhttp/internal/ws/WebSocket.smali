.class public final Lcom/squareup/okhttp/internal/ws/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;,
        Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private volatile b:Z

.field private volatile c:Z

.field private final d:Ljava/lang/Object;

.field private e:Lcom/squareup/okhttp/Connection;

.field private f:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;


# direct methods
.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->f:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->b:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->e:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/internal/Internal;->b(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->e:Lcom/squareup/okhttp/Connection;

    .line 329
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocket;Ljava/io/IOException;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a(Ljava/io/IOException;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocket;Lokio/Buffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a(Lokio/Buffer;)V

    return-void
.end method

.method private a(Ljava/io/IOException;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->c:Z

    .line 303
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->b:Z

    if-nez v2, :cond_2

    .line 304
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->b:Z

    .line 305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_0

    .line 311
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->f:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :cond_0
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :cond_1
    :goto_2
    invoke-interface {p2, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->a(Ljava/io/IOException;)V

    .line 323
    return-void

    .line 303
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_2

    .line 312
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lokio/Buffer;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->c:Z

    .line 284
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->b:Z

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->b:Z

    .line 286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a()V

    .line 294
    :goto_0
    return-void

    .line 286
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->f:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b(Lokio/Buffer;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/ws/WebSocket;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/ws/WebSocket;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket;->c:Z

    return v0
.end method
