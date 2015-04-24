.class public Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 35
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
