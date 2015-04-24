.class Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/ws/WebSocket$1;->a(Lokio/Buffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/Buffer;

.field final synthetic c:Lcom/squareup/okhttp/internal/ws/WebSocket$1;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lokio/Buffer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;->c:Lcom/squareup/okhttp/internal/ws/WebSocket$1;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;->a:Lokio/Buffer;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;->c:Lcom/squareup/okhttp/internal/ws/WebSocket$1;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/ws/WebSocket$1;->a:Lcom/squareup/okhttp/internal/ws/WebSocket;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocket;->a(Lcom/squareup/okhttp/internal/ws/WebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocket$1$1;->a:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lokio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method
