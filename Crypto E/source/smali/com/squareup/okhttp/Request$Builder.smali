.class public Lcom/squareup/okhttp/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Lcom/squareup/okhttp/Headers$Builder;

.field private e:Lcom/squareup/okhttp/RequestBody;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    .line 136
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->a(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->a:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->b(Lcom/squareup/okhttp/Request;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->b:Ljava/net/URL;

    .line 141
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->c(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->c:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->d(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->e:Lcom/squareup/okhttp/RequestBody;

    .line 143
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->e(Lcom/squareup/okhttp/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->f:Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Lcom/squareup/okhttp/Request;->f(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->c()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Request$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Request$Builder;-><init>(Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Headers$Builder;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/RequestBody;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->e:Lcom/squareup/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/Request$Builder;)Ljava/net/URL;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->b:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 201
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->c()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    .line 186
    return-object p0
.end method

.method public a(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter

    .prologue
    .line 209
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 2
    .parameter

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Request$Builder;->a:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const/4 v0, 0x0

    sget-object v1, Lcom/squareup/okhttp/internal/Util;->a:[B

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p2

    .line 234
    :cond_3
    iput-object p1, p0, Lcom/squareup/okhttp/Request$Builder;->c:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/squareup/okhttp/Request$Builder;->e:Lcom/squareup/okhttp/RequestBody;

    .line 236
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 166
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;
    .locals 2
    .parameter

    .prologue
    .line 154
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Request$Builder;->b:Ljava/net/URL;

    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->a:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public b()Lcom/squareup/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 213
    const-string v0, "DELETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter

    .prologue
    .line 217
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers$Builder;->b(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 180
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->d:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 175
    return-object p0
.end method

.method public c()Lcom/squareup/okhttp/Request;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/squareup/okhttp/Request$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Request;-><init>(Lcom/squareup/okhttp/Request$Builder;Lcom/squareup/okhttp/Request$1;)V

    return-object v0
.end method
