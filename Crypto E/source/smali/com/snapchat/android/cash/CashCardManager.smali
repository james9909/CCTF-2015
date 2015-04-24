.class public Lcom/snapchat/android/cash/CashCardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/cash/CashCardManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/cash/CashCardManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/cash/CashCardManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 48
    return-void
.end method
