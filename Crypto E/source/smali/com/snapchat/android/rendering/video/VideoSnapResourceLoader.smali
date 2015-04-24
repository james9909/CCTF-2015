.class public Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->b:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;)Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->cancel(Z)Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    .line 65
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;)V
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
    .line 46
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;-><init>(Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;Landroid/content/Context;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->c:Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/android/model/ReceivedSnap;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
