.class public final Lcom/snapchat/android/util/GsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    new-instance v2, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;

    invoke-direct {v2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;-><init>()V

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    new-instance v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyAdapter;

    invoke-direct {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/GsonUtil;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/gson/Gson;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/util/GsonUtil;->a:Lcom/google/gson/Gson;

    return-object v0
.end method
