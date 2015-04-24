.class public Lcom/snapchat/android/GoogleAuthManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/snapchat/android/GoogleAuthManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final d:Lcom/snapchat/android/util/RetryUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/snapchat/android/GoogleAuthManager;

    invoke-direct {v0}, Lcom/snapchat/android/GoogleAuthManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/GoogleAuthManager;->c:Lcom/snapchat/android/GoogleAuthManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/snapchat/android/util/RetryUtil;

    invoke-direct {v0}, Lcom/snapchat/android/util/RetryUtil;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/GoogleAuthManager;-><init>(Lcom/snapchat/android/util/RetryUtil;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/RetryUtil;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/GoogleAuthManager;->d:Lcom/snapchat/android/util/RetryUtil;

    .line 49
    return-void
.end method

.method public static a()Lcom/snapchat/android/GoogleAuthManager;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/GoogleAuthManager;->c:Lcom/snapchat/android/GoogleAuthManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/GoogleAuthManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/GoogleAuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/GoogleAuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "GoogleAuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleOauthToken exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->d:Lcom/snapchat/android/util/RetryUtil;

    new-instance v1, Lcom/snapchat/android/GoogleAuthManager$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/GoogleAuthManager$1;-><init>(Lcom/snapchat/android/GoogleAuthManager;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/RetryUtil;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "GoogleAuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearGoogleOauthToken exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 99
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 100
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 102
    const-string v0, "ng"

    .line 103
    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v0, v5, v1

    .line 104
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/GoogleAuthManager;->d:Lcom/snapchat/android/util/RetryUtil;

    new-instance v7, Lcom/snapchat/android/GoogleAuthManager$2;

    invoke-direct {v7, p0, v4, v0}, Lcom/snapchat/android/GoogleAuthManager$2;-><init>(Lcom/snapchat/android/GoogleAuthManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/snapchat/android/util/RetryUtil;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    .line 113
    const-string v0, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGoogleOauthToken: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    :cond_0
    :goto_1
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGoogleOauthToken IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    throw v0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGoogleOauthToken GooglePlayServicesAvailabilityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    .line 122
    const-string v0, "pe"

    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    .line 124
    const-string v3, "GoogleAuthManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGoogleOauthToken UserRecoverableAuthException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    .line 127
    const-string v3, "ue"

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto/16 :goto_0

    .line 128
    :catch_3
    move-exception v0

    .line 129
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGoogleOauthToken GoogleAuthException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/GoogleAuthManager;->b:Ljava/lang/String;

    .line 131
    const-string v0, "ae"

    goto/16 :goto_1
.end method
