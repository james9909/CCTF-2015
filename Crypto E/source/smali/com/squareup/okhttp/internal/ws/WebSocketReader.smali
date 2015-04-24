.class public final Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lokio/BufferedSource;

.field private final c:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

.field private final d:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

.field private final e:Lokio/Source;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:[B

.field private final o:[B


# direct methods
.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g:Z

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 118
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c()V

    .line 120
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->l:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    return-wide v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->k()B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 132
    and-int/lit8 v0, v5, 0xf

    iput v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    .line 133
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->k:Z

    .line 134
    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->l:Z

    .line 137
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->l:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->k:Z

    if-nez v0, :cond_3

    .line 138
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move v0, v2

    .line 134
    goto :goto_1

    .line 141
    :cond_3
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_5

    move v4, v1

    .line 142
    :goto_2
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_6

    move v3, v1

    .line 143
    :goto_3
    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    .line 144
    :goto_4
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    .line 146
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v4, v2

    .line 141
    goto :goto_2

    :cond_6
    move v3, v2

    .line 142
    goto :goto_3

    :cond_7
    move v0, v2

    .line 143
    goto :goto_4

    .line 149
    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->k()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 151
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_9

    :goto_5
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->m:Z

    .line 152
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->m:Z

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a:Z

    if-ne v1, v2, :cond_a

    .line 154
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v1, v2

    .line 151
    goto :goto_5

    .line 158
    :cond_a
    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    .line 159
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 160
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    .line 164
    :cond_b
    :goto_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    .line 166
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->l:Z

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 167
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_c
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    goto :goto_6

    .line 170
    :cond_d
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->m:Z

    if-eqz v0, :cond_e

    .line 172
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->n:[B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->a([B)V

    .line 174
    :cond_e
    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    return-wide v0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 177
    .line 178
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 179
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 181
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->a:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    invoke-interface {v0, v6, v2, v3}, Lokio/BufferedSource;->b(Lokio/Buffer;J)V

    move-object v0, v6

    .line 195
    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    packed-switch v1, :pswitch_data_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->o:[B

    int-to-long v1, v9

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->n:[B

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/Protocol;->a([BJ[BJ)V

    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->o:[B

    invoke-virtual {v6, v0, v8, v9}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    .line 190
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    int-to-long v2, v9

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    .line 184
    :cond_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 185
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->i:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->j:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->o:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 186
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->o:[B

    invoke-interface {v1, v2, v8, v0}, Lokio/BufferedSource;->a([BII)I

    move-result v9

    .line 187
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->a(Lokio/Buffer;)V

    .line 218
    :goto_1
    :pswitch_1
    return-void

    .line 204
    :pswitch_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->d:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->v()Lokio/Buffer;

    move-result-object v7

    :cond_2
    invoke-interface {v1, v7}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->b(Lokio/Buffer;)V

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f:Z

    .line 208
    const-string v1, ""

    .line 209
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Lokio/Buffer;->l()S

    move-result v1

    .line 211
    invoke-virtual {v0}, Lokio/Buffer;->r()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v2, v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    move v1, v8

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    move-object v0, v7

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b()V

    return-void
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    return v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->o:[B

    return-object v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->n:[B

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->b()V

    .line 95
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->f:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    return-void

    .line 98
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->a:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    .line 109
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g:Z

    .line 110
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->c:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->e:Lokio/Source;

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->a(Lokio/BufferedSource;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)V

    .line 111
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->g:Z

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener failed to call close on message payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->b:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
