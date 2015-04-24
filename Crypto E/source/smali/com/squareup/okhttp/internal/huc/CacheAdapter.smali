.class public final Lcom/squareup/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# instance fields
.field private final a:Ljava/net/ResponseCache;


# direct methods
.method private c(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;
    .locals 4
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Lcom/squareup/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->a:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->b()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->c(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Lcom/squareup/okhttp/Request;Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->a()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->b()Ljava/net/URI;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Lcom/squareup/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->a:Ljava/net/ResponseCache;

    invoke-virtual {v2, v0, v1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;-><init>(Lcom/squareup/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public b(Lcom/squareup/okhttp/Request;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    return-void
.end method
