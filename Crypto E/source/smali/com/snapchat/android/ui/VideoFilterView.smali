.class public Lcom/snapchat/android/ui/VideoFilterView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;,
        Lcom/snapchat/android/ui/VideoFilterView$RenderDoneCallBack;,
        Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;
    }
.end annotation


# instance fields
.field a:Landroid/view/SurfaceHolder$Callback;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

.field private e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

.field private f:[F

.field private g:Lcom/snapchat/android/ui/SwipeVideoViewController;

.field private h:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private i:I

.field private j:I

.field private k:F

.field private l:Lcom/snapchat/android/util/debug/ExceptionReporter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:I

    .line 44
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 45
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 46
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->d()[F

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:[F

    .line 48
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 54
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;-><init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    .line 58
    new-instance v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/VideoFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->e()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:I

    .line 44
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 45
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 46
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->d()[F

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:[F

    .line 48
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 54
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;-><init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    .line 69
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->e()V

    .line 70
    new-instance v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/videotranscoder/cts/InputSurface;)Lcom/snapchat/videotranscoder/cts/InputSurface;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    return-object v0
.end method

.method private a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x3fb999999999999aL

    const/4 v6, 0x0

    .line 191
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 192
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 193
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 194
    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 196
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 198
    cmpl-float v4, v0, v1

    if-gez v4, :cond_0

    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 199
    :cond_0
    const-string v0, "VideoFilterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Aspect Ratio = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " x "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:I

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    .line 204
    const-string v2, "VideoFilterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting Aspect Ratio. Video has a shorter aspectRatio of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_3
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_1

    .line 208
    const-string v2, "VideoFilterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting Aspect Ratio. Video basically fits with a AR of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/TaskExecutor;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->d()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/cts/InputSurface;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    return-object v0
.end method

.method private d()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_0
    new-instance v1, Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->b()Landroid/media/MediaFormat;

    move-result-object v0

    .line 171
    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 172
    :try_start_2
    const-string v4, "height"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 176
    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->f()V

    .line 184
    :goto_1
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 185
    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/ui/VideoFilterView;->a(II)V

    goto :goto_0

    .line 180
    :cond_2
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Could not create video extractor."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    .line 174
    :goto_2
    :try_start_3
    const-string v4, "VideoFilterView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get video dimensions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->f()V

    goto :goto_1

    .line 180
    :cond_3
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Could not create video extractor."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->f()V

    .line 180
    throw v0

    :cond_4
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Could not create video extractor."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 173
    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:I

    .line 216
    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:I

    .line 217
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VideoFilterView;->setFocusable(Z)V

    .line 219
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VideoFilterView;->setFocusableInTouchMode(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->requestFocus()Z

    .line 221
    new-instance v0, Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 222
    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->c()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/SwipeVideoViewController;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/android/ui/SwipeVideoViewController;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;-><init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    .line 235
    new-instance v1, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    sget-object v2, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    sget-object v3, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iget-object v4, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;-><init>(Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(F)V

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTransformationMatrix([F)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:[F

    .line 121
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/android/ui/SwipeVideoViewController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeVideoViewController;->a()V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a(Lcom/snapchat/videotranscoder/task/Task;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 148
    :cond_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v2, Lcom/snapchat/android/analytics/handledexceptions/VideoPlaybackAbortFailedException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/handledexceptions/VideoPlaybackAbortFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/debug/ExceptionReporter;->b(Ljava/lang/Throwable;)V

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not release all components for video rendering! Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Landroid/net/Uri;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/VideoFilterView;->setTransformationMatrix([F)V

    .line 108
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    .line 109
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->d()V

    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->f()V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->requestLayout()V

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->invalidate()V

    .line 113
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 246
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/VideoFilterView$1;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    const-wide/16 v2, 0x19

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VideoFilterView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/ui/VideoFilterView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/VideoFilterView$2;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    iput v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:I

    goto :goto_0
.end method

.method public getFilterRenderingTask()Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 93
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 99
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:I

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/VideoFilterView;->getDefaultSize(II)I

    move-result v0

    .line 81
    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:I

    invoke-static {v1, p2}, Lcom/snapchat/android/ui/VideoFilterView;->getDefaultSize(II)I

    move-result v1

    .line 82
    iget v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:I

    if-lez v2, :cond_0

    .line 83
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:I

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setMeasuredDimension(II)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setSwipeVideoViewController(Lcom/snapchat/android/ui/SwipeVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/android/ui/SwipeVideoViewController;

    .line 75
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:F

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(F)V

    .line 128
    :cond_0
    return-void
.end method
