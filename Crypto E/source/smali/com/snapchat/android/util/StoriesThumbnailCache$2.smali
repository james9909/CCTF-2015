.class Lcom/snapchat/android/util/StoriesThumbnailCache$2;
.super Lcom/snapchat/android/util/BuildPieSliceTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Landroid/content/Context;Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/snapchat/android/util/StoriesThumbnailCache;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    iput-object p5, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/util/BuildPieSliceTask;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-static {v0}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Lcom/snapchat/android/util/StoriesThumbnailCache;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-static {v0}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Lcom/snapchat/android/util/StoriesThumbnailCache;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->a:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    iget-object v3, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    iget-object v4, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->b:Ljava/util/List;

    invoke-direct {v2, v3, p1, v4}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;-><init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoryThumbnailLoadedEvent;

    iget-object v2, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StoryThumbnailLoadedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/StoriesThumbnailCache$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
