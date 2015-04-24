.class public Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/data/gson/discover/VideoCatalogResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/discover/VideoCatalogResponse;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    return-void
.end method
