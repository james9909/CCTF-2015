.class public final Lcom/squareup/okhttp/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Cache$CacheResponseBody;,
        Lcom/squareup/okhttp/Cache$Entry;,
        Lcom/squareup/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/okhttp/internal/InternalCache;

.field private final b:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static synthetic a(Lokio/BufferedSource;)I
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-static {p0}, Lcom/squareup/okhttp/Cache;->b(Lokio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->d()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/Cache;->c(Lcom/squareup/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->b(Lcom/squareup/okhttp/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v1, p1}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 206
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/Cache;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/Cache;->b(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    .line 210
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Cache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 211
    new-instance v1, Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 213
    :goto_1
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0

    .line 212
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 187
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/squareup/okhttp/Cache;->a()V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->c(Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v1, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v1, p2}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 224
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->g()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Cache$CacheResponseBody;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache$CacheResponseBody;->a(Lcom/squareup/okhttp/Cache$CacheResponseBody;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2

    .line 225
    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Cache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 230
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method private a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->g:I

    .line 351
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->a:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_1

    .line 353
    iget v0, p0, Lcom/squareup/okhttp/Cache;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->b:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    .line 357
    iget v0, p0, Lcom/squareup/okhttp/Cache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/Cache;)I
    .locals 2
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/squareup/okhttp/Cache;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->c:I

    return v0
.end method

.method private static b(Lokio/BufferedSource;)I
    .locals 4
    .parameter

    .prologue
    .line 633
    invoke-interface {p0}, Lokio/BufferedSource;->s()Ljava/lang/String;

    move-result-object v0

    .line 635
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 636
    :catch_0
    move-exception v1

    .line 637
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an integer but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/Cache;)I
    .locals 2
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/squareup/okhttp/Cache;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->d:I

    return v0
.end method

.method private c(Lcom/squareup/okhttp/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->b(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->c(Ljava/lang/String;)Z

    .line 220
    return-void
.end method


# virtual methods
.method a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->b(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/Cache;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 156
    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 165
    :cond_0
    :try_start_1
    new-instance v2, Lcom/squareup/okhttp/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a(I)Lokio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    invoke-virtual {v2, p1, v1}, Lcom/squareup/okhttp/Cache$Entry;->a(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 173
    invoke-virtual {v2, p1, v1}, Lcom/squareup/okhttp/Cache$Entry;->a(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->g()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 159
    :catch_1
    move-exception v1

    goto :goto_0
.end method
