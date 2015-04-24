.class Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/huc/CacheAdapter;->a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/CacheRequest;

.field final synthetic b:Lcom/squareup/okhttp/internal/huc/CacheAdapter;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->b:Lcom/squareup/okhttp/internal/huc/CacheAdapter;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->a:Ljava/net/CacheRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->a:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 69
    return-void
.end method

.method public b()Lokio/Sink;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->a:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokio/Okio;->a(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
