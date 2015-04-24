.class public final Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field private static c:Ljava/util/logging/Logger;


# instance fields
.field a:Lcom/coremedia/iso/boxes/Container;

.field b:Z

.field private d:Lcom/googlecode/mp4parser/DataSource;

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->c:Ljava/util/logging/Logger;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->b:Z

    .line 43
    return-void
.end method

.method private static a(Lcom/googlecode/mp4parser/DataSource;JJLjava/nio/channels/WritableByteChannel;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const-wide/32 v10, 0x3ff8000

    .line 74
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 75
    :goto_0
    cmp-long v0, v8, p3

    if-ltz v0, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    add-long v2, p1, v8

    sub-long v0, p3, v8

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/DataSource;->a(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long/2addr v0, v8

    move-wide v8, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->a:Lcom/coremedia/iso/boxes/Container;

    .line 63
    return-void
.end method

.method public a(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->e:J

    .line 95
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->d:Lcom/googlecode/mp4parser/DataSource;

    .line 96
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->f:J

    .line 97
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->b()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->a(J)V

    .line 99
    return-void
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7
    .parameter

    .prologue
    .line 81
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->d:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->e:J

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->f:J

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->a(Lcom/googlecode/mp4parser/DataSource;JJLjava/nio/channels/WritableByteChannel;)V

    .line 82
    return-void
.end method

.method public e()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->a:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->f:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "mdat"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaDataBox{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
