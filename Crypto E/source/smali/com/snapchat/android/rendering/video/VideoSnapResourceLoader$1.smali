.class Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;
.super Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;

.field final synthetic b:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;Landroid/content/Context;Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;->b:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    iput-object p3, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;->a:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;

    invoke-direct {p0, p2}, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;->b:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;->a(Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader;Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;)Lcom/snapchat/android/rendering/video/LoadVideoSnapResourcesAsyncTask;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;->a:Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;->a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V

    .line 52
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    check-cast p1, Lcom/snapchat/android/rendering/video/VideoSnapResources;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$1;->a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V

    return-void
.end method
