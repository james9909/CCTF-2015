.class Lcom/snapchat/android/location/DownloadGeofilterTask;
.super Lcom/snapchat/android/api/DownloadBitmapTask;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/snapchat/android/model/Geofilter;

.field private final c:Lcom/snapchat/android/location/GeofilterImageManager;

.field private final d:Lcom/snapchat/android/util/cache/Cache;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/model/Geofilter;Lcom/snapchat/android/location/GeofilterImageManager;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/DownloadBitmapTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->b:Lcom/snapchat/android/model/Geofilter;

    .line 28
    iput-object p4, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    .line 29
    iput-object p5, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->d:Lcom/snapchat/android/util/cache/Cache;

    .line 30
    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/snapchat/android/api/DownloadBitmapTask;->onPostExecute(Ljava/lang/Object;)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string v0, "DownloadGeofilterTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    iget-object v1, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->d:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    const-string v0, "DownloadGeofilterTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    iget-object v1, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "DownloadGeofilterTask"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Geofilter;->a(Landroid/graphics/Bitmap;)V

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    iget-object v1, p0, Lcom/snapchat/android/location/DownloadGeofilterTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/snapchat/android/location/DownloadGeofilterTask;->a([B)V

    return-void
.end method
