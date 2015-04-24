.class public Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;
.super Lcom/snapchat/android/model/LazyMediaSource;
.source "SourceFile"


# instance fields
.field private final mDisplayTimeMs:J

.field private final mImagePath:Ljava/lang/String;

.field private mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/model/LazyMediaSource;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display time must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mImagePath:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mDisplayTimeMs:J

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mImagePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mDisplayTimeMs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/videotranscoder/task/ImageMediaSource;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 56
    return-void
.end method
