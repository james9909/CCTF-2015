.class public Lcom/snapchat/android/api/SnapchatServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DELETE:I = 0x4

.field public static final GET:I = 0x1

.field private static final LANGUAGE_HEADER_NAME:Ljava/lang/String; = "Accept-Language"

.field private static final LOCALE_HEADER_NAME:Ljava/lang/String; = "Accept-Locale"

.field public static final MAX_UPLOAD_BLOB_SIZE:I = 0x280000

.field public static final POST:I = 0x2

.field public static final PUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SnapchatServer"

.field private static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "User-Agent"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static a(Landroid/net/Uri;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 313
    if-eqz p1, :cond_2

    .line 314
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 316
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 318
    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 324
    :cond_2
    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, p2, v0, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    if-nez p4, :cond_2

    .line 82
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/snapchat/android/util/debug/DevUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v14, v4

    .line 91
    :goto_0
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 92
    new-instance v5, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;

    invoke-direct {v5}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;-><init>()V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 97
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 98
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    const-string v7, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "req_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/snapchat/android/GoogleAuthManager;->a()Lcom/snapchat/android/GoogleAuthManager;

    move-result-object v24

    .line 106
    const/4 v4, 0x1

    .line 108
    :goto_1
    if-eqz v4, :cond_0

    .line 112
    :try_start_0
    new-instance v7, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v7}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 116
    packed-switch p2, :pswitch_data_0

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported verb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 274
    :catch_0
    move-exception v4

    .line 275
    :goto_2
    const-string v5, "SnapchatServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There was a problem when sending the request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    const-string v5, "SnapchatServer"

    invoke-static {v5, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v6, v22

    .line 279
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, p0

    invoke-static/range {v9 .. v16}, Lcom/snapchat/android/database/table/HttpMetricsTable;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 281
    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 282
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/util/network/EndpointManager;->c()V

    .line 286
    :cond_0
    :try_start_1
    const-string v4, "resultData"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v4}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    const-string v5, "SnapchatServer"

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SnapchatServer Returning result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 292
    :goto_3
    return-object v21

    .line 85
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/util/network/EndpointManager;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_0

    .line 88
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_0

    .line 118
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Landroid/net/Uri;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->a()Lcom/squareup/okhttp/Request$Builder;

    move-object/from16 v20, v4

    .line 160
    :goto_4
    new-instance v4, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 161
    const-string v6, "User-Agent"

    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 162
    const-string v6, "Accept-Language"

    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 163
    const-string v6, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 166
    if-eqz v20, :cond_3

    const-string v6, "feelinsonice-hrd.appspot.com"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    const-string v6, "X-Snapchat-Client-Auth-Token"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bearer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/GoogleAuthManager;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 169
    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/GoogleAuthManager;->b()Ljava/lang/String;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_3

    .line 171
    const-string v8, "X-Snapchat-AuthExp"

    invoke-virtual {v4, v8, v6}, Lcom/squareup/okhttp/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 175
    :cond_3
    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers$Builder;->a()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    .line 176
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/squareup/okhttp/Request$Builder;->a(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/squareup/okhttp/Request$Builder;->a(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request$Builder;->c()Lcom/squareup/okhttp/Request;

    move-result-object v25

    .line 181
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v26

    .line 183
    const-string v4, "SnapchatServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v4, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;

    invoke-direct {v4}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/OkHttpClient;->a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Call;->a()Lcom/squareup/okhttp/Response;

    move-result-object v27

    .line 186
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->c()I

    move-result v9

    .line 192
    const/16 v4, 0x1f3

    if-ne v9, v4, :cond_6

    if-eqz v20, :cond_6

    const-string v4, "feelinsonice-hrd.appspot.com"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 194
    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/GoogleAuthManager;->c()V

    .line 195
    const-string v4, "SnapchatServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android ID token expired, retry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 124
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Landroid/net/Uri;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->b()Lcom/squareup/okhttp/Request$Builder;

    move-object/from16 v20, v4

    .line 126
    goto/16 :goto_4

    .line 131
    :pswitch_2
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v6, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "thumbnail_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/snapchat/android/api/SnapchatServer;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 144
    :goto_5
    invoke-virtual {v7, v6}, Lcom/squareup/okhttp/Request$Builder;->a(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-object/from16 v20, v4

    .line 145
    goto/16 :goto_4

    .line 141
    :cond_5
    sget-object v6, Lcom/snapchat/android/api2/framework/EntityFactory;->URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/api/SnapchatServer;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    goto :goto_5

    .line 149
    :pswitch_3
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    sget-object v6, Lcom/snapchat/android/api2/framework/EntityFactory;->URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/api/SnapchatServer;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 152
    invoke-virtual {v7, v6}, Lcom/squareup/okhttp/Request$Builder;->b(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v20, v4

    .line 153
    goto/16 :goto_4

    .line 198
    :cond_6
    const/4 v15, 0x0

    .line 199
    const/4 v7, 0x0

    .line 200
    const/4 v6, 0x0

    .line 202
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->f()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v12

    move-object v8, v6

    :goto_6
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    const-string v6, "X-Snapchat-Actions"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 204
    new-instance v6, Lcom/snapchat/android/api/SnapchatServer$1;

    invoke-direct {v6}, Lcom/snapchat/android/api/SnapchatServer$1;-><init>()V

    invoke-virtual {v6}, Lcom/snapchat/android/api/SnapchatServer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 205
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v13

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 207
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    const-string v16, "RESET_GAE_PROXY"

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 209
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/util/network/EndpointManager;->c()V

    .line 214
    :cond_8
    const-string v6, "x-snapchat-request-id"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 215
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Response;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    .line 222
    :goto_7
    :try_start_5
    const-string v8, "Age"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 223
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Response;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_8
    move-object v8, v6

    move v7, v4

    .line 225
    goto :goto_6

    .line 223
    :cond_9
    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v18, v8

    move/from16 v19, v7

    .line 231
    :goto_9
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->d()Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->g()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v28

    .line 233
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, ""

    .line 235
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v6, v22

    .line 236
    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual/range {v5 .. v13}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 239
    const-wide/16 v16, 0x0

    .line 240
    const-wide/16 v6, 0x0

    .line 241
    invoke-virtual/range {v25 .. v25}, Lcom/squareup/okhttp/Request;->f()Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    if-eqz v29, :cond_b

    .line 242
    invoke-virtual/range {v25 .. v25}, Lcom/squareup/okhttp/Request;->f()Lcom/squareup/okhttp/RequestBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/RequestBody;->b()J

    move-result-wide v16

    .line 245
    :cond_b
    if-eqz v28, :cond_c

    .line 246
    if-nez p3, :cond_e

    .line 249
    new-instance v25, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/squareup/okhttp/ResponseBody;->d()[B

    move-result-object v6

    const-string v7, "UTF-8"

    move-object/from16 v0, v25

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 250
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    .line 251
    const-string v27, "resultData"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_c
    :goto_b
    const-string v25, "statusCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v25, "hitCache"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string v19, "sentBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 261
    const-string v19, "receivedBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    const-string v19, "reachability"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v19, "protocol"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-wide/from16 v0, v16

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/snapchat/android/api2/framework/ClientConnMetricsManager;->a(JJ)V

    .line 267
    const-string v4, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p2 .. p2}, Lcom/snapchat/android/api/SnapchatServer;->a(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v17

    const/16 v17, 0x1

    aput-object v20, v16, v17

    const/16 v17, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v16, v17

    const/4 v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v16, v6

    const/4 v6, 0x4

    aput-object v8, v16, v6

    const/4 v6, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v16, v6

    const/4 v6, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v16, v6

    const/4 v6, 0x7

    aput-object v18, v16, v6

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 271
    const-string v6, "SnapchatServer"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v4, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v15

    goto/16 :goto_1

    .line 226
    :catch_1
    move-exception v4

    .line 227
    :goto_c
    const-string v8, "SnapchatServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when parsing headers: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v4, v12}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v18, v6

    move/from16 v19, v7

    goto/16 :goto_9

    .line 233
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 254
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Response;->f()Lcom/squareup/okhttp/Headers;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;->a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/ResponseBody;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_b

    .line 274
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .line 289
    :catch_3
    move-exception v4

    .line 290
    const-string v5, "SnapchatServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when returning result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 226
    :catch_4
    move-exception v4

    move-object v6, v8

    goto/16 :goto_c

    :cond_f
    move-object v6, v8

    goto/16 :goto_7

    :cond_10
    move v4, v7

    goto/16 :goto_8

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected static a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 348
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->e:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->a(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v2

    .line 349
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 351
    if-nez v1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMultipartBody putting null value for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    const-string v4, "thumbnail_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "/bq/upload_chat_media"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 357
    :cond_2
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Content-Disposition"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "form-data; name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"; filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/squareup/okhttp/Headers;->a([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v4

    .line 359
    sget-object v5, Lcom/snapchat/android/api2/framework/EntityFactory;->BYTE_STREAM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v5, v0}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 360
    invoke-virtual {v2, v4, v0}, Lcom/squareup/okhttp/MultipartBuilder;->a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto/16 :goto_0

    .line 362
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Content-Disposition"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "form-data; name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/squareup/okhttp/Headers;->a([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/api2/framework/EntityFactory;->STRING_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto/16 :goto_0

    .line 368
    :cond_4
    invoke-virtual {v2}, Lcom/squareup/okhttp/MultipartBuilder;->a()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 328
    packed-switch p0, :pswitch_data_0

    .line 342
    const-string v0, ""

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    .line 336
    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    .line 339
    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 381
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {v1}, Lcom/snapchat/android/api2/framework/EntityFactory;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 405
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "ERROR: could not parse server response."

    :goto_1
    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    :goto_2
    const-string v2, "SnapchatServer"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/ServerResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 406
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 297
    invoke-static {p1}, Lcom/snapchat/android/api/SnapchatServer;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p0}, Lcom/snapchat/android/api/RequestAuthorization;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/snapchat/android/api/RequestAuthorization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    if-eqz v2, :cond_0

    .line 395
    const-string v3, "SnapchatServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 308
    const-string v0, "/loq/gae_server_list"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/loq/ping"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
