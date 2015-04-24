.class public Lcom/snapchat/android/ui/SnapTimerView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 38
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 39
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->b()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 38
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 39
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->b()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 38
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 39
    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->b()V

    .line 64
    return-void
.end method

.method private a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0201f4

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/snapchat/android/util/DrawingUtils;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_5

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0201f3

    .line 203
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/snapchat/android/util/DrawingUtils;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    :cond_5
    return-void

    .line 195
    :cond_6
    const v0, 0x7f0201f2

    goto :goto_0

    .line 202
    :cond_7
    const v0, 0x7f0201f1

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setTextColor(I)V

    .line 68
    const/high16 v0, 0x41a0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setTextSize(IF)V

    .line 69
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setGravity(I)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    .line 77
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 121
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 123
    :goto_0
    if-ge v1, v0, :cond_2

    .line 126
    :goto_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    .line 127
    :goto_2
    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 129
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :cond_1
    const/16 v1, 0xc

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 96
    return-void
.end method

.method public a(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 83
    sub-long v0, p3, p1

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 85
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 86
    add-long v0, v2, p1

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->invalidate()V

    .line 89
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/high16 v12, -0x3d4c

    const-wide/high16 v10, 0x4000

    .line 141
    iget-boolean v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    if-eqz v2, :cond_0

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:J

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getWidth()I

    move-result v2

    .line 146
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getHeight()I

    move-result v3

    .line 147
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 148
    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/ui/SnapTimerView;->a(II)V

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 157
    int-to-double v6, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 160
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v5, v6

    .line 161
    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v5, v7

    .line 162
    iget-object v7, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    rsub-int/lit8 v8, v5, 0x0

    int-to-float v8, v8

    rsub-int/lit8 v9, v6, 0x0

    int-to-float v9, v9

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v7, v8, v9, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 166
    iget-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:J

    iget-wide v6, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    sub-long v6, v2, v6

    .line 167
    iget-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    iget-wide v8, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    sub-long/2addr v2, v8

    .line 168
    cmp-long v5, v6, v0

    if-gez v5, :cond_2

    .line 176
    :goto_0
    const-wide/16 v6, 0x168

    mul-long/2addr v0, v6

    long-to-float v0, v0

    long-to-float v1, v2

    div-float v6, v0, v1

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    add-float v2, v12, v6

    const/high16 v0, 0x43b4

    sub-float v3, v0, v6

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 184
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    return-void

    .line 170
    :cond_2
    cmp-long v0, v6, v2

    if-lez v0, :cond_3

    move-wide v0, v2

    .line 171
    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v8, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p0, v0, v1, v5, v8}, Lcom/snapchat/android/ui/SnapTimerView;->invalidate(IIII)V

    move-wide v0, v6

    goto :goto_0
.end method

.method public setIsStory(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:Z

    if-ne v0, p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 105
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:Z

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    iput-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:Landroid/graphics/Bitmap;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    iput-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->c()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->c()V

    .line 101
    return-void
.end method
