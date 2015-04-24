.class public Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;

.field private final d:Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;

.field private final e:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v2}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    new-instance v3, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;

    invoke-direct {v3}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;-><init>()V

    new-instance v4, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;

    invoke-direct {v4}, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;-><init>()V

    new-instance v5, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapPool;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)V

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->b:Landroid/content/res/Resources;

    .line 53
    iput-object p2, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 54
    iput-object p3, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->c:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;

    .line 55
    iput-object p4, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->d:Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;

    .line 56
    iput-object p5, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->e:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    if-nez p2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-direct {p0, p2}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->b(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    const-string v3, "AsyncBitmapLoader"

    const-string v4, "Cancelling loader task for bitmap %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->cancel(Z)Z

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method private b(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;
    .locals 2
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    instance-of v1, v0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    .line 141
    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;->a()Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "AsyncBitmapLoader"

    const-string v1, "Recycling ImageView %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 67
    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b()Landroid/widget/ImageView;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "AsyncBitmapLoader"

    const-string v2, "Loading bitmap %s asynchronously into ImageView %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->c:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;

    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->e:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->d:Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;

    iget-object v3, p0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->e()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;)Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_0
    return-void
.end method
