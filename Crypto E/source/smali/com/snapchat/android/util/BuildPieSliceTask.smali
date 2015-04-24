.class public abstract Lcom/snapchat/android/util/BuildPieSliceTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/BuildPieSliceTask$2;,
        Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

.field private final b:Lcom/snapchat/android/util/bitmap/BitmapPool;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/snapchat/android/networkmanager/media/MediaDownloader;Lcom/snapchat/android/util/bitmap/BitmapPool;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/networkmanager/media/MediaDownloader;",
            "Lcom/snapchat/android/util/bitmap/BitmapPool;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    .line 71
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null or zero-length stories array passed to BuildPieSliceTask()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->c:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->b:Lcom/snapchat/android/util/bitmap/BitmapPool;

    .line 77
    iput-object p2, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    .line 78
    invoke-interface {p5}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->e:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 80
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$2;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->e:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_2
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 83
    iget-object v2, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v2

    .line 91
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v4

    .line 92
    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    div-long/2addr v4, v6

    .line 93
    add-long/2addr v2, v4

    .line 95
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 96
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 99
    if-lez v1, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 100
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_3

    .line 95
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 103
    :cond_3
    add-long/2addr v2, v4

    .line 106
    :cond_4
    iget-object v6, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/BuildPieSliceTask;-><init>(Landroid/content/Context;Lcom/snapchat/android/networkmanager/media/MediaDownloader;Lcom/snapchat/android/util/bitmap/BitmapPool;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 66
    return-void
.end method

.method private a(J)F
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x41c0

    .line 266
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-float v0, v0

    const v1, 0x4a5bba00

    div-float/2addr v0, v1

    .line 268
    sub-float v0, v2, v0

    div-float/2addr v0, v2

    return v0
.end method

.method protected static a(II)Landroid/graphics/RectF;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 201
    if-ne p0, p1, :cond_0

    .line 202
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 210
    :goto_0
    return-object v0

    .line 205
    :cond_0
    div-int/lit8 v0, p0, 0x2

    .line 206
    div-int/lit8 v1, p1, 0x2

    .line 207
    sub-int v2, v1, v0

    .line 208
    add-int/2addr v1, v0

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, v2

    int-to-float v2, v2

    int-to-float v4, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/util/BuildPieSliceTask;)Lcom/snapchat/android/networkmanager/media/MediaDownloader;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 235
    new-instance v4, Lcom/snapchat/android/util/BuildPieSliceTask$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/snapchat/android/util/BuildPieSliceTask$1;-><init>(Lcom/snapchat/android/util/BuildPieSliceTask;Lcom/snapchat/android/model/StorySnap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "BuildPieSliceTask"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 219
    const/high16 v3, 0x43b4

    .line 220
    const/high16 v0, -0x3d4c

    sub-float v2, v0, v3

    move-object v0, p1

    .line 221
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 222
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/util/BuildPieSliceTask;->a()V

    .line 119
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 123
    :goto_1
    const/16 v0, 0x66

    const/16 v3, 0x66

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 127
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/BuildPieSliceTask;->a(Landroid/graphics/Canvas;)V

    .line 131
    :cond_1
    if-eqz v1, :cond_3

    const/16 v1, 0x5f

    move v6, v1

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/snapchat/android/model/StorySnap;

    .line 134
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v4

    .line 137
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    iget-object v7, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->c:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v7, v4, v10, v11}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    if-nez v1, :cond_4

    .line 142
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v1

    .line 143
    new-instance v7, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v10, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 151
    :goto_4
    sget-object v4, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    iget-object v10, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->c:Landroid/content/Context;

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v10, v1, v7, v11}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    if-nez v1, :cond_4

    .line 154
    const-string v1, "BuildPieSliceTask"

    const-string v2, "Failed to load bitmap from internal memory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 120
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 131
    :cond_3
    const/16 v1, 0x66

    move v6, v1

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v6, :cond_9

    .line 161
    :cond_5
    const/4 v3, 0x1

    invoke-static {v1, v6, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->b:Lcom/snapchat/android/util/bitmap/BitmapPool;

    invoke-virtual {v4, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    move-object v4, v3

    .line 167
    :goto_5
    const/4 v7, 0x1

    .line 170
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v6, v1}, Lcom/snapchat/android/util/BuildPieSliceTask;->a(II)Landroid/graphics/RectF;

    move-result-object v1

    .line 171
    iget-object v3, p0, Lcom/snapchat/android/util/BuildPieSliceTask;->e:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    sget-object v10, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    if-ne v3, v10, :cond_6

    const/high16 v2, 0x3f80

    .line 173
    :goto_6
    const/high16 v3, 0x43b4

    mul-float/2addr v3, v2

    .line 174
    const/high16 v2, -0x3d4c

    sub-float/2addr v2, v3

    .line 177
    new-instance v10, Landroid/graphics/BitmapShader;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v10, v4, v11, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 178
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 180
    invoke-virtual {v10, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 183
    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v3, v7

    .line 184
    goto/16 :goto_3

    .line 171
    :cond_6
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/util/BuildPieSliceTask;->a(J)F

    move-result v2

    goto :goto_6

    .line 186
    :cond_7
    if-eqz v3, :cond_8

    move-object v0, v8

    .line 187
    goto/16 :goto_0

    .line 189
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v4, v1

    goto :goto_5

    :cond_a
    move-object v1, v4

    goto/16 :goto_4
.end method

.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/BuildPieSliceTask;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/BuildPieSliceTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
