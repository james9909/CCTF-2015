.class public Lcom/snapchat/android/cash/CashAuthManager;
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

.field protected b:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Lcom/snapchat/android/cash/CashAuthToken;


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/cash/CashAuthToken;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager;->c:Lcom/snapchat/android/cash/CashAuthToken;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/snapchat/android/cash/CashAuthManager;->b:Lcom/snapchat/android/util/GsonWrapper;

    const-class v2, Lcom/snapchat/android/cash/CashAuthToken;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/CashAuthToken;

    iput-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager;->c:Lcom/snapchat/android/cash/CashAuthToken;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager;->c:Lcom/snapchat/android/cash/CashAuthToken;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/cash/CashAuthToken;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/cash/CashAuthManager;->c:Lcom/snapchat/android/cash/CashAuthToken;

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    iget-object v2, p0, Lcom/snapchat/android/cash/CashAuthManager;->b:Lcom/snapchat/android/util/GsonWrapper;

    iget-object v3, p0, Lcom/snapchat/android/cash/CashAuthManager;->c:Lcom/snapchat/android/cash/CashAuthToken;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/cash/CashAuthManager;->a(Lcom/snapchat/android/cash/CashAuthToken;)V

    .line 51
    return-void
.end method

.method public onLogoutEvent(Lcom/snapchat/android/util/eventbus/LogoutEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/cash/CashAuthManager;->b()V

    .line 56
    return-void
.end method
