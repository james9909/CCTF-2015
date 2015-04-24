.class public Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HttpClientFactory;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SquareOkHttpClientFactory"

.field private static mSquareCertClient:Lcom/squareup/okhttp/OkHttpClient;

.field private static mSquareNonCertClient:Lcom/squareup/okhttp/OkHttpClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->a()V

    .line 36
    return-void
.end method

.method private a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/OkHttpClient;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 70
    return-object p1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Required Socket factory could not be created."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 57
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/snapchat/android/api2/framework/SnapchatOkHttpClientFactory;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareCertClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 60
    :cond_1
    return-void
.end method

.method private b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    const-string v0, "SquareOkHttpClientFactory"

    const-string v1, "Creating Square Certificates Pinned Socket Factory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :try_start_1
    const-string v2, "ez24get"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 89
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 90
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 94
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/snapchat/android/util/debug/DevUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Square Http Client is null when it should not have been."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareNonCertClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_1
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareCertClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Square Http Client is null when it should not have been."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    sget-object v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;->mSquareCertClient:Lcom/squareup/okhttp/OkHttpClient;

    goto :goto_0
.end method
