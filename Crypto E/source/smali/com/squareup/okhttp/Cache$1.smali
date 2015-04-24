.class Lcom/squareup/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Cache;


# virtual methods
.method public a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Cache;)V

    .line 127
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    .line 124
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    .line 130
    return-void
.end method

.method public b(Lcom/squareup/okhttp/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->a:Lcom/squareup/okhttp/Cache;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->a(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V

    .line 121
    return-void
.end method
