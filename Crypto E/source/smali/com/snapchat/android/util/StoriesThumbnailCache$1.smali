.class Lcom/snapchat/android/util/StoriesThumbnailCache$1;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/StoriesThumbnailCache;-><init>(Lcom/snapchat/android/model/StoryLibrary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/StoriesThumbnailCache;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/StoriesThumbnailCache;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$1;->a:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-static {p2}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->a(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 106
    int-to-float v0, v0

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/StoriesThumbnailCache$1;->a(Ljava/lang/String;Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)I

    move-result v0

    return v0
.end method
