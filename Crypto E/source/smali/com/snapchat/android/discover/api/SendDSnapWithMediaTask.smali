.class public Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;,
        Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/snapchat/android/discover/model/DSnapbryo;

.field private c:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

.field private d:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private e:[B


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 42
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->a:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/util/cache/Cache;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
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
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b:Lcom/snapchat/android/discover/model/DSnapbryo;

    .line 49
    iput-object p2, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->c:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    .line 50
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 51
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->e:[B

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->e:[B

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 54
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException;

    const-string v1, "Snap media is no longer accessible :("

    invoke-direct {v0, v1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)Lcom/snapchat/android/discover/model/DSnapbryo;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b:Lcom/snapchat/android/discover/model/DSnapbryo;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)[B
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->e:[B

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->l()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->m()V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->e()Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "/ph/upload"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;-><init>(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;Ljava/lang/String;)V

    return-object v0
.end method

.method protected l()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b:Lcom/snapchat/android/discover/model/DSnapbryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 114
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b:Lcom/snapchat/android/discover/model/DSnapbryo;

    iget-object v2, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->c:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/api/SendDSnapTask;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->g()V

    .line 115
    return-void
.end method

.method protected m()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->c:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 120
    return-void
.end method
