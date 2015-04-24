.class public Lcom/snapchat/android/api2/SignupTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/SignupTask$ResponsePayload;,
        Lcom/snapchat/android/api2/SignupTask$RequestPayload;,
        Lcom/snapchat/android/api2/SignupTask$SignupCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/SignupTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/register"

.field public static final SC_SIGNUP_FAILED_EMAIL_EXISTS_CODE:I = -0xc9

.field public static final SC_SIGNUP_FAILED_EMAIL_INVALID_CODE:I = -0xc8

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_COMMON_CODE:I = 0x8

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_EASY_CODE:I = 0x9

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_SHORT_CODE:I = 0x7

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_USERNAME_CODE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SignupTask"


# instance fields
.field private mAge:Ljava/lang/String;

.field protected mBirthday:Ljava/lang/String;

.field private final mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

.field protected final mEmail:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mSignupCallback:Lcom/snapchat/android/api2/SignupTask$SignupCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lcom/snapchat/android/api2/SignupTask$SignupCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/api2/SignupTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lcom/snapchat/android/api2/SignupTask$SignupCallback;Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lcom/snapchat/android/api2/SignupTask$SignupCallback;Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mAge:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mBirthday:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/snapchat/android/api2/SignupTask;->mEmail:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/api2/SignupTask;->mPassword:Ljava/lang/String;

    .line 65
    if-eqz p3, :cond_0

    .line 66
    invoke-static {p3}, Lcom/snapchat/android/util/BirthdayUtils;->a(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mBirthday:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/snapchat/android/util/BirthdayUtils;->b(Ljava/util/GregorianCalendar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mAge:Ljava/lang/String;

    .line 69
    :cond_0
    iput-object p4, p0, Lcom/snapchat/android/api2/SignupTask;->mSignupCallback:Lcom/snapchat/android/api2/SignupTask$SignupCallback;

    .line 70
    iput-object p5, p0, Lcom/snapchat/android/api2/SignupTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 71
    const-class v0, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/SignupTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
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
    .line 122
    new-instance v0, Lcom/snapchat/android/api2/SignupTask$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/api2/SignupTask$1;-><init>(Lcom/snapchat/android/api2/SignupTask;Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/SignupTask;->a(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/snapchat/android/api2/SignupTask;->e()Lcom/snapchat/android/api2/SignupTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
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
    .line 131
    if-nez p1, :cond_0

    .line 132
    const v0, 0x7f0c0171

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/snapchat/android/api2/SignupTask;->mSignupCallback:Lcom/snapchat/android/api2/SignupTask$SignupCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/snapchat/android/api2/SignupTask$SignupCallback;->a(ILjava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mSignupCallback:Lcom/snapchat/android/api2/SignupTask$SignupCallback;

    iget v1, p1, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mStatus:I

    iget-object v2, p1, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mErrorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api2/SignupTask$SignupCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mSignupCallback:Lcom/snapchat/android/api2/SignupTask$SignupCallback;

    iget-object v1, p0, Lcom/snapchat/android/api2/SignupTask;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/SignupTask;->mBirthday:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/snapchat/android/api2/SignupTask$SignupCallback;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/SignupTask$ResponsePayload;)V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "/loq/register"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/SignupTask$RequestPayload;
    .locals 7

    .prologue
    .line 89
    new-instance v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;

    invoke-direct {v6}, Lcom/snapchat/android/api2/SignupTask$RequestPayload;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mEmail:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mEmail:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mPassword:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mPassword:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mAge:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mAge:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mBirthday:Ljava/lang/String;

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mBirthday:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->q()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mGcmRegistrationId:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d()Lcom/snapchat/android/util/crypto/DeviceToken;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mDeviceTokenId:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask;->mDeviceTokenManager:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    iget-object v2, p0, Lcom/snapchat/android/api2/SignupTask;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/SignupTask;->mPassword:Ljava/lang/String;

    iget-object v4, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mTimestamp:Ljava/lang/String;

    iget-object v5, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mRequestToken:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Lcom/snapchat/android/util/crypto/DeviceToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mDeviceSignature:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v6

    .line 106
    :cond_1
    const-string v0, "1"

    iput-object v0, v6, Lcom/snapchat/android/api2/SignupTask$RequestPayload;->mNeedsToken:Ljava/lang/String;

    goto :goto_0
.end method
