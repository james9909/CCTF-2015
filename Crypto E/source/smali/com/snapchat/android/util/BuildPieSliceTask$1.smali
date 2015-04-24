.class Lcom/snapchat/android/util/BuildPieSliceTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/BuildPieSliceTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/snapchat/android/util/BuildPieSliceTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/BuildPieSliceTask;Lcom/snapchat/android/model/StorySnap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->c:Lcom/snapchat/android/util/BuildPieSliceTask;

    iput-object p2, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    iput-object p3, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aA()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->c:Lcom/snapchat/android/util/BuildPieSliceTask;

    invoke-static {v0}, Lcom/snapchat/android/util/BuildPieSliceTask;->a(Lcom/snapchat/android/util/BuildPieSliceTask;)Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    iget-object v2, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    const-string v0, "BuildPieSliceTask"

    const-string v1, "Thumbnail url for %s is null!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/util/BuildPieSliceTask$1;->a:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
