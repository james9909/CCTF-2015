.class public Lcom/snapchat/android/ui/ChatCameraButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/drawable/Drawable;

.field private final j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:F

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Landroid/media/MediaPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const v0, 0x7f080024

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Landroid/graphics/Paint;

    .line 82
    const v0, 0x7f080005

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->c:Landroid/graphics/Paint;

    .line 83
    const v0, 0x7f08002f

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->d:Landroid/graphics/Paint;

    .line 84
    const v0, 0x7f080047

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->j:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    const/high16 v0, 0x4080

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    const/high16 v0, 0x40e0

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    const/high16 v0, 0x4120

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:F

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    .line 114
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Paint;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    return-object v1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S7500"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const v0, 0x7f060004

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lcom/snapchat/android/ui/ChatCameraButton$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton$1;-><init>(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/content/Context;)V

    .line 141
    const-string v1, "HerePresenceButton Load Sound Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    return-void
.end method

.method private a(Landroid/graphics/Canvas;J)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const-wide/16 v4, 0x4b0

    const/16 v1, 0xff

    const/4 v0, 0x0

    const/high16 v8, 0x4416

    .line 295
    move v2, v0

    .line 296
    :cond_0
    :goto_0
    cmp-long v3, p2, v4

    if-ltz v3, :cond_1

    .line 297
    sub-long/2addr p2, v4

    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 303
    const-wide/16 v2, 0x3e8

    sub-long/2addr p2, v2

    .line 304
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    .line 319
    :goto_1
    return-void

    .line 308
    :cond_1
    const v2, 0x3ea8f5c3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 309
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e0f5c28

    mul-float/2addr v4, v5

    long-to-float v5, p2

    div-float/2addr v5, v8

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v3

    .line 310
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f5c28f6

    mul-float/2addr v5, v6

    long-to-float v6, p2

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v4

    .line 311
    iget-object v5, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v2, v7

    invoke-virtual {v5, v3, v6, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 313
    const/high16 v2, 0x437f

    long-to-float v3, p2

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    rsub-int v2, v2, 0xff

    .line 314
    if-gez v2, :cond_2

    .line 316
    :goto_2
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 315
    :cond_2
    if-le v2, v1, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v2, v0

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0xc8

    .line 256
    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p3

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 258
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 266
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    sub-long v0, p3, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;J)V

    .line 263
    iput-object p2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0xc8

    .line 269
    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p3

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 271
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 272
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    iput-object p2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0xc8

    .line 284
    cmp-long v0, p3, v4

    if-gez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v0

    int-to-long v0, v0

    sub-long v2, v4, p3

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-float v0, v0

    .line 286
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 150
    :cond_0
    return-void
.end method

.method public getCashSwipeDetected()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Z

    return v0
.end method

.method public getCashtagDetected()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Z

    return v0
.end method

.method public getIsEmoji()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:F

    iget v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:F

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:J

    sub-long/2addr v0, v2

    .line 236
    iget-boolean v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Z

    if-eqz v2, :cond_2

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 238
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:F

    iget v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:F

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 239
    :cond_2
    iget-boolean v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 241
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 244
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;->a(Landroid/view/MotionEvent;)V

    .line 210
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCashSwipeDetected(Z)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Z

    if-ne p1, v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:J

    .line 162
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Z

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_0
.end method

.method public setCashtagDetected(Z)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Z

    if-ne p1, v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:J

    .line 155
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Z

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_0
.end method

.method public setIsEmoji(Z)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    .line 197
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 198
    return-void
.end method

.method public setPresent(Z)V
    .locals 4
    .parameter

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    if-ne p1, v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    .line 177
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Z

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:J

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 182
    if-eqz p1, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "ChatCameraButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTouchSubscriber(Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;

    .line 202
    return-void
.end method
