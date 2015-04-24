.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    .line 52
    iput-object p2, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Lokio/InflaterSource;->c:I

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lokio/InflaterSource;->c:I

    iget-object v1, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 109
    iget v1, p0, Lokio/InflaterSource;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/InflaterSource;->c:I

    .line 110
    iget-object v1, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->g(J)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 57
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-boolean v2, p0, Lokio/InflaterSource;->d:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    .line 75
    :goto_0
    return-wide v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lokio/InflaterSource;->a()Z

    move-result v0

    .line 66
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lokio/Segment;->a:[B

    iget v4, v1, Lokio/Segment;->c:I

    iget v5, v1, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x800

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 68
    if-lez v2, :cond_3

    .line 69
    iget v0, v1, Lokio/Segment;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->c:I

    .line 70
    iget-wide v0, p1, Lokio/Buffer;->b:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->b:J

    .line 71
    int-to-long v0, v2

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    :cond_4
    invoke-direct {p0}, Lokio/InflaterSource;->c()V

    .line 75
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 77
    :cond_5
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lokio/InflaterSource;->c()V

    .line 93
    iget-object v1, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iget-object v1, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->d()Lokio/Buffer;

    move-result-object v1

    iget-object v1, v1, Lokio/Buffer;->a:Lokio/Segment;

    .line 100
    iget v2, v1, Lokio/Segment;->c:I

    iget v3, v1, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokio/InflaterSource;->c:I

    .line 101
    iget-object v2, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lokio/Segment;->a:[B

    iget v1, v1, Lokio/Segment;->b:I

    iget v4, p0, Lokio/InflaterSource;->c:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0
.end method

.method public b()Lokio/Timeout;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->b()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lokio/InflaterSource;->d:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/InflaterSource;->d:Z

    .line 121
    iget-object v0, p0, Lokio/InflaterSource;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    goto :goto_0
.end method
