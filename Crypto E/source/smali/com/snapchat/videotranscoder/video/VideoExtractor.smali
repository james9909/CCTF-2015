.class public Lcom/snapchat/videotranscoder/video/VideoExtractor;
.super Lcom/snapchat/videotranscoder/pipeline/Extractor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/pipeline/Extractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 15
    const-string v0, "VideoExtractor"

    const-string v1, "Setting up extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->a()V

    .line 17
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->a(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->b:I

    .line 22
    return-void
.end method
