.class public Lcom/snapchat/videotranscoder/mp4/MP4Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private a()Lcom/coremedia/iso/IsoFile;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    invoke-static {}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->a()Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>(Ljava/util/Properties;)V

    .line 72
    :try_start_0
    new-instance v1, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v2, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v2, v1, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Lcom/googlecode/mp4parser/DataSource;Lcom/coremedia/iso/BoxParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Mp4 file no longer exists"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/coremedia/iso/IsoFile;J)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 207
    const-string v0, "/moov[0]/trak/mdia[0]/minf[0]/stbl[0]/stco[0]"

    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/util/Path;->b(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 210
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->e()Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Container;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 213
    check-cast v1, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->a()[J

    move-result-object v4

    .line 214
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 215
    aget-wide v6, v4, v1

    add-long/2addr v6, p2

    aput-wide v6, v4, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 219
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->a([J)V

    .line 220
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->e()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/coremedia/iso/boxes/Container;->a(Ljava/util/List;)V

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write permissions to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method

.method private a(Lcom/coremedia/iso/IsoFile;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/coremedia/iso/IsoFile;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 189
    const-string v2, "mdat"

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_1
    const-string v2, "moov"

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing top-level boxes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a()Lcom/coremedia/iso/IsoFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 127
    :try_start_1
    const-string v0, "moov"

    invoke-static {v3, v0}, Lcom/googlecode/mp4parser/util/Path;->a(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/MovieBox;

    if-nez v0, :cond_4

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 130
    invoke-virtual {v3, v0}, Lcom/coremedia/iso/IsoFile;->a(Lcom/coremedia/iso/boxes/Box;)V

    move-object v6, v0

    .line 136
    :goto_0
    const-string v0, "udta"

    invoke-static {v6, v0}, Lcom/googlecode/mp4parser/util/Path;->a(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/UserDataBox;

    if-nez v0, :cond_8

    .line 137
    new-instance v0, Lcom/coremedia/iso/boxes/UserDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/UserDataBox;-><init>()V

    .line 138
    invoke-virtual {v6, v0}, Lcom/coremedia/iso/boxes/MovieBox;->a(Lcom/coremedia/iso/boxes/Box;)V

    move-object v2, v0

    .line 142
    :goto_1
    const-string v0, "smet"

    invoke-static {v2, v0}, Lcom/googlecode/mp4parser/util/Path;->a(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;

    if-nez v0, :cond_7

    .line 143
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;-><init>()V

    .line 144
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/UserDataBox;->a(Lcom/coremedia/iso/boxes/Box;)V

    move-object v2, v0

    .line 148
    :goto_2
    const-string v0, "sseg"

    invoke-static {v2, v0}, Lcom/googlecode/mp4parser/util/Path;->a(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;-><init>()V

    .line 150
    invoke-virtual {v2, v0}, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;->a(Lcom/coremedia/iso/boxes/Box;)V

    .line 153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->a(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V

    .line 155
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MovieBox;->f()J

    move-result-wide v6

    .line 156
    invoke-direct {p0, v3}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a(Lcom/coremedia/iso/IsoFile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sub-long v4, v6, v4

    invoke-direct {p0, v3, v4, v5}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a(Lcom/coremedia/iso/IsoFile;J)V

    .line 161
    :cond_1
    const-string v0, "modifiedMetadata"

    const-string v2, ""

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coremedia/iso/IsoFile;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    :try_start_3
    new-instance v2, Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/utils/Utils;-><init>()V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/snapchat/videotranscoder/utils/Utils;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 175
    :cond_2
    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->close()V

    .line 179
    :cond_3
    return-void

    .line 132
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MovieBox;->f()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v4

    move-object v6, v0

    goto/16 :goto_0

    .line 171
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_5

    .line 172
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 175
    :cond_5
    if-eqz v2, :cond_6

    .line 176
    invoke-virtual {v2}, Lcom/coremedia/iso/IsoFile;->close()V

    :cond_6
    throw v0

    .line 171
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v2, v0

    goto/16 :goto_1
.end method
