.class public Lcom/snapchat/android/ui/TextureVideoView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnErrorListener;

.field private B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private C:Landroid/view/TextureView$SurfaceTextureListener;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/Surface;

.field private o:Landroid/widget/MediaController;

.field private p:Landroid/media/MediaPlayer$OnCompletionListener;

.field private q:Landroid/media/MediaPlayer$OnPreparedListener;

.field private r:I

.field private s:Landroid/media/MediaPlayer$OnErrorListener;

.field private t:Landroid/media/MediaPlayer$OnInfoListener;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroid/media/MediaPlayer$OnCompletionListener;

.field private z:Landroid/media/MediaPlayer$OnInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "TextureVideoView"

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->c:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 54
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    .line 302
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$1;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 314
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$2;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 368
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$3;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 382
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$4;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:Landroid/media/MediaPlayer$OnInfoListener;

    .line 392
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$5;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Landroid/media/MediaPlayer$OnErrorListener;

    .line 413
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$6;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 462
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$7;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->C:Landroid/view/TextureView$SurfaceTextureListener;

    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "TextureVideoView"

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->c:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 54
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    .line 302
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$1;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 314
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$2;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 368
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$3;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 382
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$4;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:Landroid/media/MediaPlayer$OnInfoListener;

    .line 392
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$5;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Landroid/media/MediaPlayer$OnErrorListener;

    .line 413
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$6;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 462
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$7;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->C:Landroid/view/TextureView$SurfaceTextureListener;

    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    return p1
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 503
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    .line 504
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 505
    if-eqz p1, :cond_0

    .line 506
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 511
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    .line 513
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    .line 170
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->C:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setFocusable(Z)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setFocusableInTouchMode(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->requestFocus()Z

    .line 175
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 176
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/TextureVideoView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 243
    invoke-direct {p0, v6}, Lcom/snapchat/android/ui/TextureVideoView;->a(Z)V

    .line 245
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    .line 247
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:I

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 260
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 267
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 268
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iput v5, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 272
    iput v5, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v4, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 250
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 275
    :catch_1
    move-exception v0

    .line 276
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iput v5, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 278
    iput v5, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v4, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/TextureVideoView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 300
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 295
    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/TextureVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:I

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:I

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    return p1
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 642
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    return p1
.end method

.method static synthetic h(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->t:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/ui/TextureVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 223
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    .line 224
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 225
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/view/Surface;

    .line 231
    :cond_1
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->v:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->w:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->x:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 689
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I

    .line 690
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 692
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:I

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 159
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 165
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 533
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    move v0, v1

    .line 540
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_8

    .line 541
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 569
    :cond_1
    :goto_1
    return v1

    .line 533
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 551
    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 557
    :cond_5
    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_7

    .line 559
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 561
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 565
    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->e()V

    .line 569
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v6, -0x8000

    .line 95
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/TextureVideoView;->getDefaultSize(II)I

    move-result v1

    .line 96
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/TextureVideoView;->getDefaultSize(II)I

    move-result v0

    .line 97
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    if-lez v2, :cond_0

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 101
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 104
    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    .line 110
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    .line 112
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    div-int/2addr v1, v2

    .line 153
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setMeasuredDimension(II)V

    .line 154
    return-void

    .line 113
    :cond_1
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    .line 115
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    .line 117
    :cond_2
    if-ne v4, v3, :cond_3

    .line 120
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    div-int/2addr v1, v3

    .line 121
    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_3
    if-ne v5, v3, :cond_4

    .line 128
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    div-int/2addr v1, v3

    .line 129
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    .line 131
    goto :goto_0

    .line 135
    :cond_4
    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    .line 136
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    .line 137
    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    .line 140
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    div-int/2addr v1, v3

    .line 142
    :goto_1
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    .line 145
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->e()V

    .line 520
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->e()V

    .line 528
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 589
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 592
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 595
    :cond_0
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 596
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:I

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 656
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:Landroid/widget/MediaController;

    .line 289
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->d()V

    .line 290
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 438
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/media/MediaPlayer$OnErrorListener;

    .line 450
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->t:Landroid/media/MediaPlayer$OnInfoListener;

    .line 460
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 428
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 195
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:Landroid/net/Uri;

    .line 208
    iput-object p2, p0, Lcom/snapchat/android/ui/TextureVideoView;->e:Ljava/util/Map;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:I

    .line 210
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->c()V

    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->invalidate()V

    .line 213
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 581
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 583
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 585
    :cond_0
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:I

    .line 586
    return-void
.end method
