.class final Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/MultipartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final a:Lokio/ByteString;

.field private final b:Lcom/squareup/okhttp/MediaType;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/MediaType;",
            "Lokio/ByteString;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 203
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-object p2, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->a:Lokio/ByteString;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->b:Lcom/squareup/okhttp/MediaType;

    .line 207
    invoke-static {p3}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->c:Ljava/util/List;

    .line 208
    invoke-static {p4}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->d:Ljava/util/List;

    .line 209
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->b:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Headers;

    .line 222
    iget-object v1, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/RequestBody;

    .line 224
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->b()[B

    move-result-object v2

    invoke-interface {p1, v2}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 225
    iget-object v2, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->a:Lokio/ByteString;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    .line 226
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v2

    invoke-interface {p1, v2}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->a()I

    move-result v6

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    .line 230
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    .line 231
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->d()[B

    move-result-object v8

    invoke-interface {v7, v8}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    move-result-object v7

    .line 232
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    .line 233
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v8

    invoke-interface {v7, v8}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/RequestBody;->a()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    .line 239
    const-string v2, "Content-Type: "

    invoke-interface {p1, v2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 240
    invoke-virtual {v0}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 244
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/RequestBody;->b()J

    move-result-wide v0

    .line 245
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 246
    const-string v2, "Content-Length: "

    invoke-interface {p1, v2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 251
    :cond_2
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 252
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/RequestBody;->a(Lokio/BufferedSink;)V

    .line 253
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 220
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 256
    :cond_3
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->b()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 257
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->a:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    .line 258
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->b()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 259
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->c()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 260
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    return-wide v0
.end method
