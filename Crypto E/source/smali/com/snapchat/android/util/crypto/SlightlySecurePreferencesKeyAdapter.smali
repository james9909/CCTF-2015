.class public Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 22
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->values()[Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    aget-object v1, v1, v2

    .line 24
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 26
    new-instance v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    return-object v2
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 14
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 15
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b()Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 17
    return-void
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyAdapter;->a(Lcom/google/gson/stream/JsonReader;)Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyAdapter;->a(Lcom/google/gson/stream/JsonWriter;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)V

    return-void
.end method
