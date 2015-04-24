.class public Lcom/snapchat/android/rendering/video/VideoSnapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# static fields
.field protected static final e:Landroid/media/MediaPlayer$OnErrorListener;

.field private static f:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/media/MediaPlayer$OnInfoListener;

.field protected final b:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected final c:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected final d:Landroid/media/MediaPlayer$OnErrorListener;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private final j:Lcom/squareup/otto/Bus;

.field private final k:Lcom/snapchat/android/util/cache/FileUtils;

.field private final l:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/View;

.field private o:Lcom/snapchat/android/ui/SnapVideoView;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/snapchat/android/ui/WideTextView;

.field private r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

.field private s:Landroid/media/MediaPlayer;

.field private t:Z

.field private u:Lcom/snapchat/android/model/ReceivedSnap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "VideoSnapRenderer"

    sput-object v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$6;

    invoke-direct {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$6;-><init>()V

    sput-object v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v3, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v3}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v5}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    new-instance v6, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    invoke-direct {v6, p1}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/squareup/otto/Bus;Lcom/snapchat/android/util/cache/FileUtils;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/squareup/otto/Bus;Lcom/snapchat/android/util/cache/FileUtils;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$2;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a:Landroid/media/MediaPlayer$OnInfoListener;

    .line 367
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 398
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 407
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$5;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d:Landroid/media/MediaPlayer$OnErrorListener;

    .line 82
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->g:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->h:Landroid/view/LayoutInflater;

    .line 84
    iput-object p3, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->i:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 85
    iput-object p4, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->j:Lcom/squareup/otto/Bus;

    .line 86
    iput-object p5, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->k:Lcom/snapchat/android/util/cache/FileUtils;

    .line 87
    iput-object p6, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->l:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->s:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/rendering/video/VideoSnapResources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/util/Resolution;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    sget-object v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    const-string v1, "getVideoUri() return null, the video is not available locally"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->b:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 227
    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->b(Lcom/snapchat/android/model/ReceivedSnap;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->seekTo(I)V

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/util/Resolution;)V
    .locals 6
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 249
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v2

    .line 251
    int-to-double v4, v0

    div-double v2, v4, v2

    double-to-int v1, v2

    .line 252
    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    .line 253
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 324
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 325
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 328
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 329
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 331
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v0

    const-wide/16 v10, 0x1

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    const/high16 v1, -0x3d4c

    .line 335
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 337
    sub-int v1, v7, v8

    div-int/lit8 v1, v1, 0x2

    .line 338
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ad()D

    move-result-wide v4

    .line 339
    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d(Landroid/content/Context;)I

    move-result v2

    .line 340
    neg-int v1, v1

    div-int/lit8 v6, v8, 0x2

    add-int/2addr v1, v6

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v1, v6

    const-wide/high16 v10, 0x3ff0

    sub-double v4, v10, v4

    sub-int v6, v8, v2

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v4, v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 342
    div-int/lit8 v4, v7, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v4, v2

    int-to-float v2, v2

    .line 343
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v1, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 346
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 347
    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 348
    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 349
    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/ui/WideTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 352
    return-void

    .line 333
    :cond_0
    const/high16 v1, 0x42b4

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setLandscapeMode(Z)V

    .line 261
    const/4 v1, 0x0

    .line 262
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 263
    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aD()Lcom/snapchat/android/model/server/CaptionParameters;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/CaptionParameters;->getText()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->aa()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_1
    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ab()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3d59999a

    mul-float/2addr v2, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setTextSize(F)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    invoke-direct {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_1

    .line 282
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->t:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->s:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnap;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a()V

    .line 245
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    const-string v2, "Start %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_1

    .line 176
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start called for null snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 186
    :cond_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f040083

    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    const v1, 0x7f0a02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapVideoView;

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    const v1, 0x7f0a02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    const v1, 0x7f0a02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/WideTextView;

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 289
    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 290
    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 292
    mul-float v3, v1, v2

    sub-float v3, v0, v3

    .line 293
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 294
    sub-float v1, v0, v3

    .line 296
    float-to-double v4, v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ad()D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v2, v3

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 297
    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ad()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    move v1, v0

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    add-int/lit8 v2, v1, 0x30

    iget-object v3, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 303
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4218

    iget-object v3, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->g:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 306
    :goto_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapVideoView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void

    .line 305
    :cond_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 128
    sget-object v0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-object p3, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    .line 131
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    .line 132
    iput-boolean p2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->t:Z

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->k:Lcom/snapchat/android/util/cache/FileUtils;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/FileUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 170
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/cache/Storage;->a(Ljava/io/File;Ljava/io/File;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->j:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->l:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    new-instance v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$1;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/ReceivedSnap;)Z
    .locals 4
    .parameter

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 190
    sget-object v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    const-string v2, "Stop %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_1

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->l:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    invoke-virtual {v0}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a()V

    .line 194
    iput-object v5, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->r:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    .line 195
    iput-object v5, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 201
    iput-object v5, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->s:Landroid/media/MediaPlayer;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    sget-object v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-object v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    const-string v2, "Show %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    .line 111
    :goto_1
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public d()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 115
    sget-object v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->f:Ljava/lang/String;

    const-string v2, "Hide %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->o:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->q:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->i:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 124
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->u:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
