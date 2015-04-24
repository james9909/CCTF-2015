.class Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/snapchat/eventengine/WorkerThread;

.field static b:Lcom/snapchat/eventengine/WorkerThread;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:J

.field private static f:Z

.field private static g:J

.field private static h:Ljava/lang/Runnable;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    .line 39
    sput-boolean v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f:Z

    .line 40
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->g:J

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Lcom/snapchat/eventengine/WorkerThread;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/snapchat/eventengine/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    .line 50
    new-instance v0, Lcom/snapchat/eventengine/WorkerThread;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/snapchat/eventengine/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/eventengine/WorkerThread;

    .line 53
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    invoke-virtual {v0}, Lcom/snapchat/eventengine/WorkerThread;->start()V

    .line 54
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/eventengine/WorkerThread;

    invoke-virtual {v0}, Lcom/snapchat/eventengine/WorkerThread;->start()V

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;JZ)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c(Ljava/lang/String;Ljava/util/Map;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/util/Map;)J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 120
    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/eventengine/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/eventengine/DatabaseHelper;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/eventengine/DatabaseHelper;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 123
    invoke-virtual {v1}, Lcom/snapchat/eventengine/DatabaseHelper;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 124
    const-wide/16 v4, 0x14

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/eventengine/DatabaseHelper;->a(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/eventengine/DatabaseHelper;->b(J)V

    .line 127
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/eventengine/DatabaseHelper;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->t()V

    .line 132
    :goto_0
    return-wide v2

    .line 130
    :cond_1
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c(J)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 439
    if-nez p0, :cond_0

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "uploadEvents()"

    invoke-static {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    new-instance v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$2;

    invoke-direct {v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(J)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f(J)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    const-class v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 61
    :try_start_0
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v2, "Argument context cannot be null in initialize()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-void

    .line 64
    :cond_0
    if-nez p1, :cond_1

    .line 65
    :try_start_1
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v2, "Argument userProperties cannot be null in initialize()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 149
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    invoke-virtual {v0, p0}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Ljava/lang/String;Ljava/util/Map;JZ)V

    .line 80
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONArray;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Ljava/lang/String;Lorg/json/JSONArray;J)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Z)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 443
    const-class v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 444
    const-string v2, "com.amplitude.api.Amplitude"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context cannot be null, set context with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_0
    monitor-exit v1

    return v0

    .line 448
    :cond_0
    :try_start_1
    sget-object v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 449
    const-string v2, "com.amplitude.api.Amplitude"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userPrefs cannot be null, set userPrefs with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 452
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->t()V

    return-void
.end method

.method static synthetic b(J)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d(J)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;JZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v1, "Argument eventType cannot be null or blank in logEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v0, "logEvent()"

    invoke-static {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    invoke-static {v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONArray;J)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 357
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v0, v1

    .line 361
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 363
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 364
    const-string v6, "client_upload_ts"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_1
    return-void

    .line 372
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_2
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 382
    const/16 v3, 0x2710

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 383
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 385
    :try_start_2
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v0

    .line 387
    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_3

    .line 390
    const/4 v0, 0x1

    .line 391
    :try_start_3
    sget-object v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    new-instance v4, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;

    invoke-direct {v4, p2, p3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 427
    :goto_3
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v2, v0

    .line 432
    :cond_2
    :goto_4
    if-nez v2, :cond_0

    .line 433
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 373
    :catch_1
    move-exception v0

    .line 377
    const-string v3, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 408
    :cond_3
    :try_start_4
    const-string v2, "com.amplitude.api.Amplitude"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event upload failed, with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", will attempt to reupload later"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move v0, v1

    goto :goto_3

    .line 410
    :catch_2
    move-exception v0

    move v0, v1

    .line 412
    :goto_5
    :try_start_5
    const-string v2, "com.amplitude.api.Amplitude"

    const-string v4, "No service, will attempt to re-upload events later."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v2, v0

    goto :goto_4

    .line 413
    :catch_3
    move-exception v0

    move v0, v1

    .line 414
    :goto_6
    :try_start_6
    const-string v2, "com.amplitude.api.Amplitude"

    const-string v4, "No service, will attempt to re-upload events later."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v2, v0

    goto :goto_4

    .line 415
    :catch_4
    move-exception v0

    move v2, v1

    .line 416
    :goto_7
    :try_start_7
    const-string v4, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 417
    :catch_5
    move-exception v0

    move v2, v1

    .line 418
    :goto_8
    :try_start_8
    const-string v4, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_4

    .line 419
    :catch_6
    move-exception v0

    move v2, v1

    .line 421
    :goto_9
    :try_start_9
    const-string v4, "com.amplitude.api.Amplitude"

    const-string v5, "Exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_4

    .line 422
    :catch_7
    move-exception v0

    move v2, v1

    .line 425
    :goto_a
    :try_start_a
    const-string v4, "com.amplitude.api.Amplitude"

    const-string v5, "Exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 427
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_4

    .line 427
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 428
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    throw v0

    .line 422
    :catch_8
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_a

    .line 419
    :catch_9
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_9

    .line 417
    :catch_a
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_8

    .line 415
    :catch_b
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto/16 :goto_7

    .line 413
    :catch_c
    move-exception v2

    goto/16 :goto_6

    .line 410
    :catch_d
    move-exception v2

    goto/16 :goto_5

    :cond_5
    move v2, v0

    goto/16 :goto_4
.end method

.method private static b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 334
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/eventengine/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/eventengine/DatabaseHelper;

    move-result-object v1

    .line 337
    :try_start_0
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->q()J

    move-result-wide v2

    .line 338
    if-eqz p0, :cond_1

    const/16 v0, 0x64

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/eventengine/DatabaseHelper;->a(JI)Landroid/util/Pair;

    move-result-object v1

    .line 340
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 341
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 342
    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/eventengine/WorkerThread;

    new-instance v4, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;

    invoke-direct {v4, v0, v2, v3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;-><init>(Lorg/json/JSONArray;J)V

    invoke-virtual {v1, v4}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_1
    return-void

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    const-string v1, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;JZ)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZ)J"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p4, :cond_0

    .line 102
    invoke-static {p2, p3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f(J)V

    .line 104
    :cond_0
    invoke-static {p2, p3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d(J)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "event_name"

    invoke-static {p0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "client_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "session_id"

    sget-wide v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    invoke-static {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static c(J)V
    .locals 2
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    new-instance v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$3;

    invoke-direct {v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$3;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;J)V

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static d(J)V
    .locals 4
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/Constants;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(J)V
    .locals 4
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->r()V

    .line 228
    sput-wide p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    .line 229
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/Constants;->g:Ljava/lang/String;

    sget-wide v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    :try_start_0
    const-string v1, "special"

    const-string v2, "session_start"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f()J
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(J)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 240
    sget-boolean v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f:Z

    if-nez v0, :cond_3

    .line 241
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->p()J

    move-result-wide v0

    .line 242
    sub-long v0, p0, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 245
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    sget-object v1, Lcom/snapchat/eventengine/Constants;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 249
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 251
    invoke-static {p0, p1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e(J)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sput-wide v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {p0, p1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e(J)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->n()J

    move-result-wide v0

    .line 261
    sub-long v0, p0, v0

    sget-wide v2, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    sget-wide v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 262
    :cond_4
    invoke-static {p0, p1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e(J)V

    goto :goto_0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->r()V

    return-void
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f:Z

    return v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->s()V

    return-void
.end method

.method static synthetic l()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->o()V

    return-void
.end method

.method static synthetic m()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static n()J
    .locals 4

    .prologue
    .line 182
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/snapchat/eventengine/Constants;->d:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static o()V
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/Constants;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/Constants;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method private static p()J
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/snapchat/eventengine/Constants;->e:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static q()J
    .locals 4

    .prologue
    .line 207
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/snapchat/eventengine/Constants;->f:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static r()V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->o()V

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f:Z

    .line 215
    return-void
.end method

.method private static s()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f:Z

    .line 223
    return-void
.end method

.method private static t()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Z)V

    .line 330
    return-void
.end method

.method private static u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/eventengine/Constants;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
