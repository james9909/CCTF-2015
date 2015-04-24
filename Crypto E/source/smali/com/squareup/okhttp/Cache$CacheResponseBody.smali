.class Lcom/squareup/okhttp/Cache$CacheResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field private final b:Lokio/BufferedSource;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 649
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 650
    iput-object p2, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->c:Ljava/lang/String;

    .line 651
    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->d:Ljava/lang/String;

    .line 653
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a(I)Lokio/Source;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/squareup/okhttp/Cache$CacheResponseBody;Lokio/Source;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->b:Lokio/BufferedSource;

    .line 660
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache$CacheResponseBody;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 668
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 670
    :cond_0
    :goto_0
    return-wide v0

    .line 669
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public b()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody;->b:Lokio/BufferedSource;

    return-object v0
.end method
