.class public Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HttpClientFactory;


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final ENABLE_NEW_POOL:Ljava/lang/String; = "ENABLE_NEW_POOL"

.field private static final ENABLE_SPDY:Ljava/lang/String; = "ENABLE_SPDY"

.field private static final SPDY_CONNPOOL_TEST:Ljava/lang/String; = "SPDY_CONNPOOL"

.field private static final SPDY_TEST:Ljava/lang/String; = "SPDY"

.field private static final TAG:Ljava/lang/String; = "SnapchatOkHttpClientFactory"

.field private static final mStudySettings:Lcom/snapchat/android/model/StudySettings;

.field private static sChatClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static final sChatMutex:Ljava/lang/Object;

.field private static sNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static final sNonCertMutex:Ljava/lang/Object;

.field private static sNonCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static final sNonCertSmallResourceMutex:Ljava/lang/Object;

.field private static sSnapchatCertClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static final sSnapchatCertMutex:Ljava/lang/Object;

.field private static sSnapchatCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static final sSnapchatCertSmallResourceMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertMutex:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceMutex:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertMutex:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceMutex:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatMutex:Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/squareup/okhttp/OkHttpClient;
    .locals 6

    .prologue
    .line 153
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 154
    new-instance v1, Lcom/snapchat/android/api/BasicTimeoutProvider;

    invoke-direct {v1}, Lcom/snapchat/android/api/BasicTimeoutProvider;-><init>()V

    .line 155
    invoke-interface {v1}, Lcom/snapchat/android/api/TimeoutProvider;->b()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 156
    invoke-interface {v1}, Lcom/snapchat/android/api/TimeoutProvider;->a()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    sget-object v2, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    const-string v3, "SPDY"

    const-string v4, "ENABLE_SPDY"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    sget-object v2, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    sget-object v2, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->a(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 163
    return-object v0
.end method

.method private static a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/OkHttpClient;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 171
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Required Socket factory could not be created."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 6
    .parameter

    .prologue
    .line 88
    sget-object v1, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/snapchat/android/api/chat/ChatRequestTimeoutProvider;

    invoke-direct {v2}, Lcom/snapchat/android/api/chat/ChatRequestTimeoutProvider;-><init>()V

    .line 93
    invoke-interface {v2}, Lcom/snapchat/android/api/TimeoutProvider;->b()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 94
    invoke-interface {v2}, Lcom/snapchat/android/api/TimeoutProvider;->a()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 96
    const-string v2, "https://app.snapchat.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 102
    :cond_0
    :goto_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatClient:Lcom/squareup/okhttp/OkHttpClient;

    monitor-exit v1

    return-object v0

    .line 99
    :cond_1
    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sChatClient:Lcom/squareup/okhttp/OkHttpClient;

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    :try_start_0
    const-string v0, "SnapchatOkHttpClientFactory"

    const-string v1, "Creating Snapchat Certificates Pinned Socket Factory."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :try_start_1
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 189
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 190
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 194
    const-string v0, "SnapchatOkHttpClientFactory"

    const-string v2, "Created Snapchat Certificates Pinned Socket Factory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "SnapchatOkHttpClientFactory"

    const-string v2, "Certificate Pinned SSLSocketFactory could not be obtained"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static c()Lcom/squareup/okhttp/ConnectionPool;
    .locals 6

    .prologue
    .line 207
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 212
    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/squareup/okhttp/ConnectionPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    .line 217
    :goto_1
    return-object v0

    .line 210
    :cond_0
    const-wide/32 v0, 0x493e0

    move-wide v2, v0

    goto :goto_0

    .line 214
    :cond_1
    if-eqz v5, :cond_2

    .line 215
    new-instance v0, Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    goto :goto_1

    .line 217
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/ConnectionPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 5
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->d(Ljava/lang/String;)Z

    move-result v0

    .line 109
    const-string v1, "https://app.snapchat.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    if-eqz v0, :cond_1

    .line 111
    sget-object v1, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 114
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    const-string v2, "SPDY_CONNPOOL"

    const-string v3, "ENABLE_NEW_POOL"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->c()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->a(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;

    .line 118
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    monitor-exit v1

    .line 144
    :goto_0
    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_1
    sget-object v1, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_1
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_2

    .line 123
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 125
    :cond_2
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sSnapchatCertClient:Lcom/squareup/okhttp/OkHttpClient;

    monitor-exit v1

    goto :goto_0

    .line 126
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 129
    :cond_3
    if-eqz v0, :cond_5

    .line 130
    sget-object v1, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_2
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_4

    .line 132
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 133
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    const-string v2, "SPDY_CONNPOOL"

    const-string v3, "ENABLE_NEW_POOL"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->c()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->a(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;

    .line 137
    :cond_4
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertSmallResourceClient:Lcom/squareup/okhttp/OkHttpClient;

    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 140
    :cond_5
    sget-object v1, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_6

    .line 142
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 144
    :cond_6
    sget-object v0, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->sNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    monitor-exit v1

    goto :goto_0

    .line 145
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    const-string v0, "discover/icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "discover/channel_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "story_thumbnail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/shared/description"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/bq/snaptag_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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


# virtual methods
.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 4
    .parameter

    .prologue
    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;->b(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "/bq/chat_typing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->b(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->c(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    goto :goto_0
.end method
