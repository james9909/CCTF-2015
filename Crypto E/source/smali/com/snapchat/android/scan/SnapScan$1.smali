.class Lcom/snapchat/android/scan/SnapScan$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/scan/SnapScan;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/snapchat/android/scan/SnapScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/snapchat/android/scan/SnapScan;


# direct methods
.method constructor <init>(Lcom/snapchat/android/scan/SnapScan;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    iput-object p2, p0, Lcom/snapchat/android/scan/SnapScan$1;->a:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/snapchat/android/scan/SnapScanResult;
    .locals 6
    .parameter

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    iget-object v1, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v1}, Lcom/snapchat/android/scan/SnapScan;->a(Lcom/snapchat/android/scan/SnapScan;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v2}, Lcom/snapchat/android/scan/SnapScan;->b(Lcom/snapchat/android/scan/SnapScan;)I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v3}, Lcom/snapchat/android/scan/SnapScan;->c(Lcom/snapchat/android/scan/SnapScan;)I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/scan/SnapScan$1;->a:[B

    const/16 v5, 0x1e0

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/scan/SnapScan;->a(Lcom/snapchat/android/scan/SnapScan;III[BI)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v1}, Lcom/snapchat/android/scan/SnapScan;->d(Lcom/snapchat/android/scan/SnapScan;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/scan/SnapScanResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->e(Lcom/snapchat/android/scan/SnapScan;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scanner was disabled during last processed frame."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 140
    :cond_0
    if-eqz p1, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->hasScannedData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopped scanning - Result found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScan;->a()V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/scan/SnapScanCallback;->y()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/scan/SnapScanCallback;->a(I[B)V

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->hasScannerViewImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->getScannerViewBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/scan/SnapScanCallback;->b(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPTAG_FOUND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "code-version"

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snaptag"

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 191
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan$1;->b:Lcom/snapchat/android/scan/SnapScan;

    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->g(Lcom/snapchat/android/scan/SnapScan;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 188
    :cond_5
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected null SnapScanResult."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/scan/SnapScan$1;->a([Ljava/lang/Void;)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/snapchat/android/scan/SnapScanResult;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/scan/SnapScan$1;->a(Lcom/snapchat/android/scan/SnapScanResult;)V

    return-void
.end method
