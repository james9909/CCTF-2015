.class final Lcom/squareup/okhttp/RequestBody$2;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/MediaType;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$2;->a:Lcom/squareup/okhttp/MediaType;

    iput-object p2, p0, Lcom/squareup/okhttp/RequestBody$2;->b:Ljava/io/File;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->a:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->b:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->a(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    .line 94
    invoke-interface {p1, v1}, Lokio/BufferedSink;->a(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
