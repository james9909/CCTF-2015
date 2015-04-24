.class public Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/system/Clock;

.field private final b:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

.field private final c:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/snapchat/android/model/StoryGroup;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Lcom/snapchat/android/model/LazyMediaSource;

.field private h:Z

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

.field private m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

.field private n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;)V
    .locals 7
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/model/StoryGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v1}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;->a()Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v3}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;-><init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;Lcom/snapchat/android/util/debug/ExceptionReporter;Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;)V

    .line 128
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;Lcom/snapchat/android/util/debug/ExceptionReporter;Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/system/Clock;",
            "Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/model/StoryGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->h:Z

    .line 103
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 151
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a:Lcom/snapchat/android/util/system/Clock;

    .line 152
    iput-object p2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->b:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    .line 153
    iput-object p3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->c:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 155
    iput-object p4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d:Landroid/content/Context;

    .line 156
    iput-object p5, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    .line 157
    iput-object p6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    .line 161
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    add-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    return v0
.end method

.method private a(Lcom/snapchat/videotranscoder/task/ImageMediaSource;)Lcom/snapchat/android/util/Resolution;
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 514
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 516
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/ImageMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 518
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    .line 519
    return-object v1
.end method

.method private a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/android/util/Resolution;
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    invoke-virtual {p2, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    .line 528
    return-object v1
.end method

.method private a([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v5, 0x3d0900

    .line 385
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 387
    instance-of v4, v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    if-eqz v4, :cond_0

    .line 388
    check-cast v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Lcom/snapchat/videotranscoder/task/ImageMediaSource;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 389
    :cond_0
    instance-of v4, v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    if-eqz v4, :cond_1

    .line 390
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-direct {p0, v0, p2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unhandled media source type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_2
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;-><init>()V

    .line 397
    invoke-virtual {v0, v2, v5}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a(Ljava/util/Collection;I)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 399
    if-nez v0, :cond_3

    .line 400
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Could not find a valid resolution for transcoding."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_3
    const-string v1, "video/avc"

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 409
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 410
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 411
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 412
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 414
    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "video/avc"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
    .locals 8
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v0, v0

    new-array v1, v0, [Lcom/snapchat/videotranscoder/task/MediaSource;

    move v0, v5

    .line 359
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/LazyMediaSource;->a(Landroid/content/Context;)Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 361
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    mul-int/2addr v4, v6

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v6, v6

    div-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v2, "Failed to get media sources"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    .line 369
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    .line 370
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->b([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    .line 372
    new-array v0, v7, [Ljava/lang/Integer;

    iget v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 374
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;-><init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 502
    if-eqz p2, :cond_0

    .line 503
    const-string v0, "SaveStoryToGalleryTask"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/FailedToSaveStoryToGalleryException;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/analytics/handledexceptions/FailedToSaveStoryToGalleryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 510
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->c:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 511
    return-void

    .line 506
    :cond_0
    const-string v0, "SaveStoryToGalleryTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/FailedToSaveStoryToGalleryException;

    invoke-direct {v0, p1}, Lcom/snapchat/android/analytics/handledexceptions/FailedToSaveStoryToGalleryException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    return v0
.end method

.method private b([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 5
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 420
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 421
    instance-of v4, v3, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    if-eqz v4, :cond_0

    .line 422
    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/task/MediaSource;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->a(Ljava/lang/String;Z)Landroid/media/MediaFormat;

    move-result-object v3

    .line 424
    if-nez v3, :cond_1

    .line 420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p2, v3}, Lcom/snapchat/videotranscoder/utils/MimeTools;->d(Landroid/media/MediaFormat;)I

    move-result v0

    .line 429
    invoke-virtual {p2, v3}, Lcom/snapchat/videotranscoder/utils/MimeTools;->e(Landroid/media/MediaFormat;)I

    move-result v1

    .line 431
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 433
    const-string v0, "bitrate"

    const/high16 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 435
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "audio/mp4a-latm"

    invoke-direct {v0, v2, v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 439
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1;-><init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    return-void
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 447
    .line 448
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 449
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_1
    if-nez v0, :cond_3

    .line 452
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 454
    goto :goto_0

    :cond_1
    move v0, v2

    .line 450
    goto :goto_1

    .line 455
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private e()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 463
    .line 464
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 465
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 467
    :goto_1
    if-eqz v0, :cond_3

    .line 468
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 470
    goto :goto_0

    :cond_1
    move v0, v2

    .line 466
    goto :goto_1

    .line 471
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private f()J
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    if-eq v0, v1, :cond_0

    .line 480
    const-wide/16 v0, 0x0

    .line 483
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->p:J

    iget-wide v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->o:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private g()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->h:Z

    if-nez v0, :cond_0

    .line 175
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->h:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/cache/FileUtils;->a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->l:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 183
    new-instance v2, Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iget-object v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->l:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-direct {v2, v3}, Lcom/snapchat/videotranscoder/task/TranscodingTask;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V

    iput-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    .line 185
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    new-instance v5, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;

    invoke-direct {v5, p0, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;-><init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;Ljava/lang/Object;)V

    new-instance v6, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;

    invoke-direct {v6, p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;-><init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 209
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 213
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    iget-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->m:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v2

    sget-object v3, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v2, v3, :cond_3

    .line 221
    const-string v0, "Transcoding failed!"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 232
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    add-int/2addr v3, v0

    move v0, v1

    .line 233
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/snapchat/android/model/LazyMediaSource;->a()V

    .line 235
    new-array v4, v7, [Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v6, v6

    div-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_5 .. :try_end_5} :catch_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_6
    const-string v2, "Failed to wait for transcoding synchronization object to fire"

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 217
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    .line 232
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    add-int/2addr v3, v0

    move v0, v1

    .line 233
    :goto_2
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/snapchat/android/model/LazyMediaSource;->a()V

    .line 235
    new-array v4, v7, [Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v6, v6

    div-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 237
    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    .line 226
    :cond_3
    :try_start_7
    iget-object v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snapchat/android/util/cache/FileUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_7 .. :try_end_7} :catch_1

    .line 232
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    add-int/2addr v2, v0

    move v0, v1

    .line 233
    :goto_3
    iget-object v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 234
    iget-object v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/LazyMediaSource;->a()V

    .line 235
    new-array v3, v7, [Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v5, v5

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 227
    :catch_1
    move-exception v0

    .line 228
    :try_start_8
    const-string v2, "There was a setup issue with the transcoding operation"

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 230
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    .line 232
    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    add-int/2addr v3, v0

    move v0, v1

    .line 233
    :goto_4
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 234
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/snapchat/android/model/LazyMediaSource;->a()V

    .line 235
    new-array v4, v7, [Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v6, v6

    div-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move-object v0, v2

    .line 237
    goto/16 :goto_0

    .line 232
    :catchall_1
    move-exception v0

    move-object v2, v0

    iget v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->i:I

    iget v3, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->j:I

    add-int/2addr v3, v0

    move v0, v1

    .line 233
    :goto_5
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 234
    iget-object v4, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/snapchat/android/model/LazyMediaSource;->a()V

    .line 235
    new-array v4, v7, [Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->k:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    array-length v6, v6

    div-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 237
    :cond_5
    throw v2

    .line 239
    :cond_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 344
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 9
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 315
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->p:J

    .line 320
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->b:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e()I

    move-result v2

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d()I

    move-result v3

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f()J

    move-result-wide v4

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->l:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;->a(IIJLcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;Lcom/snapchat/videotranscoder/task/Task$Status;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V

    .line 332
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a()V

    .line 337
    :goto_1
    return-void

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->b()V

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 308
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryGroup;->a(I)V

    .line 310
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 350
    const v0, 0x7f0c016f

    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 352
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 264
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->o:J

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->n()Lcom/snapchat/android/model/StoryGroup$ActionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-eq v0, v1, :cond_0

    .line 268
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->e:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only save one story at a time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->e:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryGroup;->a(I)V

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 276
    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Z)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->c()V

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/snapchat/android/model/LazyMediaSource;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 284
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Story snap is not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->d:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 289
    iput-boolean v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->h:Z

    .line 303
    :cond_2
    :goto_2
    return-void

    .line 294
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->g:[Lcom/snapchat/android/model/LazyMediaSource;

    add-int/lit8 v0, v1, 0x1

    iget-object v6, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->d:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/snapchat/android/model/StorySnap;->d(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 302
    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setup media source for save story to gallery task: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->e:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->n:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 299
    iput-boolean v2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->h:Z

    goto :goto_2
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a([Ljava/lang/Integer;)V

    return-void
.end method
