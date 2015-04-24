.class public Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/NetworkInterface;


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final TAG:Ljava/lang/String; = "OkHttpNetworkInterface"


# instance fields
.field private final mClientFactory:Lcom/snapchat/android/api2/framework/HttpClientFactory;

.field private final mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;

.field private final mGoogleAuthManager:Lcom/snapchat/android/GoogleAuthManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/framework/EntityFactory;)V
    .locals 2
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;

    invoke-direct {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/GoogleAuthManager;->a()Lcom/snapchat/android/GoogleAuthManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;-><init>(Lcom/snapchat/android/api2/framework/EntityFactory;Lcom/snapchat/android/api2/framework/HttpClientFactory;Lcom/snapchat/android/GoogleAuthManager;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/api2/framework/EntityFactory;Lcom/snapchat/android/api2/framework/HttpClientFactory;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/snapchat/android/GoogleAuthManager;->a()Lcom/snapchat/android/GoogleAuthManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;-><init>(Lcom/snapchat/android/api2/framework/EntityFactory;Lcom/snapchat/android/api2/framework/HttpClientFactory;Lcom/snapchat/android/GoogleAuthManager;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/api2/framework/EntityFactory;Lcom/snapchat/android/api2/framework/HttpClientFactory;Lcom/snapchat/android/GoogleAuthManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;

    .line 84
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mClientFactory:Lcom/snapchat/android/api2/framework/HttpClientFactory;

    .line 85
    iput-object p3, p0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mGoogleAuthManager:Lcom/snapchat/android/GoogleAuthManager;

    .line 86
    return-void
.end method

.method private a(Lcom/snapchat/android/api2/framework/NetworkResult;JJJLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Lcom/snapchat/android/api2/framework/NetworkResult;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 254
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "ENDPOINT_REQUEST"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "reachability"

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "endpoint"

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "total_latency"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "request_size_bytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "return_size_bytes"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "Hit_Cache"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "protocol"

    invoke-virtual {v0, v1, p8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 264
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - host should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - scheme should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lcom/snapchat/android/util/memory/Buffer;Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/NetworkResult;
    .locals 31
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/util/memory/Buffer;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/snapchat/android/api2/framework/NetworkResult;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 94
    const-wide/16 v16, 0x0

    .line 95
    const-wide/16 v22, 0x0

    .line 96
    const-wide/16 v14, 0x0

    .line 97
    const-string v8, ""

    .line 98
    const/4 v9, 0x0

    .line 99
    new-instance v7, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;

    invoke-direct {v7}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;-><init>()V

    .line 100
    new-instance v19, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v6, 0x1

    .line 104
    :goto_0
    if-eqz v6, :cond_5

    .line 106
    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, "feelinsonice-hrd.appspot.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/discover/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const-string v6, "X-Snapchat-Client-Auth-Token"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bearer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mGoogleAuthManager:Lcom/snapchat/android/GoogleAuthManager;

    invoke-virtual {v11}, Lcom/snapchat/android/GoogleAuthManager;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mGoogleAuthManager:Lcom/snapchat/android/GoogleAuthManager;

    invoke-virtual {v6}, Lcom/snapchat/android/GoogleAuthManager;->b()Ljava/lang/String;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_0

    .line 111
    const-string v10, "X-Snapchat-AuthExp"

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/okhttp/Request;

    move-result-object v20

    .line 116
    const-string v6, "OkHttpNetworkInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Executing request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v10, v11}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual/range {p0 .. p1}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/squareup/okhttp/OkHttpClient;->a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/Call;->a()Lcom/squareup/okhttp/Response;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->c()I

    move-result v11

    .line 125
    const/16 v10, 0x1f3

    if-ne v11, v10, :cond_1

    if-eqz p1, :cond_1

    const-string v10, "feelinsonice-hrd.appspot.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "/discover/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 127
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mGoogleAuthManager:Lcom/snapchat/android/GoogleAuthManager;

    invoke-virtual {v6}, Lcom/snapchat/android/GoogleAuthManager;->c()V

    .line 128
    const/4 v6, 0x1

    .line 129
    const-string v10, "OkHttpNetworkInterface"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Android ID token expired, retry: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v10, v11, v0}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v10, v14

    move-wide/from16 v14, v22

    move-object/from16 v30, v9

    move-object v9, v8

    move-object/from16 v8, v30

    :goto_1
    move-wide/from16 v22, v14

    move-wide v14, v10

    move-object/from16 v30, v9

    move-object v9, v8

    move-object/from16 v8, v30

    .line 172
    goto/16 :goto_0

    .line 131
    :cond_1
    const/16 v16, 0x0

    .line 132
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->d()Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->f()Lcom/squareup/okhttp/Headers;

    move-result-object v21

    .line 134
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->g()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v26

    .line 135
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v17

    if-nez v17, :cond_2

    const-string v18, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6

    .line 137
    :goto_2
    :try_start_1
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-virtual/range {v21 .. v21}, Lcom/squareup/okhttp/Headers;->b()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/4 v6, 0x0

    move/from16 v17, v6

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    aget-object v8, v28, v17

    .line 139
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/squareup/okhttp/Headers;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7

    .line 138
    add-int/lit8 v6, v17, 0x1

    move/from16 v17, v6

    goto :goto_3

    .line 135
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v18

    goto :goto_2

    .line 143
    :cond_3
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/squareup/okhttp/Request;->f()Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 144
    invoke-virtual/range {v20 .. v20}, Lcom/squareup/okhttp/Request;->f()Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/RequestBody;->b()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-wide v20

    .line 147
    :goto_4
    :try_start_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(I)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    .line 148
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    .line 149
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/util/Map;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    .line 151
    if-eqz v26, :cond_6

    .line 152
    invoke-virtual/range {v26 .. v26}, Lcom/squareup/okhttp/ResponseBody;->c()Ljava/io/InputStream;

    move-result-object v9

    .line 153
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lcom/snapchat/android/util/memory/Buffer;->a(Ljava/io/InputStream;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v22, v0

    move-object/from16 v17, v9

    .line 155
    :goto_5
    :try_start_5
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Lcom/snapchat/android/util/memory/Buffer;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v8, v24

    .line 158
    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;->a(JJ)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v15}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 162
    const/4 v6, 0x0

    .line 163
    const-string v8, "x-snapchat-request-id"

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    const-string v6, "x-snapchat-request-id"

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 166
    :cond_4
    const-string v8, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object p2, v9, v26

    const/16 v26, 0x1

    aput-object p1, v9, v26

    const/16 v26, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v9, v26

    const/16 v26, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v26

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const/4 v10, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 170
    const-string v8, "OkHttpNetworkInterface"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v6, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-wide/from16 v10, v20

    move-wide/from16 v16, v14

    move-wide/from16 v14, v22

    goto/16 :goto_1

    .line 182
    :cond_5
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-wide/from16 v10, v22

    move-wide/from16 v12, v16

    move-object/from16 v30, v8

    move-wide v8, v14

    move-object/from16 v14, v30

    .line 185
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v7

    move-object/from16 v6, p0

    .line 186
    invoke-direct/range {v6 .. v14}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->a(Lcom/snapchat/android/api2/framework/NetworkResult;JJJLjava/lang/String;)V

    .line 187
    return-object v7

    .line 173
    :catch_0
    move-exception v6

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    :goto_7
    move-object v10, v6

    move-wide v6, v14

    .line 174
    :goto_8
    :try_start_6
    const-string v11, "OkHttpNetworkInterface"

    const-string v14, "Http request failed: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v14, v15}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v14

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v24

    .line 177
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, p1

    invoke-static/range {v11 .. v18}, Lcom/snapchat/android/database/table/HttpMetricsTable;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 180
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 182
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v14, v8

    move-wide/from16 v10, v22

    move-wide/from16 v12, v16

    move-wide v8, v6

    .line 183
    goto :goto_6

    .line 182
    :catchall_0
    move-exception v6

    move-object/from16 v9, v17

    :goto_9
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v6

    .line 173
    :catch_1
    move-exception v6

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    :goto_a
    move-object v10, v6

    move-wide v6, v14

    goto :goto_8

    :catch_2
    move-exception v6

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    :goto_b
    move-object v10, v6

    move-wide v6, v14

    goto :goto_8

    .line 182
    :catchall_1
    move-exception v6

    goto :goto_9

    .line 173
    :catch_3
    move-exception v6

    goto :goto_7

    :catch_4
    move-exception v6

    move-object/from16 v8, v18

    goto :goto_7

    :catch_5
    move-exception v6

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_b

    :catch_7
    move-exception v6

    move-object/from16 v8, v18

    goto :goto_b

    :catch_8
    move-exception v6

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    goto :goto_b

    :catch_9
    move-exception v6

    goto :goto_a

    :catch_a
    move-exception v6

    move-object/from16 v8, v18

    goto :goto_a

    :catch_b
    move-exception v6

    move-object/from16 v8, v18

    move-wide/from16 v14, v20

    goto :goto_a

    :cond_6
    move-object/from16 v17, v9

    goto/16 :goto_5

    :cond_7
    move-wide/from16 v20, v14

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mClientFactory:Lcom/snapchat/android/api2/framework/HttpClientFactory;

    invoke-interface {v0, p1}, Lcom/snapchat/android/api2/framework/HttpClientFactory;->a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/okhttp/Request;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/okhttp/Request;"
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    invoke-static {p3}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 203
    if-nez p2, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null method encountered for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL encountered in server request: URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    move-object v2, v0

    .line 211
    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 213
    :cond_2
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->a()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 215
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->a()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->c()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 230
    :goto_2
    return-object v0

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;

    invoke-virtual {v1, p3, p4}, Lcom/snapchat/android/api2/framework/EntityFactory;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 224
    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->c()Lcom/squareup/okhttp/Request;

    move-result-object v0

    goto :goto_2

    .line 199
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
