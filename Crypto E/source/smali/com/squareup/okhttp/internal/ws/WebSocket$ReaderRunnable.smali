.class Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/ws/WebSocket;

.field private final c:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

.field private final d:Lcom/squareup/okhttp/internal/ws/WebSocketListener;


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 353
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;->a:Lcom/squareup/okhttp/internal/ws/WebSocket;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocket;->c(Lcom/squareup/okhttp/internal/ws/WebSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;->c:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;->a:Lcom/squareup/okhttp/internal/ws/WebSocket;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$ReaderRunnable;->d:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-static {v1, v0, v2}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a(Lcom/squareup/okhttp/internal/ws/WebSocket;Ljava/io/IOException;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V

    .line 361
    :cond_0
    return-void
.end method
