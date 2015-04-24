.class public Lcom/coremedia/iso/boxes/fragment/SampleFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:B

.field private b:B

.field private c:B

.field private d:B

.field private e:B

.field private f:B

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 50
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, v2

    const/16 v4, 0x1c

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    .line 51
    const-wide/32 v0, 0xc000000

    and-long/2addr v0, v2

    const/16 v4, 0x1a

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    .line 52
    const-wide/32 v0, 0x3000000

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    .line 53
    const-wide/32 v0, 0xc00000

    and-long/2addr v0, v2

    const/16 v4, 0x16

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    .line 54
    const-wide/32 v0, 0x300000

    and-long/2addr v0, v2

    const/16 v4, 0x14

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    .line 55
    const-wide/32 v0, 0xe0000

    and-long/2addr v0, v2

    const/16 v4, 0x11

    shr-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    .line 56
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v2

    const/16 v4, 0x10

    shr-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    .line 57
    const-wide/32 v0, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    .line 64
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    shl-int/lit8 v2, v2, 0x1c

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 65
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    shl-int/lit8 v2, v2, 0x1a

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 66
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 67
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 68
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    shl-int/lit8 v2, v2, 0x14

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 69
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    or-long/2addr v2, v0

    .line 70
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 71
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 72
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;J)V

    .line 73
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 217
    :cond_3
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 219
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 220
    :cond_4
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 221
    :cond_5
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 222
    :cond_6
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 223
    :cond_7
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 224
    :cond_8
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 225
    :cond_9
    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    iget-boolean v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 226
    :cond_a
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    iget-byte v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 233
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    .line 234
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    add-int/2addr v0, v1

    .line 235
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    add-int/2addr v0, v1

    .line 236
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    add-int/2addr v0, v1

    .line 237
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    add-int/2addr v0, v1

    .line 238
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    add-int/2addr v0, v1

    .line 239
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 240
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    add-int/2addr v0, v1

    .line 241
    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SampleFlags{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string v1, ", isLeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string v1, ", depOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string v1, ", isDepOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->d:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ", hasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string v1, ", padValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string v1, ", isDiffSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string v1, ", degradPrio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
