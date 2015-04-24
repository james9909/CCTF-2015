.class public Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/NotThreadSafe;
.end annotation


# instance fields
.field a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences$1;-><init>(Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;)V

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->b:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 55
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 57
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    .line 58
    if-nez v1, :cond_1

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V

    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 74
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v3

    .line 75
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    invoke-virtual {v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->b:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v1, p2, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 81
    return-void
.end method
