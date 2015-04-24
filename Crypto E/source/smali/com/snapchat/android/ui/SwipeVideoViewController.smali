.class public Lcom/snapchat/android/ui/SwipeVideoViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SwipeController$OnScrollListener;


# instance fields
.field private a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

.field private b:Lcom/snapchat/android/ui/SwipeViewState;

.field private c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

.field private d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private f:F


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    .line 19
    iput-object p2, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    .line 20
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 21
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->f:F

    .line 23
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    if-nez v0, :cond_3

    move v1, v2

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v4, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v4, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v4

    invoke-interface {v0, v4}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    .line 75
    iget-object v4, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v5, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v5, v1}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v1

    invoke-interface {v4, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v1

    .line 77
    sget-object v4, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 78
    instance-of v5, v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    if-eqz v5, :cond_5

    .line 79
    check-cast v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;->f()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v0

    .line 81
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    if-eq v4, v0, :cond_0

    .line 82
    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move v3, v2

    .line 85
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 86
    instance-of v4, v1, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 87
    check-cast v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;->f()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    if-eq v1, v0, :cond_4

    .line 90
    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 93
    :goto_2
    if-eqz v2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 97
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 71
    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 33
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->f:F

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/ui/SwipeVideoViewController;->c()V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->f:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b(F)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/ui/SwipeVideoViewController;->c()V

    .line 53
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->c:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 27
    return-void
.end method

.method public b()Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 4

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->f:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeVideoViewController;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    return-void
.end method
