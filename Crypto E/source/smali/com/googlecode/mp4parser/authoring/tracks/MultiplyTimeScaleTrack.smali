.class public Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# instance fields
.field a:Lcom/googlecode/mp4parser/authoring/Track;

.field private b:I


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
    .line 88
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()[J
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [J

    .line 94
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 97
    return-object v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v2

    aget-wide v2, v2, v0

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->b:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 79
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->a()J

    move-result-wide v2

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->b:I

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->a(J)V

    .line 80
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiplyTimeScaleTrack{source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/MultiplyTimeScaleTrack;->a:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
