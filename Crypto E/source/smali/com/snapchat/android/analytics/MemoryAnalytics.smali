.class public Lcom/snapchat/android/analytics/MemoryAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDeviceUtils:Lcom/snapchat/android/util/DeviceUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/snapchat/android/util/DeviceUtils;->a()Lcom/snapchat/android/util/DeviceUtils;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/MemoryAnalytics;-><init>(Lcom/snapchat/android/util/DeviceUtils;)V

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/DeviceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/analytics/MemoryAnalytics;->mDeviceUtils:Lcom/snapchat/android/util/DeviceUtils;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "memory_class"

    iget-object v2, p0, Lcom/snapchat/android/analytics/MemoryAnalytics;->mDeviceUtils:Lcom/snapchat/android/util/DeviceUtils;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/DeviceUtils;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    const-string v1, "memory_class"

    iget-object v2, p0, Lcom/snapchat/android/analytics/MemoryAnalytics;->mDeviceUtils:Lcom/snapchat/android/util/DeviceUtils;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/DeviceUtils;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 33
    return-void
.end method
