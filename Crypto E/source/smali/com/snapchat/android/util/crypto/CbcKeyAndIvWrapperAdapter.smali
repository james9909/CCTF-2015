.class public Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;
    .locals 6
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v4

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 46
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 20
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 21
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 22
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 23
    invoke-virtual {p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 24
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 25
    return-void
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;->a(Lcom/google/gson/stream/JsonReader;)Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p2, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapperAdapter;->a(Lcom/google/gson/stream/JsonWriter;Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;)V

    return-void
.end method
