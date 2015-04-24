.class Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/snapchat/android/model/ReceivedSnap;",
        "Ljava/lang/Void;",
        "Lcom/snapchat/android/rendering/video/VideoSnapResources;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->a:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/rendering/video/VideoSnapResources;
    .locals 3
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 23
    new-instance v1, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;

    invoke-direct {v1, v0}, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 27
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;

    .line 32
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/ReceivedSnap;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;

    .line 36
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->a()Lcom/snapchat/android/rendering/video/VideoSnapResources;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, [Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->a([Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/rendering/video/VideoSnapResources;

    move-result-object v0

    return-object v0
.end method
