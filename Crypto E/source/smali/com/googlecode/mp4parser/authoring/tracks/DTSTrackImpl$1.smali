.class Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

.field private final synthetic b:I


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->a(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;)Lcom/googlecode/mp4parser/DataSource;

    move-result-object v1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->b:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->e:I

    int-to-long v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/DataSource;->a(JJLjava/nio/channels/WritableByteChannel;)J

    .line 805
    return-void
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->a(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;)Lcom/googlecode/mp4parser/DataSource;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->b:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;->a:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    iget v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->e:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->a(JJ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
