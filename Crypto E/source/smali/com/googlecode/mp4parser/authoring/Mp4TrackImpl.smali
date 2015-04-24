.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/coremedia/iso/boxes/TrackBox;

.field f:[Lcom/coremedia/iso/IsoFile;

.field private g:[J

.field private h:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field private i:Ljava/lang/String;


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->d:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized b()[J
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->g:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->h:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->e:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->e()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lcom/googlecode/mp4parser/BasicContainer;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Lcom/googlecode/mp4parser/BasicContainer;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/BasicContainer;->close()V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->f:[Lcom/coremedia/iso/IsoFile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 277
    return-void

    .line 272
    :cond_1
    aget-object v3, v1, v0

    .line 273
    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->close()V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->i:Ljava/lang/String;

    return-object v0
.end method
