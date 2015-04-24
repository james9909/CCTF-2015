.class public abstract Lcom/snapchat/android/api2/framework/HyperRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;,
        Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_RESPONSE_SIZE:I = 0x400


# instance fields
.field public final mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

.field protected mJsonCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final mProvider:Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;

    invoke-direct {v0}, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mProvider:Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mJsonCallbacks:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mProvider:Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;->b()Lcom/snapchat/android/util/GsonWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    .line 53
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p1, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;->mClass:Ljava/lang/Class;

    .line 105
    iget-object v1, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method protected a(Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair",
            "<TT;>;",
            "Lcom/snapchat/android/api2/framework/NetworkResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->g()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/api2/framework/HyperRequest;->a(Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    :cond_0
    iget-object v1, p1, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;->mJsonCallback:Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;

    invoke-interface {v1, v0, p2}, Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;->a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 100
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mJsonCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/api2/framework/HyperRequest;->a(Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mJsonCallbacks:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;

    invoke-direct {v1, p1, p2}, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;-><init>(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public f_()Lcom/snapchat/android/util/memory/Buffer;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequest;->mJsonCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public j_()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 118
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "Accept-Language"

    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v0
.end method

.method public abstract m_()Ljava/lang/String;
.end method
