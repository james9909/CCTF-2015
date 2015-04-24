.class public Lcom/snapchat/android/operation/SnapTagDownloadOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/SnapTagDownloadOperation$Payload;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 34
    const-string v0, "ImageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/SnapTagDownloadOperation;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 66
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->f()Lcom/snapchat/android/util/memory/Buffer;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->j:Lcom/snapchat/android/util/cache/Cache;

    const-string v2, "snaptag"

    invoke-interface {v0}, Lcom/snapchat/android/util/memory/Buffer;->b()[B

    move-result-object v3

    invoke-interface {v0}, Lcom/snapchat/android/util/memory/Buffer;->a()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ProfileImageCacheUpdatedEvent;

    const-string v2, "snaptag"

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ProfileImageCacheUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "SnapTagDownloadOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store the downloaded snaptag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/snapchat/android/operation/SnapTagDownloadOperation$Payload;

    iget-object v1, p0, Lcom/snapchat/android/operation/SnapTagDownloadOperation;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/operation/SnapTagDownloadOperation$Payload;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/bq/snaptag_download"

    return-object v0
.end method
