.class public final Lcom/squareup/okhttp/internal/huc/JavaApiConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;,
        Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static a(Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Headers;
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/squareup/okhttp/Headers;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 294
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->a()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/squareup/okhttp/Request;Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Response;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v2, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 116
    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    .line 119
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->b(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 120
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    .line 121
    iget v1, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->b:I

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Response$Builder;->a(I)Lcom/squareup/okhttp/Response$Builder;

    .line 122
    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Response$Builder;->a(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 125
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 126
    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 129
    invoke-virtual {p1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    .line 133
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    if-eqz v0, :cond_1

    .line 134
    check-cast p1, Ljava/net/SecureCacheResponse;

    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 144
    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v3, v0, v1}, Lcom/squareup/okhttp/Handshake;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    .line 149
    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    .line 152
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response$Builder;->a()Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-static {p1}, Lokio/Okio;->a(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 344
    new-instance v1, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;

    invoke-direct {v1, p0, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method static synthetic a()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/squareup/okhttp/Response;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v1, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/squareup/okhttp/Response;)V

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    .line 258
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/squareup/okhttp/Response;)V

    goto :goto_0
.end method

.method static a(Lcom/squareup/okhttp/Request;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->e()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->a(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->f()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/net/CacheResponse;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 333
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 336
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->h()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->g()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
