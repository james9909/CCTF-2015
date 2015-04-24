.class Lcom/squareup/okhttp/internal/ws/WebSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/ws/WebSocket;


# virtual methods
.method public a(Lokio/Buffer;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1;->a:Lcom/squareup/okhttp/internal/ws/WebSocket;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocket;->b(Lcom/squareup/okhttp/internal/ws/WebSocket;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;

    const-string v2, "WebSocket PongWriter"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lokio/Buffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public b(Lokio/Buffer;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1;->a:Lcom/squareup/okhttp/internal/ws/WebSocket;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a(Lcom/squareup/okhttp/internal/ws/WebSocket;Lokio/Buffer;)V

    .line 214
    return-void
.end method
