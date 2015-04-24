.class public Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# instance fields
.field d:Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;

.field e:Lcom/googlecode/mp4parser/authoring/Track;


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
    .line 138
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;->d:Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;

    return-object v0
.end method

.method public b()[J
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;->e:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;->e:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;->e:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 90
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CencDecryptingTrackImpl;->e:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
