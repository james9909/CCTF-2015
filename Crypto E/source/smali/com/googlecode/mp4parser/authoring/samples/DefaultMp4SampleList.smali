.class public Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/coremedia/iso/boxes/Container;

.field b:Lcom/coremedia/iso/boxes/TrackBox;

.field c:[[Ljava/nio/ByteBuffer;

.field d:[I

.field e:[J

.field f:[[J

.field g:Lcom/coremedia/iso/boxes/SampleSizeBox;

.field h:I


# virtual methods
.method declared-synchronized a(I)I
    .locals 3
    .parameter

    .prologue
    .line 127
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return v0

    .line 131
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_1

    .line 139
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    goto :goto_0

    .line 137
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    .line 144
    :goto_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_3

    .line 147
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    goto :goto_0

    .line 145
    :cond_3
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public b(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 19
    .parameter

    .prologue
    .line 154
    move/from16 v0, p1

    int-to-long v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->g:Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleSizeBox;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->a(I)I

    move-result v6

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->d:[I

    aget v2, v2, v6

    add-int/lit8 v9, v2, -0x1

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->e:[J

    int-to-long v4, v6

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v3

    aget-wide v10, v2, v3

    .line 161
    sub-int v2, p1, v9

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->f:[[J

    int-to-long v4, v6

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v4

    aget-object v12, v3, v4

    .line 163
    aget-wide v7, v12, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->c:[[Ljava/nio/ByteBuffer;

    int-to-long v4, v6

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v3

    aget-object v2, v2, v3

    .line 167
    if-nez v2, :cond_1

    .line 168
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-wide/16 v4, 0x0

    .line 171
    const/4 v2, 0x0

    move/from16 v18, v2

    move-wide v2, v4

    move/from16 v4, v18

    :goto_0
    :try_start_0
    array-length v5, v12

    if-lt v4, v5, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->a:Lcom/coremedia/iso/boxes/Container;

    .line 180
    add-long/2addr v10, v2

    .line 181
    neg-long v2, v2

    array-length v5, v12

    add-int/lit8 v5, v5, -0x1

    aget-wide v14, v12, v5

    add-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->g:Lcom/coremedia/iso/boxes/SampleSizeBox;

    array-length v12, v12

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/SampleSizeBox;->a(I)J

    move-result-wide v14

    add-long/2addr v2, v14

    .line 179
    invoke-interface {v4, v10, v11, v2, v3}, Lcom/coremedia/iso/boxes/Container;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    invoke-interface {v13, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/ByteBuffer;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->c:[[Ljava/nio/ByteBuffer;

    int-to-long v4, v6

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v4

    aput-object v2, v3, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_1
    const/4 v3, 0x0

    .line 191
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_5

    move-object v6, v3

    .line 200
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->g:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->a(I)J

    move-result-wide v4

    .line 203
    new-instance v2, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$1;-><init>(Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;JLjava/nio/ByteBuffer;J)V

    return-object v2

    .line 172
    :cond_3
    :try_start_1
    aget-wide v14, v12, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->g:Lcom/coremedia/iso/boxes/SampleSizeBox;

    add-int v16, v4, v9

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->a(I)J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long/2addr v14, v2

    const-wide/32 v16, 0x10000000

    cmp-long v5, v14, v16

    if-lez v5, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->a:Lcom/coremedia/iso/boxes/Container;

    .line 174
    add-long v14, v10, v2

    .line 175
    aget-wide v16, v12, v4

    sub-long v2, v16, v2

    .line 173
    invoke-interface {v5, v14, v15, v2, v3}, Lcom/coremedia/iso/boxes/Container;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    aget-wide v2, v12, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_5
    aget-object v6, v2, v4

    .line 192
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v7, v10

    if-ltz v9, :cond_2

    .line 196
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v10, v6

    sub-long/2addr v7, v10

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->b(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->b:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->c()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->b()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v0

    return v0
.end method
