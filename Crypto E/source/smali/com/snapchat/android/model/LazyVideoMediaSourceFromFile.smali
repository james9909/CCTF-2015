.class public Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;
.super Lcom/snapchat/android/model/LazyMediaSource;
.source "SourceFile"


# instance fields
.field private final mIsMuted:Z

.field private mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

.field private final mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/model/LazyMediaSource;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mVideoPath:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mIsMuted:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mVideoPath:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    iget-boolean v5, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mIsMuted:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->b:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;-><init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    iput-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0

    .line 42
    :cond_1
    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 60
    return-void
.end method
