.class final Lcom/squareup/okhttp/RequestBody$1;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/MediaType;

.field final synthetic b:[B


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$1;->a:Lcom/squareup/okhttp/MediaType;

    iput-object p2, p0, Lcom/squareup/okhttp/RequestBody$1;->b:[B

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$1;->a:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$1;->b:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 73
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$1;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
