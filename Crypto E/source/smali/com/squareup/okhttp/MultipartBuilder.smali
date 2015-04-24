.class public final Lcom/squareup/okhttp/MultipartBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
    }
.end annotation


# static fields
.field public static final a:Lcom/squareup/okhttp/MediaType;

.field public static final b:Lcom/squareup/okhttp/MediaType;

.field public static final c:Lcom/squareup/okhttp/MediaType;

.field public static final d:Lcom/squareup/okhttp/MediaType;

.field public static final e:Lcom/squareup/okhttp/MediaType;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lokio/ByteString;

.field private j:Lcom/squareup/okhttp/MediaType;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 37
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->a:Lcom/squareup/okhttp/MediaType;

    .line 44
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->b:Lcom/squareup/okhttp/MediaType;

    .line 52
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->c:Lcom/squareup/okhttp/MediaType;

    .line 59
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->d:Lcom/squareup/okhttp/MediaType;

    .line 67
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->e:Lcom/squareup/okhttp/MediaType;

    .line 69
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->f:[B

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->g:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->h:[B

    return-void

    .line 69
    nop

    :array_0
    .array-data 0x1
        0x3at
        0x20t
    .end array-data

    .line 70
    nop

    :array_1
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 71
    nop

    :array_2
    .array-data 0x1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->a:Lcom/squareup/okhttp/MediaType;

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->j:Lcom/squareup/okhttp/MediaType;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->k:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->l:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->i:Lokio/ByteString;

    .line 92
    return-void
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->h:[B

    return-object v0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->g:[B

    return-object v0
.end method

.method static synthetic d()[B
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->f:[B

    return-object v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object p0
.end method

.method public a(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 3
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/MediaType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/MultipartBuilder;->j:Lcom/squareup/okhttp/MediaType;

    .line 107
    return-object p0
.end method

.method public a()Lcom/squareup/okhttp/RequestBody;
    .locals 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;

    iget-object v1, p0, Lcom/squareup/okhttp/MultipartBuilder;->j:Lcom/squareup/okhttp/MediaType;

    iget-object v2, p0, Lcom/squareup/okhttp/MultipartBuilder;->i:Lokio/ByteString;

    iget-object v3, p0, Lcom/squareup/okhttp/MultipartBuilder;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/squareup/okhttp/MultipartBuilder;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;-><init>(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
