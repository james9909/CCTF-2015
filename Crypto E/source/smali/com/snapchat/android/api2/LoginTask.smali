.class public Lcom/snapchat/android/api2/LoginTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/LoginTask$ResponsePayload;,
        Lcom/snapchat/android/api2/LoginTask$RequestPayload;,
        Lcom/snapchat/android/api2/LoginTask$LoginCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/LoginTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final IO_EXCEPTION:Ljava/lang/String; = "ie"

.field public static final SC_LOGIN_FAILED_CANNOT_FIND_ACCOUNT_CODE:I = -0x65

.field public static final SC_LOGIN_FAILED_INVALID_PASSWORD_CODE:I = -0x64

.field public static final SC_LOGIN_FAILED_NO_NETWORK:I = 0x0

.field public static final SC_LOGIN_FAILED_UNKNOWN_ERROR:I = 0x7ffffffa

.field protected static final SERVLET_PATH:Ljava/lang/String; = "/loq/login"

.field private static final TAG:Ljava/lang/String; = "LoginTask"


# instance fields
.field private final mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

.field private final mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private final mLoginCallback:Lcom/snapchat/android/api2/LoginTask$LoginCallback;

.field protected final mLoginName:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mRetryUtil:Lcom/snapchat/android/util/RetryUtil;

.field private final mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$LoginCallback;)V
    .locals 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/api/ScreenParameterProvider;->a()Lcom/snapchat/android/api/ScreenParameterProvider;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v6

    new-instance v7, Lcom/snapchat/android/util/RetryUtil;

    invoke-direct {v7}, Lcom/snapchat/android/util/RetryUtil;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/api2/LoginTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$LoginCallback;Lcom/snapchat/android/util/crypto/DeviceTokenManager;Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/google/android/gms/gcm/GoogleCloudMessaging;Lcom/snapchat/android/util/RetryUtil;)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$LoginCallback;Lcom/snapchat/android/util/crypto/DeviceTokenManager;Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/google/android/gms/gcm/GoogleCloudMessaging;Lcom/snapchat/android/util/RetryUtil;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/snapchat/android/api2/LoginTask;->mPassword:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginCallback:Lcom/snapchat/android/api2/LoginTask$LoginCallback;

    .line 78
    iput-object p4, p0, Lcom/snapchat/android/api2/LoginTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 79
    iput-object p5, p0, Lcom/snapchat/android/api2/LoginTask;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    .line 80
    iput-object p6, p0, Lcom/snapchat/android/api2/LoginTask;->mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 81
    iput-object p7, p0, Lcom/snapchat/android/api2/LoginTask;->mRetryUtil:Lcom/snapchat/android/util/RetryUtil;

    .line 82
    const-class v0, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/LoginTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/LoginTask;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mGoogleCloudMessage:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 158
    new-instance v0, Lcom/snapchat/android/api2/LoginTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/api2/LoginTask$2;-><init>(Lcom/snapchat/android/api2/LoginTask;Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/LoginTask;->a(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/api2/LoginTask;->h_()Lcom/snapchat/android/api2/LoginTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const v0, 0x7f0c0171

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginCallback:Lcom/snapchat/android/api2/LoginTask$LoginCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/snapchat/android/api2/LoginTask$LoginCallback;->a(ILjava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginCallback:Lcom/snapchat/android/api2/LoginTask$LoginCallback;

    iget v1, p1, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mStatus:I

    iget-object v2, p1, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mErrorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api2/LoginTask$LoginCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginCallback:Lcom/snapchat/android/api2/LoginTask$LoginCallback;

    iget-object v1, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/snapchat/android/api2/LoginTask$LoginCallback;->a(Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$ResponsePayload;)V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "/loq/login"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mRetryUtil:Lcom/snapchat/android/util/RetryUtil;

    new-instance v2, Lcom/snapchat/android/api2/LoginTask$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/api2/LoginTask$1;-><init>(Lcom/snapchat/android/api2/LoginTask;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/RetryUtil;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v1, v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const-string v1, "LoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GcmRegistrationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "LoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGcmRegistrationId IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const-string v0, "ie"

    goto :goto_0
.end method

.method public h_()Lcom/snapchat/android/api2/LoginTask$RequestPayload;
    .locals 7

    .prologue
    .line 127
    new-instance v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;

    invoke-direct {v6}, Lcom/snapchat/android/api2/LoginTask$RequestPayload;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginName:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mUsername:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mPassword:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mPassword:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/api2/LoginTask;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mGcmRegistrationId:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d()Lcom/snapchat/android/util/crypto/DeviceToken;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mDeviceTokenId:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    iget-object v2, p0, Lcom/snapchat/android/api2/LoginTask;->mLoginName:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/LoginTask;->mPassword:Ljava/lang/String;

    iget-object v4, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mTimestamp:Ljava/lang/String;

    iget-object v5, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mRequestToken:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Lcom/snapchat/android/util/crypto/DeviceToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mDeviceSignature:Ljava/lang/String;

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v0

    iput v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mHeight:I

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    iput v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mWidth:I

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;->c()I

    move-result v0

    iput v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mMaxVideoHeight:I

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;->d()I

    move-result v0

    iput v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mMaxVideoWidth:I

    .line 145
    return-object v6

    .line 138
    :cond_0
    const-string v0, "1"

    iput-object v0, v6, Lcom/snapchat/android/api2/LoginTask$RequestPayload;->mNeedsToken:Ljava/lang/String;

    goto :goto_0
.end method
