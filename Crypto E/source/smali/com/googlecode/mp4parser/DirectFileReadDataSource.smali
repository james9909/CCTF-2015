.class public Lcom/googlecode/mp4parser/DirectFileReadDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/DataSource;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/lang/String;


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x2000

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 35
    new-array v4, v6, [B

    move v1, v2

    move v0, v2

    .line 36
    :goto_0
    if-lt v0, v3, :cond_2

    .line 46
    :cond_0
    if-gez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    .line 37
    :cond_2
    sub-int v1, v3, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 38
    iget-object v5, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v4, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 39
    if-ltz v1, :cond_0

    .line 42
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v4, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(JJ)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v0

    new-array v0, v0, [B

    .line 75
    iget-object v1, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/googlecode/mp4parser/DirectFileReadDataSource;->b:Ljava/lang/String;

    return-object v0
.end method
