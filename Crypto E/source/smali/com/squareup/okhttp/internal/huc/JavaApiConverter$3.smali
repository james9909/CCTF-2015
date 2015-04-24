.class final Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->a(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Headers;

.field final synthetic b:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->a:Lcom/squareup/okhttp/Headers;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->b:Lokio/BufferedSource;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->a:Lcom/squareup/okhttp/Headers;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->a(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->b:Lokio/BufferedSource;

    return-object v0
.end method
