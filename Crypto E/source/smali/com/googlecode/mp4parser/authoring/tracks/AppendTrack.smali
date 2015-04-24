.class public Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# static fields
.field private static e:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field d:[Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->e:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
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
    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 375
    return-object v1

    .line 371
    :cond_0
    aget-object v4, v2, v0

    .line 372
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized b()[J
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 387
    new-array v5, v2, [J

    .line 390
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v7, :cond_1

    .line 395
    monitor-exit p0

    return-object v5

    .line 384
    :cond_0
    :try_start_1
    aget-object v5, v3, v0

    .line 385
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    aget-object v3, v6, v0

    .line 391
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->b()[J

    move-result-object v8

    array-length v9, v8

    move v3, v1

    :goto_2
    if-lt v3, v9, :cond_2

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :cond_2
    aget-wide v10, v8, v3

    .line 392
    add-int/lit8 v4, v2, 0x1

    aput-wide v10, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    aget-object v3, v1, v0

    .line 73
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->d:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
