.class public final Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lokio/BufferedSink;

.field private final c:Ljava/util/Random;

.field private d:Z

.field private e:Z

.field private final f:[B

.field private final g:[B


# direct methods
.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    return-object v0
.end method

.method private a(ILokio/Buffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p2}, Lokio/Buffer;->c()J

    move-result-wide v0

    long-to-int v0, v0

    .line 136
    const/16 v1, 0x7d

    if-le v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Control frame payload must be less than 125B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    or-int/lit16 v1, p1, 0x80

    .line 143
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v2, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 146
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a:Z

    if-eqz v1, :cond_2

    .line 147
    or-int/lit16 v1, v0, 0x80

    .line 148
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v2, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 150
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->c:Ljava/util/Random;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 151
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    invoke-interface {v1, v2}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 153
    if-eqz p2, :cond_1

    .line 154
    int-to-long v0, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lokio/BufferedSource;J)V

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()V

    .line 165
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 159
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->a(Lokio/Source;)J

    goto :goto_0
.end method

.method private a(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;Lokio/Buffer;JZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    .line 201
    if-eqz p5, :cond_5

    .line 202
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;->a:[I

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown payload type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_0
    const/4 v0, 0x1

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    monitor-enter v2

    .line 216
    if-eqz p6, :cond_0

    .line 217
    or-int/lit16 v0, v0, 0x80

    .line 219
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 222
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a:Z

    if-eqz v0, :cond_1

    .line 223
    const/16 v1, 0x80

    .line 224
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->c:Ljava/util/Random;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 226
    :cond_1
    const-wide/16 v4, 0x7d

    cmp-long v0, p3, v4

    if-gtz v0, :cond_2

    .line 227
    long-to-int v0, p3

    or-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 239
    :goto_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a:Z

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    invoke-interface {v0, v1}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 241
    invoke-direct {p0, p2, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lokio/BufferedSource;J)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()V

    .line 247
    monitor-exit v2

    .line 248
    return-void

    .line 207
    :pswitch_1
    const/4 v0, 0x2

    .line 208
    goto :goto_0

    .line 229
    :cond_2
    const-wide/16 v4, 0x7fff

    cmp-long v0, p3, v4

    if-gtz v0, :cond_3

    .line 230
    or-int/lit8 v0, v1, 0x7e

    .line 231
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 232
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    long-to-int v1, p3

    invoke-interface {v0, v1}, Lokio/BufferedSink;->h(I)Lokio/BufferedSink;

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    :cond_3
    or-int/lit8 v0, v1, 0x7f

    .line 235
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 236
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v0, p3, p4}, Lokio/BufferedSink;->i(J)Lokio/BufferedSink;

    goto :goto_1

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    invoke-interface {v0, p2, p3, p4}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;Lokio/Buffer;JZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;Lokio/Buffer;JZZ)V

    return-void
.end method

.method private a(Lokio/BufferedSource;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 251
    const-wide/16 v4, 0x0

    .line 252
    :goto_0
    cmp-long v0, v4, p2

    if-gez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->g:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 254
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->g:[B

    invoke-interface {p1, v1, v7, v0}, Lokio/BufferedSource;->a([BII)I

    move-result v6

    .line 255
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->g:[B

    int-to-long v1, v6

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/Protocol;->a([BJ[BJ)V

    .line 257
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->g:[B

    invoke-interface {v0, v1, v7, v6}, Lokio/BufferedSink;->c([BII)Lokio/BufferedSink;

    .line 258
    int-to-long v0, v6

    add-long/2addr v4, v0

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->f:[B

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->c:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    if-eqz p1, :cond_4

    .line 107
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_2

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code must be in range [1000,5000)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 112
    if-eqz p2, :cond_3

    .line 113
    invoke-virtual {v0, p2}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    .line 118
    :cond_3
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b(Lokio/Buffer;)V

    .line 119
    return-void

    .line 115
    :cond_4
    if-eqz p2, :cond_3

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code required to include reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lokio/Buffer;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    monitor-enter v1

    .line 90
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(ILokio/Buffer;)V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lokio/Buffer;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->b:Lokio/BufferedSink;

    monitor-enter v1

    .line 127
    const/16 v0, 0x8

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->a(ILokio/Buffer;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->d:Z

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
