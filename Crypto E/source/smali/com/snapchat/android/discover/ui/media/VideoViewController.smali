.class public Lcom/snapchat/android/discover/ui/media/VideoViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected b:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected c:Landroid/media/MediaPlayer$OnInfoListener;

.field protected d:Landroid/media/MediaPlayer$OnErrorListener;

.field private final e:Z

.field private f:Lcom/snapchat/android/ui/TextureVideoView;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private j:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;-><init>(ZZ)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->j:I

    .line 142
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;-><init>(Lcom/snapchat/android/discover/ui/media/VideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 159
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;-><init>(Lcom/snapchat/android/discover/ui/media/VideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 192
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoViewController$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/VideoViewController$3;-><init>(Lcom/snapchat/android/discover/ui/media/VideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->c:Landroid/media/MediaPlayer$OnInfoListener;

    .line 208
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoViewController$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/VideoViewController$4;-><init>(Lcom/snapchat/android/discover/ui/media/VideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->d:Landroid/media/MediaPlayer$OnErrorListener;

    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->h:Z

    .line 43
    iput-boolean p2, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->e:Z

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/ui/TextureVideoView;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 114
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 77
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/TextureVideoView;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->h:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/ui/TextureVideoView;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/TextureVideoView;Ljava/lang/String;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 54
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->g:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    .line 56
    iput-boolean p3, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->h:Z

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->c:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->d:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 61
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "VideoViewController"

    const-string v1, "Calling start on an uninitialized controller."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->j:I

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    iget v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->j:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getCurrentPosition()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->j:I

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 107
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController;->f:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
