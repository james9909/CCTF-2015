.class public Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final d:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

.field public static final g:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "messagingGatewayInfo"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 14
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "perConversationAuth/"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 18
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "myStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 22
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "friendStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->d:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 26
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "creditCardToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 30
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "sqAuthToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 34
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const-string v1, "deviceToken1KeyAndIv"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->g:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
