.class final Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedMessageSource"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 227
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->e(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v1, v4

    .line 254
    :goto_0
    return-wide v1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V

    .line 234
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 242
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 244
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v3

    long-to-int v0, v0

    invoke-interface {v2, v3, v6, v0}, Lokio/BufferedSource;->a([BII)I

    move-result v0

    int-to-long v1, v0

    .line 245
    cmp-long v0, v1, v4

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->k(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/Protocol;->a([BJ[BJ)V

    .line 247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v0

    long-to-int v3, v1

    invoke-virtual {p1, v0, v6, v3}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {v0, v4, v5}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J

    goto/16 :goto_0

    .line 249
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v1

    .line 250
    cmp-long v0, v1, v4

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public b()Lokio/Timeout;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->b()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6

    .prologue
    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z

    .line 264
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->g(J)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->e(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V

    .line 270
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->a:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->g(J)V

    goto :goto_0
.end method
