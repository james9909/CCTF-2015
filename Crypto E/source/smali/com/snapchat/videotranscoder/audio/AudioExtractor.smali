.class public Lcom/snapchat/videotranscoder/audio/AudioExtractor;
.super Lcom/snapchat/videotranscoder/pipeline/Extractor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/pipeline/Extractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 14
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->a()V

    .line 15
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->c(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->b:I

    .line 20
    return-void
.end method
