.class public final Lcom/squareup/okhttp/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Response$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/Request;

.field private final b:Lcom/squareup/okhttp/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/squareup/okhttp/Handshake;

.field private final f:Lcom/squareup/okhttp/Headers;

.field private final g:Lcom/squareup/okhttp/ResponseBody;

.field private h:Lcom/squareup/okhttp/Response;

.field private i:Lcom/squareup/okhttp/Response;

.field private final j:Lcom/squareup/okhttp/Response;

.field private volatile k:Lcom/squareup/okhttp/CacheControl;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Response$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->a(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->a:Lcom/squareup/okhttp/Request;

    .line 52
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->b(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->b:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->c(Lcom/squareup/okhttp/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Response;->c:I

    .line 54
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->d(Lcom/squareup/okhttp/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->e(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->e:Lcom/squareup/okhttp/Handshake;

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->f(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->a()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->f:Lcom/squareup/okhttp/Headers;

    .line 57
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->g(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->g:Lcom/squareup/okhttp/ResponseBody;

    .line 58
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->h(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->h:Lcom/squareup/okhttp/Response;

    .line 59
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->i(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->i:Lcom/squareup/okhttp/Response;

    .line 60
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->j(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->j:Lcom/squareup/okhttp/Response;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->a:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/Response;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/squareup/okhttp/Response;->c:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Handshake;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->e:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->f:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->g:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->h:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->i:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->j:Lcom/squareup/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Request;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->a:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Response;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->f:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public b()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/Response;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/squareup/okhttp/Handshake;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->e:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/Headers;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->f:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method public g()Lcom/squareup/okhttp/ResponseBody;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->g:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method public h()Lcom/squareup/okhttp/Response$Builder;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response$1;)V

    return-object v0
.end method

.method public i()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->h:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public j()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->i:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/squareup/okhttp/Response;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->f()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->b(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/Response;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public l()Lcom/squareup/okhttp/CacheControl;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->k:Lcom/squareup/okhttp/CacheControl;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->f:Lcom/squareup/okhttp/Headers;

    invoke-static {v0}, Lcom/squareup/okhttp/CacheControl;->a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->k:Lcom/squareup/okhttp/CacheControl;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/Response;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->a:Lcom/squareup/okhttp/Request;

    .line 217
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
