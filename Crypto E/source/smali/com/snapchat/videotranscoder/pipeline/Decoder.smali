.class public abstract Lcom/snapchat/videotranscoder/pipeline/Decoder;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Lcom/snapchat/videotranscoder/pipeline/Codec;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Codec;

    new-instance v1, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    invoke-virtual {v1, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->c(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    invoke-direct {p0, p3, v0}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Codec;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->b:I

    .line 32
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public f()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d()V

    .line 40
    return-void
.end method

.method public g()Lcom/snapchat/videotranscoder/pipeline/Codec;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    return-object v0
.end method
