.class public Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# instance fields
.field d:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field e:I

.field private f:[J

.field private g:Lcom/googlecode/mp4parser/DataSource;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;)Lcom/googlecode/mp4parser/DataSource;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->g:Lcom/googlecode/mp4parser/DataSource;

    return-object v0
.end method


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
    .line 111
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->h:Ljava/util/List;

    return-object v0
.end method

.method public b()[J
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->f:[J

    return-object v0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->d:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->g:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    .line 82
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "soun"

    return-object v0
.end method
