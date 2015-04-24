.class public final Lcom/snapchat/android/util/bitmap/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/bitmap/BitmapUtils$2;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x4

    .line 32
    sget-object v1, Lcom/snapchat/android/util/bitmap/BitmapUtils$2;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 41
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Bitmap config."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    const/4 v0, 0x2

    .line 42
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 39
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/util/concurrent/FutureTask;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz p0, :cond_1

    .line 89
    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v0, "BitmapUtils"

    const-string v2, "getBitmapFromFutureTask timed out getting bitmap - returning null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InterruptedException from preloading snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 100
    goto :goto_0

    .line 96
    :catch_2
    move-exception v0

    .line 97
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ExecutionException from preloading snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 82
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    sget-object v2, Lcom/snapchat/android/util/bitmap/BitmapUtils$2;->a:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 64
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Bitmap config."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    if-ne p1, p0, :cond_0

    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    invoke-static {p0}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 65
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
