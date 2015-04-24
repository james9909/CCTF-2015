.class public abstract Lcom/snapchat/android/api/DownloadBitmapTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadBitmapTask"


# instance fields
.field private final mBitmapUrl:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private final mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/networkmanager/media/MediaDownloader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/api/DownloadBitmapTask;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/api/DownloadBitmapTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    .line 32
    iput-object p3, p0, Lcom/snapchat/android/api/DownloadBitmapTask;->mBitmapUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/api/DownloadBitmapTask;-><init>(Landroid/content/Context;Lcom/snapchat/android/networkmanager/media/MediaDownloader;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "GEOFILTER_DOWNLOAD_BITMAP"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/snapchat/android/api/DownloadBitmapTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v4, p0, Lcom/snapchat/android/api/DownloadBitmapTask;->mBitmapUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 41
    const-string v4, "reachability"

    invoke-virtual {v2, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v4, "success"

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 42
    return-object v3

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/DownloadBitmapTask;->a([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method
