.class Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Call;

.field private final b:I

.field private final c:Lcom/squareup/okhttp/Request;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->a:Lcom/squareup/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->b:I

    .line 201
    iput-object p3, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->c:Lcom/squareup/okhttp/Request;

    .line 202
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 3
    .parameter

    .prologue
    .line 213
    iget v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->b:I

    iget-object v1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->a:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    new-instance v1, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;

    iget-object v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->a:Lcom/squareup/okhttp/Call;

    iget v2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;)V

    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->a:Lcom/squareup/okhttp/Call;

    invoke-static {v0}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->u()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/Interceptor;->a(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->a:Lcom/squareup/okhttp/Call;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/Call;->a(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_0
.end method
