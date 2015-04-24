.class public Lcom/snapchat/android/api2/framework/NetworkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/framework/NetworkResult$1;,
        Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    }
.end annotation


# instance fields
.field private final mBuffer:Lcom/snapchat/android/util/memory/Buffer;

.field private final mCaughtException:Ljava/lang/Exception;

.field private final mNetworkType:Ljava/lang/String;

.field private final mResponseCode:I

.field private final mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResponseMessage:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    if-eqz p2, :cond_0

    new-instance v5, Lcom/snapchat/android/util/memory/FixedByteBuffer;

    invoke-direct {v5, p2}, Lcom/snapchat/android/util/memory/FixedByteBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/api2/framework/NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/memory/Buffer;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 36
    return-void

    :cond_0
    move-object v5, v1

    .line 35
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/memory/Buffer;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/memory/Buffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mUrl:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mNetworkType:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseCode:I

    .line 43
    iput-object p4, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseMessage:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    .line 45
    iput-object p6, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseHeaders:Ljava/util/Map;

    .line 46
    iput-object p7, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mCaughtException:Ljava/lang/Exception;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/memory/Buffer;Ljava/util/Map;Ljava/lang/Exception;Lcom/snapchat/android/api2/framework/NetworkResult$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/snapchat/android/api2/framework/NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/memory/Buffer;Ljava/util/Map;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    invoke-interface {v0}, Lcom/snapchat/android/util/memory/Buffer;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/util/memory/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    return-object v0
.end method

.method public g()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mCaughtException:Ljava/lang/Exception;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mCaughtException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseCode:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    invoke-interface {v1}, Lcom/snapchat/android/util/memory/Buffer;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    invoke-interface {v3}, Lcom/snapchat/android/util/memory/Buffer;->a()I

    move-result v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "[Success (%s bytes)]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mCaughtException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "[Failed %s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mCaughtException:Ljava/lang/Exception;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    iget v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseCode:I

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "[Failed HTTP %d]"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/snapchat/android/api2/framework/NetworkResult;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "[Failed unknown]"

    goto :goto_0
.end method
