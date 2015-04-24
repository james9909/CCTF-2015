.class public Lcom/snapchat/android/ui/ImageResource;
.super Lcom/snapchat/android/ui/SnapchatResource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;
    }
.end annotation


# static fields
.field protected static final a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/snapchat/android/model/chat/ChatMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 37
    const v1, 0x3dcccccd

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 38
    const-string v1, "ImageResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageResource LruCache size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kilobytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v1, Lcom/snapchat/android/ui/ImageResource$1;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/ImageResource$1;-><init>(I)V

    sput-object v1, Lcom/snapchat/android/ui/ImageResource;->a:Landroid/support/v4/util/LruCache;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapchatResource;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/ui/ImageResource;->d:Lcom/snapchat/android/model/chat/ChatMedia;

    .line 55
    sget-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->a:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 56
    invoke-virtual {p0, p2}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->d:Lcom/snapchat/android/model/chat/ChatMedia;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/snapchat/android/ui/ImageResource;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 149
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/ui/ImageResource;->a:Landroid/support/v4/util/LruCache;

    iget-object v1, p0, Lcom/snapchat/android/ui/ImageResource;->d:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 65
    const-string v2, "ImageResource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageBitmap - memory cache lookup: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "MISS"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-nez v0, :cond_2

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/ui/ImageResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v2, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v1, v2, :cond_0

    .line 69
    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->a:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/ImageResource;->b(Landroid/content/Context;)V

    .line 75
    :goto_1
    return-object v0

    .line 65
    :cond_1
    const-string v1, "HIT"

    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_1
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->i:Lcom/snapchat/android/util/cache/Cache;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    sget-object v1, Lcom/snapchat/android/ui/ImageResource;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->d:Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->d:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;-><init>(Lcom/snapchat/android/ui/ImageResource;Landroid/content/Context;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    :cond_0
    return-void
.end method
