.class final Lcom/squareup/okhttp/ResponseBody$1;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lokio/BufferedSource;


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->a:J

    return-wide v0
.end method

.method public b()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->b:Lokio/BufferedSource;

    return-object v0
.end method
