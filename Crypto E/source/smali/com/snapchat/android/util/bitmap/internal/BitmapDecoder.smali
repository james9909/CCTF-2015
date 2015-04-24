.class public Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/DisplayMetrics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/content/ContentResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/content/res/Resources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/util/bitmap/BitmapPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/snapchat/android/analytics/MemoryAnalytics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapPool;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 52
    new-instance v5, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;

    invoke-direct {v5}, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;-><init>()V

    new-instance v6, Lcom/snapchat/android/analytics/MemoryAnalytics;

    invoke-direct {v6}, Lcom/snapchat/android/analytics/MemoryAnalytics;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapPool;Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;Lcom/snapchat/android/analytics/MemoryAnalytics;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapPool;Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;Lcom/snapchat/android/analytics/MemoryAnalytics;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a:Landroid/util/DisplayMetrics;

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->b:Landroid/content/ContentResolver;

    .line 65
    iput-object p3, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->c:Landroid/content/res/Resources;

    .line 66
    iput-object p4, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->d:Lcom/snapchat/android/util/bitmap/BitmapPool;

    .line 67
    iput-object p5, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->e:Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;

    .line 68
    iput-object p6, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->f:Lcom/snapchat/android/analytics/MemoryAnalytics;

    .line 69
    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode bitmap. \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options width: %d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options height: %d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options sample size: %d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options config: %s\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reused bitmap width: %d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reused bitmap height: %d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reused bitmap config: %s\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reused bitmap mutable?: %b\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reused bitmap recycled?: %b\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    return-object v0
.end method

.method protected a(IIZ)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 144
    :cond_0
    const-string v0, "BitmapDecoder"

    const-string v1, "Invalid measurements! Can\'t use a Bitmap from the pool. :("

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->e:Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 155
    :cond_1
    :goto_0
    return-object v0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->e:Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;

    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, p1, p2}, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->d:Lcom/snapchat/android/util/bitmap/BitmapPool;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->d:Lcom/snapchat/android/util/bitmap/BitmapPool;

    invoke-virtual {v1, v0, p3}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/util/bitmap/internal/BitmapSource;IIZ)Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->c:Landroid/content/res/Resources;

    invoke-interface {p1, v2, v3}, Lcom/snapchat/android/util/bitmap/internal/BitmapSource;->a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 89
    if-lez p2, :cond_0

    if-gtz p3, :cond_3

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 92
    invoke-interface {p1, v2}, Lcom/snapchat/android/util/bitmap/internal/BitmapSource;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_2

    .line 94
    :cond_1
    const-string v3, "BitmapDecoder"

    const-string v4, "Measured invalid Bitmap size %d x %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    invoke-direct {v0}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;-><init>()V

    .line 122
    :goto_0
    return-object v0

    .line 97
    :cond_2
    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 98
    iget p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 101
    :cond_3
    invoke-virtual {p0, p2, p3, p4}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a(IIZ)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 102
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 105
    :goto_1
    :try_start_0
    invoke-interface {p1, v2}, Lcom/snapchat/android/util/bitmap/internal/BitmapSource;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    invoke-direct {v1, v3, v0}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 102
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->f:Lcom/snapchat/android/analytics/MemoryAnalytics;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/MemoryAnalytics;->a(Ljava/lang/Throwable;)V

    .line 122
    :cond_5
    :goto_2
    new-instance v0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    invoke-direct {v0}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;-><init>()V

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 114
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 116
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 117
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a(Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)V

    goto :goto_2
.end method
